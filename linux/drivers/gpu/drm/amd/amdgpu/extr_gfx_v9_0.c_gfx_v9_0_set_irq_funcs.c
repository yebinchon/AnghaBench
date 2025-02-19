
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int num_types; int * funcs; } ;
struct TYPE_7__ {int num_types; int * funcs; } ;
struct TYPE_6__ {int num_types; int * funcs; } ;
struct TYPE_9__ {int * funcs; int num_types; } ;
struct TYPE_10__ {TYPE_3__ cp_ecc_error_irq; TYPE_2__ priv_inst_irq; TYPE_1__ priv_reg_irq; TYPE_4__ eop_irq; } ;
struct amdgpu_device {TYPE_5__ gfx; } ;


 int AMDGPU_CP_IRQ_LAST ;
 int gfx_v9_0_cp_ecc_error_irq_funcs ;
 int gfx_v9_0_eop_irq_funcs ;
 int gfx_v9_0_priv_inst_irq_funcs ;
 int gfx_v9_0_priv_reg_irq_funcs ;

__attribute__((used)) static void gfx_v9_0_set_irq_funcs(struct amdgpu_device *adev)
{
 adev->gfx.eop_irq.num_types = AMDGPU_CP_IRQ_LAST;
 adev->gfx.eop_irq.funcs = &gfx_v9_0_eop_irq_funcs;

 adev->gfx.priv_reg_irq.num_types = 1;
 adev->gfx.priv_reg_irq.funcs = &gfx_v9_0_priv_reg_irq_funcs;

 adev->gfx.priv_inst_irq.num_types = 1;
 adev->gfx.priv_inst_irq.funcs = &gfx_v9_0_priv_inst_irq_funcs;

 adev->gfx.cp_ecc_error_irq.num_types = 2;
 adev->gfx.cp_ecc_error_irq.funcs = &gfx_v9_0_cp_ecc_error_irq_funcs;
}
