
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adf_hw_device_data {int dummy; } ;


 int ADF_DH895XCC_SRAM_BAR ;

__attribute__((used)) static uint32_t get_sram_bar_id(struct adf_hw_device_data *self)
{
 return ADF_DH895XCC_SRAM_BAR;
}
