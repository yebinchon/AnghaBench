
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vc4_rcl_setup {int dummy; } ;


 int VC4_PACKET_TILE_COORDINATES ;
 int rcl_u8 (struct vc4_rcl_setup*,int ) ;

__attribute__((used)) static void vc4_tile_coordinates(struct vc4_rcl_setup *setup,
     uint32_t x, uint32_t y)
{
 rcl_u8(setup, VC4_PACKET_TILE_COORDINATES);
 rcl_u8(setup, x);
 rcl_u8(setup, y);
}
