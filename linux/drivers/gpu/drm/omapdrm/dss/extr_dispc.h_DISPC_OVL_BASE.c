
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_OVL_BASE(enum omap_plane_id plane)
{
 switch (plane) {
 case 132:
  return 0x0080;
 case 131:
  return 0x00BC;
 case 130:
  return 0x014C;
 case 129:
  return 0x0300;
 case 128:
  return 0x0500;
 default:
  BUG();
  return 0;
 }
}
