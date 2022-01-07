
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int x86_model; int x86; } ;


 TYPE_1__ boot_cpu_data ;
 int edac_dbg (int,char*,int) ;
 int num_umcs ;

__attribute__((used)) static void compute_num_umcs(void)
{
 u8 model = boot_cpu_data.x86_model;

 if (boot_cpu_data.x86 < 0x17)
  return;

 if (model >= 0x30 && model <= 0x3f)
  num_umcs = 8;
 else
  num_umcs = 2;

 edac_dbg(1, "Number of UMCs: %x", num_umcs);
}
