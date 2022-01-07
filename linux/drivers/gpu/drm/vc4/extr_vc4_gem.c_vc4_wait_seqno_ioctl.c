
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_vc4_wait_seqno {int timeout_ns; int seqno; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int vc4_wait_for_seqno_ioctl_helper (struct drm_device*,int ,int *) ;

int
vc4_wait_seqno_ioctl(struct drm_device *dev, void *data,
       struct drm_file *file_priv)
{
 struct drm_vc4_wait_seqno *args = data;

 return vc4_wait_for_seqno_ioctl_helper(dev, args->seqno,
            &args->timeout_ns);
}
