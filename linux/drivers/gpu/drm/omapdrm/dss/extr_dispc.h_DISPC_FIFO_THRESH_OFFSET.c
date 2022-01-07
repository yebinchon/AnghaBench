
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG () ;






__attribute__((used)) static inline u16 DISPC_FIFO_THRESH_OFFSET(enum omap_plane_id plane)
{
 switch (plane) {
 case 132:
  return 0x0024;
 case 131:
 case 130:
  return 0x0014;
 case 129:
 case 128:
  return 0x008C;
 default:
  BUG();
  return 0;
 }
}
