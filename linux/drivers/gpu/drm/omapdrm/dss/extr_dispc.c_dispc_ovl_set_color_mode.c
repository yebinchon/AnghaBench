
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;
 int DISPC_OVL_ATTRIBUTES (int) ;
 int OMAP_DSS_GFX ;
 int REG_FLD_MOD (struct dispc_device*,int ,int,int,int) ;

__attribute__((used)) static void dispc_ovl_set_color_mode(struct dispc_device *dispc,
         enum omap_plane_id plane, u32 fourcc)
{
 u32 m = 0;
 if (plane != OMAP_DSS_GFX) {
  switch (fourcc) {
  case 139:
   m = 0x0; break;
  case 130:
   m = 0x1; break;
  case 136:
   m = 0x2; break;
  case 134:
   m = 0x4; break;
  case 141:
   m = 0x5; break;
  case 138:
   m = 0x6; break;
  case 142:
   m = 0x7; break;
  case 129:
   m = 0x8; break;
  case 137:
   m = 0x9; break;
  case 128:
   m = 0xa; break;
  case 132:
   m = 0xb; break;
  case 140:
   m = 0xc; break;
  case 135:
   m = 0xd; break;
  case 133:
   m = 0xe; break;
  case 131:
   m = 0xf; break;
  default:
   BUG(); return;
  }
 } else {
  switch (fourcc) {
  case 134:
   m = 0x4; break;
  case 141:
   m = 0x5; break;
  case 138:
   m = 0x6; break;
  case 142:
   m = 0x7; break;
  case 129:
   m = 0x8; break;
  case 137:
   m = 0x9; break;
  case 130:
   m = 0xa; break;
  case 136:
   m = 0xb; break;
  case 140:
   m = 0xc; break;
  case 135:
   m = 0xd; break;
  case 133:
   m = 0xe; break;
  case 131:
   m = 0xf; break;
  default:
   BUG(); return;
  }
 }

 REG_FLD_MOD(dispc, DISPC_OVL_ATTRIBUTES(plane), m, 4, 1);
}
