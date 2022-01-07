
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;


 int ovly507e_new_ (int *,int ,struct nouveau_drm*,int,int ,int,struct nv50_wndw**) ;
 int ovly907e ;
 int ovly907e_format ;

int
ovly907e_new(struct nouveau_drm *drm, int head, s32 oclass,
      struct nv50_wndw **pwndw)
{
 return ovly507e_new_(&ovly907e, ovly907e_format, drm, head, oclass,
        0x00000004 << (head * 4), pwndw);
}
