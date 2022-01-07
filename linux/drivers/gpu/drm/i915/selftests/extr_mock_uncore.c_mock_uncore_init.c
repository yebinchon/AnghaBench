
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;


 int ASSIGN_RAW_READ_MMIO_VFUNCS (struct intel_uncore*,int ) ;
 int ASSIGN_RAW_WRITE_MMIO_VFUNCS (struct intel_uncore*,int ) ;
 int nop ;

void mock_uncore_init(struct intel_uncore *uncore)
{
 ASSIGN_RAW_WRITE_MMIO_VFUNCS(uncore, nop);
 ASSIGN_RAW_READ_MMIO_VFUNCS(uncore, nop);
}
