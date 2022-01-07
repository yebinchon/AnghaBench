
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;


 int base507c_new_ (int *,int ,struct nouveau_drm*,int,int ,int,struct nv50_wndw**) ;
 int base907c ;
 int base917c_format ;

int
base917c_new(struct nouveau_drm *drm, int head, s32 oclass,
      struct nv50_wndw **pwndw)
{
 return base507c_new_(&base907c, base917c_format, drm, head, oclass,
        0x00000002 << (head * 4), pwndw);
}
