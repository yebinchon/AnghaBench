
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int lessee_id; struct drm_file* private_data; scalar_t__ lessor; } ;
typedef struct file uint32_t ;
struct idr {int dummy; } ;
struct drm_mode_create_lease {size_t object_count; int flags; int fd; int lessee_id; int object_ids; } ;
struct drm_master {int lessee_id; struct drm_file* private_data; scalar_t__ lessor; } ;
struct drm_file {int is_master; int authenticated; struct file* master; struct file* filp; } ;
struct drm_device {int dummy; } ;
typedef int __u32 ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_LEASE (char*,...) ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int PTR_ERR (struct file*) ;
 int array_size (size_t,int) ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct file* drm_lease_create (struct file*,struct idr*) ;
 int drm_master_put (struct file**) ;
 int fd_install (int,struct file*) ;
 struct file* file_clone_open (struct file*) ;
 int fill_object_idr (struct drm_device*,struct drm_file*,struct idr*,size_t,struct file*) ;
 int get_unused_fd_flags (int) ;
 int idr_destroy (struct idr*) ;
 int idr_init (struct idr*) ;
 int kfree (struct file*) ;
 struct file* memdup_user (int ,int ) ;
 int put_unused_fd (int) ;
 int u64_to_user_ptr (int ) ;

int drm_mode_create_lease_ioctl(struct drm_device *dev,
    void *data, struct drm_file *lessor_priv)
{
 struct drm_mode_create_lease *cl = data;
 size_t object_count;
 int ret = 0;
 struct idr leases;
 struct drm_master *lessor = lessor_priv->master;
 struct drm_master *lessee = ((void*)0);
 struct file *lessee_file = ((void*)0);
 struct file *lessor_file = lessor_priv->filp;
 struct drm_file *lessee_priv;
 int fd = -1;
 uint32_t *object_ids;


 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EOPNOTSUPP;


 if (lessor->lessor) {
  DRM_DEBUG_LEASE("recursive leasing not allowed\n");
  return -EINVAL;
 }


 if (cl->object_count == 0) {
  DRM_DEBUG_LEASE("no objects in lease\n");
  return -EINVAL;
 }

 if (cl->flags && (cl->flags & ~(O_CLOEXEC | O_NONBLOCK))) {
  DRM_DEBUG_LEASE("invalid flags\n");
  return -EINVAL;
 }

 object_count = cl->object_count;

 object_ids = memdup_user(u64_to_user_ptr(cl->object_ids),
   array_size(object_count, sizeof(__u32)));
 if (IS_ERR(object_ids))
  return PTR_ERR(object_ids);

 idr_init(&leases);


 ret = fill_object_idr(dev, lessor_priv, &leases,
         object_count, object_ids);
 kfree(object_ids);
 if (ret) {
  DRM_DEBUG_LEASE("lease object lookup failed: %i\n", ret);
  idr_destroy(&leases);
  return ret;
 }


 fd = get_unused_fd_flags(cl->flags & (O_CLOEXEC | O_NONBLOCK));
 if (fd < 0) {
  idr_destroy(&leases);
  return fd;
 }

 DRM_DEBUG_LEASE("Creating lease\n");
 lessee = drm_lease_create(lessor, &leases);

 if (IS_ERR(lessee)) {
  ret = PTR_ERR(lessee);
  goto out_leases;
 }


 DRM_DEBUG_LEASE("Allocating lease file\n");
 lessee_file = file_clone_open(lessor_file);
 if (IS_ERR(lessee_file)) {
  ret = PTR_ERR(lessee_file);
  goto out_lessee;
 }

 lessee_priv = lessee_file->private_data;

 drm_master_put(&lessee_priv->master);
 lessee_priv->master = lessee;
 lessee_priv->is_master = 1;
 lessee_priv->authenticated = 1;


 DRM_DEBUG_LEASE("Returning fd %d id %d\n", fd, lessee->lessee_id);
 cl->fd = fd;
 cl->lessee_id = lessee->lessee_id;


 fd_install(fd, lessee_file);

 DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl succeeded\n");
 return 0;

out_lessee:
 drm_master_put(&lessee);

out_leases:
 put_unused_fd(fd);
 idr_destroy(&leases);

 DRM_DEBUG_LEASE("drm_mode_create_lease_ioctl failed: %d\n", ret);
 return ret;
}
