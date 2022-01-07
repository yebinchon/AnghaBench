
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct drm_syncobj {int dummy; } ;


 scalar_t__ IS_ERR (struct file*) ;
 int O_CLOEXEC ;
 int PTR_ERR (struct file*) ;
 struct file* anon_inode_getfile (char*,int *,struct drm_syncobj*,int ) ;
 int drm_syncobj_file_fops ;
 int drm_syncobj_get (struct drm_syncobj*) ;
 int fd_install (int,struct file*) ;
 int get_unused_fd_flags (int ) ;
 int put_unused_fd (int) ;

int drm_syncobj_get_fd(struct drm_syncobj *syncobj, int *p_fd)
{
 struct file *file;
 int fd;

 fd = get_unused_fd_flags(O_CLOEXEC);
 if (fd < 0)
  return fd;

 file = anon_inode_getfile("syncobj_file",
      &drm_syncobj_file_fops,
      syncobj, 0);
 if (IS_ERR(file)) {
  put_unused_fd(fd);
  return PTR_ERR(file);
 }

 drm_syncobj_get(syncobj);
 fd_install(fd, file);

 *p_fd = fd;
 return 0;
}
