
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int cik_ih_disable_interrupts (struct amdgpu_device*) ;
 int mdelay (int) ;

__attribute__((used)) static void cik_ih_irq_disable(struct amdgpu_device *adev)
{
 cik_ih_disable_interrupts(adev);

 mdelay(1);
}
