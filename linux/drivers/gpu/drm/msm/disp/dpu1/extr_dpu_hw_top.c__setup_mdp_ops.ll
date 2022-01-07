; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c__setup_mdp_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_top.c__setup_mdp_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mdp_ops = type { i32, i32, i32, i32, i32, i32, i32 }

@dpu_hw_setup_split_pipe = common dso_local global i32 0, align 4
@dpu_hw_setup_clk_force_ctrl = common dso_local global i32 0, align 4
@dpu_hw_get_danger_status = common dso_local global i32 0, align 4
@dpu_hw_setup_vsync_source = common dso_local global i32 0, align 4
@dpu_hw_get_safe_status = common dso_local global i32 0, align 4
@dpu_hw_reset_ubwc = common dso_local global i32 0, align 4
@dpu_hw_intf_audio_select = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mdp_ops*, i64)* @_setup_mdp_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_setup_mdp_ops(%struct.dpu_hw_mdp_ops* %0, i64 %1) #0 {
  %3 = alloca %struct.dpu_hw_mdp_ops*, align 8
  %4 = alloca i64, align 8
  store %struct.dpu_hw_mdp_ops* %0, %struct.dpu_hw_mdp_ops** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @dpu_hw_setup_split_pipe, align 4
  %6 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %6, i32 0, i32 6
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @dpu_hw_setup_clk_force_ctrl, align 4
  %9 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @dpu_hw_get_danger_status, align 4
  %12 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @dpu_hw_setup_vsync_source, align 4
  %15 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @dpu_hw_get_safe_status, align 4
  %18 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @dpu_hw_reset_ubwc, align 4
  %21 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @dpu_hw_intf_audio_select, align 4
  %24 = load %struct.dpu_hw_mdp_ops*, %struct.dpu_hw_mdp_ops** %3, align 8
  %25 = getelementptr inbounds %struct.dpu_hw_mdp_ops, %struct.dpu_hw_mdp_ops* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
