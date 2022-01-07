
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_ACCU2_0_OFFSET(enum omap_plane_id plane)
{
 switch (plane) {
 case 132:
  BUG();
  return 0;
 case 131:
  return 0x0584;
 case 130:
  return 0x0560;
 case 129:
  return 0x0428;
 case 128:
  return 0x0294;
 default:
  BUG();
  return 0;
 }
}
