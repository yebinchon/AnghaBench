
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct drm_buf {int idx; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int in_use; } ;
typedef TYPE_1__ drm_i810_buf_priv_t ;


 int DRM_ERROR (char*,int ) ;
 int EINVAL ;
 int I810_BUF_CLIENT ;
 int I810_BUF_FREE ;
 int cmpxchg (int ,int,int ) ;

__attribute__((used)) static int i810_freelist_put(struct drm_device *dev, struct drm_buf *buf)
{
 drm_i810_buf_priv_t *buf_priv = buf->dev_private;
 int used;


 used = cmpxchg(buf_priv->in_use, I810_BUF_CLIENT, I810_BUF_FREE);
 if (used != I810_BUF_CLIENT) {
  DRM_ERROR("Freeing buffer thats not in use : %d\n", buf->idx);
  return -EINVAL;
 }

 return 0;
}
