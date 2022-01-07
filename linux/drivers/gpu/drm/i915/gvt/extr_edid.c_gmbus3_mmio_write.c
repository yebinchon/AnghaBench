
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_vgpu {int dummy; } ;


 int WARN_ON (int) ;

__attribute__((used)) static int gmbus3_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
 void *p_data, unsigned int bytes)
{
 WARN_ON(1);
 return 0;
}
