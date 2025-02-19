
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int quad_part; } ;
struct TYPE_6__ {int quad_part; } ;
struct TYPE_5__ {int quad_part; } ;
struct vm_system_aperture_param {TYPE_3__ sys_high; TYPE_2__ sys_low; TYPE_1__ sys_default; } ;
struct dcn10_hubp {int dummy; } ;
struct dce_hwseq {int dummy; } ;
typedef int int64_t ;
struct TYPE_8__ {int quad_part; scalar_t__ low_part; scalar_t__ high_part; } ;
typedef TYPE_4__ PHYSICAL_ADDRESS_LOC ;


 int LOGICAL_ADDR ;
 int MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB ;
 int MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB ;
 int MC_VM_SYSTEM_APERTURE_HIGH_ADDR ;
 int MC_VM_SYSTEM_APERTURE_LOW_ADDR ;
 int PHYSICAL_PAGE_NUMBER_LSB ;
 int PHYSICAL_PAGE_NUMBER_MSB ;
 int REG_GET (int ,int ,scalar_t__*) ;

__attribute__((used)) static void mmhub_read_vm_system_aperture_settings(struct dcn10_hubp *hubp1,
  struct vm_system_aperture_param *apt,
  struct dce_hwseq *hws)
{
 PHYSICAL_ADDRESS_LOC physical_page_number;
 uint32_t logical_addr_low;
 uint32_t logical_addr_high;

 REG_GET(MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_MSB,
   PHYSICAL_PAGE_NUMBER_MSB, &physical_page_number.high_part);
 REG_GET(MC_VM_SYSTEM_APERTURE_DEFAULT_ADDR_LSB,
   PHYSICAL_PAGE_NUMBER_LSB, &physical_page_number.low_part);

 REG_GET(MC_VM_SYSTEM_APERTURE_LOW_ADDR,
   LOGICAL_ADDR, &logical_addr_low);

 REG_GET(MC_VM_SYSTEM_APERTURE_HIGH_ADDR,
   LOGICAL_ADDR, &logical_addr_high);

 apt->sys_default.quad_part = physical_page_number.quad_part << 12;
 apt->sys_low.quad_part = (int64_t)logical_addr_low << 18;
 apt->sys_high.quad_part = (int64_t)logical_addr_high << 18;
}
