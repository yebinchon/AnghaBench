
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct dcb_table {int dummy; } ;
struct TYPE_2__ {struct dcb_table dcb; } ;
struct nouveau_drm {TYPE_1__ vbios; } ;
struct drm_device {int dummy; } ;


 int DCB_OUTPUT_TMDS ;
 int fabricate_dcb_output (struct dcb_table*,int ,int,int,int) ;
 struct nouveau_drm* nouveau_drm (struct drm_device*) ;
 scalar_t__ nv_match_device (struct drm_device*,int,int,int) ;

__attribute__((used)) static bool
apply_dcb_encoder_quirks(struct drm_device *dev, int idx, u32 *conn, u32 *conf)
{
 struct nouveau_drm *drm = nouveau_drm(dev);
 struct dcb_table *dcb = &drm->vbios.dcb;
 if (nv_match_device(dev, 0x040d, 0x1028, 0x019b)) {
  if (*conn == 0x02026312 && *conf == 0x00000020)
   return 0;
 }






 if (nv_match_device(dev, 0x0201, 0x1462, 0x8851)) {
  if (*conn == 0xf2005014 && *conf == 0xffffffff) {
   fabricate_dcb_output(dcb, DCB_OUTPUT_TMDS, 1, 1, 1);
   return 0;
  }
 }





 if (nv_match_device(dev, 0x0ca3, 0x1682, 0x3003)) {
  if (idx == 0) {
   *conn = 0x02001300;
   *conf = 0x00000028;
  } else
  if (idx == 1) {
   *conn = 0x01010312;
   *conf = 0x00020030;
  } else
  if (idx == 2) {
   *conn = 0x01010310;
   *conf = 0x00000028;
  } else
  if (idx == 3) {
   *conn = 0x02022362;
   *conf = 0x00020010;
  } else {
   *conn = 0x0000000e;
   *conf = 0x00000000;
  }
 }
 if (nv_match_device(dev, 0x0615, 0x1682, 0x2605)) {
  if (idx == 0) {
   *conn = 0x02002300;
   *conf = 0x00000028;
  } else
  if (idx == 1) {
   *conn = 0x01010312;
   *conf = 0x00020030;
  } else
  if (idx == 2) {
   *conn = 0x04020310;
   *conf = 0x00000028;
  } else
  if (idx == 3) {
   *conn = 0x02021322;
   *conf = 0x00020010;
  } else {
   *conn = 0x0000000e;
   *conf = 0x00000000;
  }
 }


 if (nv_match_device(dev, 0x0421, 0x3842, 0xc793)) {
  if (idx == 0 && *conn == 0x02000300)
   *conn = 0x02011300;
  else
  if (idx == 1 && *conn == 0x04011310)
   *conn = 0x04000310;
  else
  if (idx == 2 && *conn == 0x02011312)
   *conn = 0x02000312;
 }

 return 1;
}
