
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intf_timing_params {int dummy; } ;
struct intf_prog_fetch {int enable; int fetch_start; int member_0; } ;
struct dpu_encoder_phys {int enc_spinlock; TYPE_2__* hw_intf; } ;
struct TYPE_3__ {int (* setup_prg_fetch ) (TYPE_2__*,struct intf_prog_fetch*) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;


 int DPU_DEBUG_VIDENC (struct dpu_encoder_phys*,char*,int,int) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int get_horizontal_total (struct intf_timing_params const*) ;
 int get_vertical_total (struct intf_timing_params const*) ;
 int programmable_fetch_get_num_lines (struct dpu_encoder_phys*,struct intf_timing_params const*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (TYPE_2__*,struct intf_prog_fetch*) ;

__attribute__((used)) static void programmable_fetch_config(struct dpu_encoder_phys *phys_enc,
          const struct intf_timing_params *timing)
{
 struct intf_prog_fetch f = { 0 };
 u32 vfp_fetch_lines = 0;
 u32 horiz_total = 0;
 u32 vert_total = 0;
 u32 vfp_fetch_start_vsync_counter = 0;
 unsigned long lock_flags;

 if (WARN_ON_ONCE(!phys_enc->hw_intf->ops.setup_prg_fetch))
  return;

 vfp_fetch_lines = programmable_fetch_get_num_lines(phys_enc, timing);
 if (vfp_fetch_lines) {
  vert_total = get_vertical_total(timing);
  horiz_total = get_horizontal_total(timing);
  vfp_fetch_start_vsync_counter =
      (vert_total - vfp_fetch_lines) * horiz_total + 1;
  f.enable = 1;
  f.fetch_start = vfp_fetch_start_vsync_counter;
 }

 DPU_DEBUG_VIDENC(phys_enc,
  "vfp_fetch_lines %u vfp_fetch_start_vsync_counter %u\n",
  vfp_fetch_lines, vfp_fetch_start_vsync_counter);

 spin_lock_irqsave(phys_enc->enc_spinlock, lock_flags);
 phys_enc->hw_intf->ops.setup_prg_fetch(phys_enc->hw_intf, &f);
 spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);
}
