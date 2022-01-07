
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct etnaviv_gpu {int dummy; } ;
struct etnaviv_drm_private {struct etnaviv_gpu** gpu; } ;
struct drm_device {struct etnaviv_drm_private* dev_private; } ;


 unsigned int ETNA_MAX_PIPES ;
 int etnaviv_gpu_init (struct etnaviv_gpu*) ;

__attribute__((used)) static void load_gpu(struct drm_device *dev)
{
 struct etnaviv_drm_private *priv = dev->dev_private;
 unsigned int i;

 for (i = 0; i < ETNA_MAX_PIPES; i++) {
  struct etnaviv_gpu *g = priv->gpu[i];

  if (g) {
   int ret;

   ret = etnaviv_gpu_init(g);
   if (ret)
    priv->gpu[i] = ((void*)0);
  }
 }
}
