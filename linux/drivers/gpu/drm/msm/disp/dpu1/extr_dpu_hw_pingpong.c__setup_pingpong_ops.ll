; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c__setup_pingpong_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_pingpong.c__setup_pingpong_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_pingpong_ops = type { i32, i32, i32, i32, i32, i32 }
%struct.dpu_pingpong_cfg = type { i32 }

@dpu_hw_pp_setup_te_config = common dso_local global i32 0, align 4
@dpu_hw_pp_enable_te = common dso_local global i32 0, align 4
@dpu_hw_pp_connect_external_te = common dso_local global i32 0, align 4
@dpu_hw_pp_get_vsync_info = common dso_local global i32 0, align 4
@dpu_hw_pp_poll_timeout_wr_ptr = common dso_local global i32 0, align 4
@dpu_hw_pp_get_line_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_pingpong_ops*, %struct.dpu_pingpong_cfg*)* @_setup_pingpong_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_setup_pingpong_ops(%struct.dpu_hw_pingpong_ops* %0, %struct.dpu_pingpong_cfg* %1) #0 {
  %3 = alloca %struct.dpu_hw_pingpong_ops*, align 8
  %4 = alloca %struct.dpu_pingpong_cfg*, align 8
  store %struct.dpu_hw_pingpong_ops* %0, %struct.dpu_hw_pingpong_ops** %3, align 8
  store %struct.dpu_pingpong_cfg* %1, %struct.dpu_pingpong_cfg** %4, align 8
  %5 = load i32, i32* @dpu_hw_pp_setup_te_config, align 4
  %6 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %7 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %6, i32 0, i32 5
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @dpu_hw_pp_enable_te, align 4
  %9 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %10 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %9, i32 0, i32 4
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @dpu_hw_pp_connect_external_te, align 4
  %12 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %13 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @dpu_hw_pp_get_vsync_info, align 4
  %15 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %16 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @dpu_hw_pp_poll_timeout_wr_ptr, align 4
  %18 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %19 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @dpu_hw_pp_get_line_count, align 4
  %21 = load %struct.dpu_hw_pingpong_ops*, %struct.dpu_hw_pingpong_ops** %3, align 8
  %22 = getelementptr inbounds %struct.dpu_hw_pingpong_ops, %struct.dpu_hw_pingpong_ops* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
