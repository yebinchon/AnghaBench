
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;


 int curs507a_new_ (int *,struct nouveau_drm*,int,int ,int,struct nv50_wndw**) ;
 int cursc37a ;

int
cursc37a_new(struct nouveau_drm *drm, int head, s32 oclass,
      struct nv50_wndw **pwndw)
{
 return curs507a_new_(&cursc37a, drm, head, oclass,
        0x00000001 << head, pwndw);
}
