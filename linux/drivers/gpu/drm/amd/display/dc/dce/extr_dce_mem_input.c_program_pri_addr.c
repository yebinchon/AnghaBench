
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dce_mem_input {int dummy; } ;
struct TYPE_3__ {int high_part; int low_part; } ;
typedef TYPE_1__ PHYSICAL_ADDRESS_LOC ;


 int GRPH_PRIMARY_SURFACE_ADDRESS ;
 int GRPH_PRIMARY_SURFACE_ADDRESS_HIGH ;
 int REG_SET (int ,int ,int ,int) ;

__attribute__((used)) static void program_pri_addr(
 struct dce_mem_input *dce_mi,
 PHYSICAL_ADDRESS_LOC address)
{

 REG_SET(GRPH_PRIMARY_SURFACE_ADDRESS_HIGH, 0,
  GRPH_PRIMARY_SURFACE_ADDRESS_HIGH,
  address.high_part);

 REG_SET(GRPH_PRIMARY_SURFACE_ADDRESS, 0,
  GRPH_PRIMARY_SURFACE_ADDRESS,
  address.low_part >> 8);
}
