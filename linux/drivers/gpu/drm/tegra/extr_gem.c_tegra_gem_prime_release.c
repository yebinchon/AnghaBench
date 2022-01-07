
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dma_buf {int dummy; } ;


 int drm_gem_dmabuf_release (struct dma_buf*) ;

__attribute__((used)) static void tegra_gem_prime_release(struct dma_buf *buf)
{
 drm_gem_dmabuf_release(buf);
}
