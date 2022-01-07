; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_intf_audio_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c_dpu_hw_intf_audio_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mdp = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@HDMI_DP_CORE_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mdp*)* @dpu_hw_intf_audio_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_intf_audio_select(%struct.dpu_hw_mdp* %0) #0 {
  %2 = alloca %struct.dpu_hw_mdp*, align 8
  %3 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  store %struct.dpu_hw_mdp* %0, %struct.dpu_hw_mdp** %2, align 8
  %4 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %2, align 8
  %5 = icmp ne %struct.dpu_hw_mdp* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %13

7:                                                ; preds = %1
  %8 = load %struct.dpu_hw_mdp*, %struct.dpu_hw_mdp** %2, align 8
  %9 = getelementptr inbounds %struct.dpu_hw_mdp, %struct.dpu_hw_mdp* %8, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %9, %struct.dpu_hw_blk_reg_map** %3, align 8
  %10 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %3, align 8
  %11 = load i32, i32* @HDMI_DP_CORE_SELECT, align 4
  %12 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %10, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %7, %6
  ret void
}

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
