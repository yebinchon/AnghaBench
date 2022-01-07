
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_FIR_COEF_H2_OFFSET(enum omap_plane_id plane, u16 i)
{
 switch (plane) {
 case 132:
  BUG();
  return 0;
 case 131:
  return 0x058C + i * 0x8;
 case 130:
  return 0x0568 + i * 0x8;
 case 129:
  return 0x0430 + i * 0x8;
 case 128:
  return 0x02A0 + i * 0x8;
 default:
  BUG();
  return 0;
 }
}
