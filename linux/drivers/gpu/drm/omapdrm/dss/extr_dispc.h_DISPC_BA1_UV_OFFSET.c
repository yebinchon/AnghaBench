
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_BA1_UV_OFFSET(enum omap_plane_id plane)
{
 switch (plane) {
 case 132:
  BUG();
  return 0;
 case 131:
  return 0x0548;
 case 130:
  return 0x04C0;
 case 129:
  return 0x0314;
 case 128:
  return 0x011C;
 default:
  BUG();
  return 0;
 }
}
