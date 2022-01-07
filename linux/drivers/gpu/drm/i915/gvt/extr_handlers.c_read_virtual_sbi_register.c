
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int number; TYPE_2__* registers; } ;
struct intel_vgpu_display {TYPE_1__ sbi; } ;
struct intel_vgpu {struct intel_vgpu_display display; } ;
struct TYPE_4__ {unsigned int offset; int value; } ;



__attribute__((used)) static u32 read_virtual_sbi_register(struct intel_vgpu *vgpu,
  unsigned int sbi_offset)
{
 struct intel_vgpu_display *display = &vgpu->display;
 int num = display->sbi.number;
 int i;

 for (i = 0; i < num; ++i)
  if (display->sbi.registers[i].offset == sbi_offset)
   break;

 if (i == num)
  return 0;

 return display->sbi.registers[i].value;
}
