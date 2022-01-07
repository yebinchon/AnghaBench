
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int ctx; } ;
struct dce_mem_input {TYPE_1__ base; } ;
struct TYPE_5__ {int high_part; int low_part; } ;
typedef TYPE_2__ PHYSICAL_ADDRESS_LOC ;


 int GRPH_PRIMARY_SURFACE_ADDRESS_C ;
 int GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C ;
 int UNP_GRPH_PRIMARY_SURFACE_ADDRESS_C ;
 int UNP_GRPH_PRIMARY_SURFACE_ADDRESS_C__GRPH_PRIMARY_SURFACE_ADDRESS_C__SHIFT ;
 int UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C ;
 int UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C__GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C_MASK ;
 int dm_write_reg (int ,int ,int) ;
 int mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_C ;
 int mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C ;
 int set_reg_field_value (int,int,int ,int ) ;

__attribute__((used)) static void program_pri_addr_c(
 struct dce_mem_input *mem_input110,
 PHYSICAL_ADDRESS_LOC address)
{
 uint32_t value = 0;
 uint32_t temp = 0;

 temp = address.high_part &
UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C__GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C_MASK;

 set_reg_field_value(value, temp,
  UNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C,
  GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C);

 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_HIGH_C,
  value);

 temp = 0;
 value = 0;
 temp = address.low_part >>
 UNP_GRPH_PRIMARY_SURFACE_ADDRESS_C__GRPH_PRIMARY_SURFACE_ADDRESS_C__SHIFT;

 set_reg_field_value(value, temp,
  UNP_GRPH_PRIMARY_SURFACE_ADDRESS_C,
  GRPH_PRIMARY_SURFACE_ADDRESS_C);

 dm_write_reg(
  mem_input110->base.ctx,
  mmUNP_GRPH_PRIMARY_SURFACE_ADDRESS_C,
  value);
}
