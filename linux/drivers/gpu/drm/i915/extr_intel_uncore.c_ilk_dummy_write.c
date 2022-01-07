
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore {int dummy; } ;


 int MI_MODE ;
 int __raw_uncore_write32 (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void
ilk_dummy_write(struct intel_uncore *uncore)
{



 __raw_uncore_write32(uncore, MI_MODE, 0);
}
