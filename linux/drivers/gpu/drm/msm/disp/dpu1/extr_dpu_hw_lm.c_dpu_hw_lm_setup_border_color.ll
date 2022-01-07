; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_border_color.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_border_color.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }
%struct.dpu_mdss_color = type { i32, i32, i32, i32 }

@LM_BORDER_COLOR_0 = common dso_local global i32 0, align 4
@LM_BORDER_COLOR_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mixer*, %struct.dpu_mdss_color*, i64)* @dpu_hw_lm_setup_border_color to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_lm_setup_border_color(%struct.dpu_hw_mixer* %0, %struct.dpu_mdss_color* %1, i64 %2) #0 {
  %4 = alloca %struct.dpu_hw_mixer*, align 8
  %5 = alloca %struct.dpu_mdss_color*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  store %struct.dpu_hw_mixer* %0, %struct.dpu_hw_mixer** %4, align 8
  store %struct.dpu_mdss_color* %1, %struct.dpu_mdss_color** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %4, align 8
  %9 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %8, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %9, %struct.dpu_hw_blk_reg_map** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %39

12:                                               ; preds = %3
  %13 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %14 = load i32, i32* @LM_BORDER_COLOR_0, align 4
  %15 = load %struct.dpu_mdss_color*, %struct.dpu_mdss_color** %5, align 8
  %16 = getelementptr inbounds %struct.dpu_mdss_color, %struct.dpu_mdss_color* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 4095
  %19 = load %struct.dpu_mdss_color*, %struct.dpu_mdss_color** %5, align 8
  %20 = getelementptr inbounds %struct.dpu_mdss_color, %struct.dpu_mdss_color* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 4095
  %23 = shl i32 %22, 16
  %24 = or i32 %18, %23
  %25 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %13, i32 %14, i32 %24)
  %26 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %27 = load i32, i32* @LM_BORDER_COLOR_1, align 4
  %28 = load %struct.dpu_mdss_color*, %struct.dpu_mdss_color** %5, align 8
  %29 = getelementptr inbounds %struct.dpu_mdss_color, %struct.dpu_mdss_color* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 4095
  %32 = load %struct.dpu_mdss_color*, %struct.dpu_mdss_color** %5, align 8
  %33 = getelementptr inbounds %struct.dpu_mdss_color, %struct.dpu_mdss_color* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, 4095
  %36 = shl i32 %35, 16
  %37 = or i32 %31, %36
  %38 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %26, i32 %27, i32 %37)
  br label %39

39:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
