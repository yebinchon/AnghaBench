
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int num_types; int * funcs; } ;
struct TYPE_10__ {int num_types; int * funcs; } ;
struct TYPE_8__ {int * funcs; int num_types; } ;
struct TYPE_9__ {TYPE_2__ irq; } ;
struct TYPE_7__ {int * funcs; int num_types; } ;
struct TYPE_12__ {TYPE_5__ priv_inst_irq; TYPE_4__ priv_reg_irq; TYPE_3__ kiq; TYPE_1__ eop_irq; } ;
struct amdgpu_device {TYPE_6__ gfx; } ;


 int AMDGPU_CP_IRQ_LAST ;
 int AMDGPU_CP_KIQ_IRQ_LAST ;
 int gfx_v10_0_eop_irq_funcs ;
 int gfx_v10_0_kiq_irq_funcs ;
 int gfx_v10_0_priv_inst_irq_funcs ;
 int gfx_v10_0_priv_reg_irq_funcs ;

__attribute__((used)) static void gfx_v10_0_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->gfx.eop_irq.num_types = AMDGPU_CP_IRQ_LAST;
 adev->gfx.eop_irq.funcs = &gfx_v10_0_eop_irq_funcs;

 adev->gfx.kiq.irq.num_types = AMDGPU_CP_KIQ_IRQ_LAST;
 adev->gfx.kiq.irq.funcs = &gfx_v10_0_kiq_irq_funcs;

 adev->gfx.priv_reg_irq.num_types = 1;
 adev->gfx.priv_reg_irq.funcs = &gfx_v10_0_priv_reg_irq_funcs;

 adev->gfx.priv_inst_irq.num_types = 1;
 adev->gfx.priv_inst_irq.funcs = &gfx_v10_0_priv_inst_irq_funcs;
}
