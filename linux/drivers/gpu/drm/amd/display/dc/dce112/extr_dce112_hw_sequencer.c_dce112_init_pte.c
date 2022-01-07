
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_context {int dummy; } ;


 int DVMM_PTE_REQ ;
 int HFLIP_PTEREQ_PER_CHUNK_INT ;
 int HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER ;
 int MAX_PTEREQ_TO_ISSUE ;
 int dm_read_reg (struct dc_context*,int) ;
 int dm_write_reg (struct dc_context*,int,int) ;
 int get_reg_field_value (int,int ,int ) ;
 int mmDVMM_PTE_REQ ;
 int set_reg_field_value (int,int,int ,int ) ;

__attribute__((used)) static void dce112_init_pte(struct dc_context *ctx)
{
 uint32_t addr;
 uint32_t value = 0;
 uint32_t chunk_int = 0;
 uint32_t chunk_mul = 0;

 addr = mmDVMM_PTE_REQ;
 value = dm_read_reg(ctx, addr);

 chunk_int = get_reg_field_value(
  value,
  DVMM_PTE_REQ,
  HFLIP_PTEREQ_PER_CHUNK_INT);

 chunk_mul = get_reg_field_value(
  value,
  DVMM_PTE_REQ,
  HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER);

 if (chunk_int != 0x4 || chunk_mul != 0x4) {

  set_reg_field_value(
   value,
   255,
   DVMM_PTE_REQ,
   MAX_PTEREQ_TO_ISSUE);

  set_reg_field_value(
   value,
   4,
   DVMM_PTE_REQ,
   HFLIP_PTEREQ_PER_CHUNK_INT);

  set_reg_field_value(
   value,
   4,
   DVMM_PTE_REQ,
   HFLIP_PTEREQ_PER_CHUNK_MULTIPLIER);

  dm_write_reg(ctx, addr, value);
 }
}
