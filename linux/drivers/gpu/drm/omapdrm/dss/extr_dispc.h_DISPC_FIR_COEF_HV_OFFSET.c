
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_FIR_COEF_HV_OFFSET(enum omap_plane_id plane, u16 i)
{
 switch (plane) {
 case 132:
  BUG();
  return 0;
 case 131:
 case 130:
  return 0x0038 + i * 0x8;
 case 129:
 case 128:
  return 0x0014 + i * 0x8;
 default:
  BUG();
  return 0;
 }
}
