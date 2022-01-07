
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc4_rcl_setup {int dummy; } ;


 int VC4_LOADSTORE_TILE_BUFFER_BUFFER ;
 int VC4_LOADSTORE_TILE_BUFFER_NONE ;
 int VC4_PACKET_STORE_TILE_BUFFER_GENERAL ;
 int VC4_SET_FIELD (int ,int ) ;
 int VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR ;
 int VC4_STORE_TILE_BUFFER_DISABLE_VG_MASK_CLEAR ;
 int VC4_STORE_TILE_BUFFER_DISABLE_ZS_CLEAR ;
 int rcl_u16 (struct vc4_rcl_setup*,int) ;
 int rcl_u32 (struct vc4_rcl_setup*,int ) ;
 int rcl_u8 (struct vc4_rcl_setup*,int ) ;

__attribute__((used)) static void vc4_store_before_load(struct vc4_rcl_setup *setup)
{
 rcl_u8(setup, VC4_PACKET_STORE_TILE_BUFFER_GENERAL);
 rcl_u16(setup,
  VC4_SET_FIELD(VC4_LOADSTORE_TILE_BUFFER_NONE,
         VC4_LOADSTORE_TILE_BUFFER_BUFFER) |
  VC4_STORE_TILE_BUFFER_DISABLE_COLOR_CLEAR |
  VC4_STORE_TILE_BUFFER_DISABLE_ZS_CLEAR |
  VC4_STORE_TILE_BUFFER_DISABLE_VG_MASK_CLEAR);
 rcl_u32(setup, 0);
}
