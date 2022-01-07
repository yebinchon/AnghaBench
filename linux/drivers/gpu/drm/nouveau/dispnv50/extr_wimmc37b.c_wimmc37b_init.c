
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;


 int wimmc37b ;
 int wimmc37b_init_ (int *,struct nouveau_drm*,int ,struct nv50_wndw*) ;

int
wimmc37b_init(struct nouveau_drm *drm, s32 oclass, struct nv50_wndw *wndw)
{
 return wimmc37b_init_(&wimmc37b, drm, oclass, wndw);
}
