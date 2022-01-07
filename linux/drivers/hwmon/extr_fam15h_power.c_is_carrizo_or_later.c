
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x86; int x86_model; } ;


 TYPE_1__ boot_cpu_data ;

__attribute__((used)) static bool is_carrizo_or_later(void)
{
 return boot_cpu_data.x86 == 0x15 && boot_cpu_data.x86_model >= 0x60;
}
