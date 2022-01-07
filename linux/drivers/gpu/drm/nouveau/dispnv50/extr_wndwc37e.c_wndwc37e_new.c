
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw {int dummy; } ;
struct nouveau_drm {int dummy; } ;
typedef int s32 ;
typedef enum drm_plane_type { ____Placeholder_drm_plane_type } drm_plane_type ;


 int BIT (int) ;
 int wndwc37e ;
 int wndwc37e_new_ (int *,struct nouveau_drm*,int,int,int ,int ,struct nv50_wndw**) ;

int
wndwc37e_new(struct nouveau_drm *drm, enum drm_plane_type type, int index,
      s32 oclass, struct nv50_wndw **pwndw)
{
 return wndwc37e_new_(&wndwc37e, drm, type, index, oclass,
        BIT(index >> 1), pwndw);
}
