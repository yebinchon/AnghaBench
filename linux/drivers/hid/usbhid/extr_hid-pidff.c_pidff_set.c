
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pidff_usage {int * value; int field; } ;


 int pidff_rescale (int ,int,int ) ;
 int pr_debug (char*,int ,int ) ;

__attribute__((used)) static void pidff_set(struct pidff_usage *usage, u16 value)
{
 usage->value[0] = pidff_rescale(value, 0xffff, usage->field);
 pr_debug("calculated from %d to %d\n", value, usage->value[0]);
}
