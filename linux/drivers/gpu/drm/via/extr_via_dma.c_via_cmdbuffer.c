
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int size; int buf; } ;
typedef TYPE_1__ drm_via_cmdbuffer_t ;


 int DRM_DEBUG (char*,int ,int ) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int via_dispatch_cmdbuffer (struct drm_device*,TYPE_1__*) ;

__attribute__((used)) static int via_cmdbuffer(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_cmdbuffer_t *cmdbuf = data;
 int ret;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 DRM_DEBUG("buf %p size %lu\n", cmdbuf->buf, cmdbuf->size);

 ret = via_dispatch_cmdbuffer(dev, cmdbuf);
 return ret;
}
