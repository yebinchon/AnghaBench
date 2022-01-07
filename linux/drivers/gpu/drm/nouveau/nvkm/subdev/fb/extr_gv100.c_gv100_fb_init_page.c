
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvkm_fb {int page; } ;


 int EINVAL ;

__attribute__((used)) static int
gv100_fb_init_page(struct nvkm_fb *fb)
{
 return (fb->page == 16) ? 0 : -EINVAL;
}
