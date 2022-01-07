
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int number; TYPE_1__* registers; } ;
struct intel_vgpu_display {TYPE_2__ sbi; } ;
struct intel_vgpu {struct intel_vgpu_display display; } ;
struct TYPE_3__ {unsigned int offset; int value; } ;


 int SBI_REG_MAX ;
 int gvt_vgpu_err (char*) ;

__attribute__((used)) static void write_virtual_sbi_register(struct intel_vgpu *vgpu,
  unsigned int offset, u32 value)
{
 struct intel_vgpu_display *display = &vgpu->display;
 int num = display->sbi.number;
 int i;

 for (i = 0; i < num; ++i) {
  if (display->sbi.registers[i].offset == offset)
   break;
 }

 if (i == num) {
  if (num == SBI_REG_MAX) {
   gvt_vgpu_err("SBI caching meets maximum limits\n");
   return;
  }
  display->sbi.number++;
 }

 display->sbi.registers[i].offset = offset;
 display->sbi.registers[i].value = value;
}
