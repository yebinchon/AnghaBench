; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_blend_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_blend_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@DPU_STAGE_BASE = common dso_local global i64 0, align 8
@LM_BLEND0_FG_ALPHA = common dso_local global i64 0, align 8
@LM_BLEND0_BG_ALPHA = common dso_local global i64 0, align 8
@LM_BLEND0_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mixer*, i64, i64, i64, i64)* @dpu_hw_lm_setup_blend_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_lm_setup_blend_config(%struct.dpu_hw_mixer* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dpu_hw_mixer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %12 = alloca i32, align 4
  store %struct.dpu_hw_mixer* %0, %struct.dpu_hw_mixer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %6, align 8
  %14 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %13, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %14, %struct.dpu_hw_blk_reg_map** %11, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @DPU_STAGE_BASE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %51

19:                                               ; preds = %5
  %20 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @_stage_offset(%struct.dpu_hw_mixer* %20, i64 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %51

29:                                               ; preds = %19
  %30 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %11, align 8
  %31 = load i64, i64* @LM_BLEND0_FG_ALPHA, align 8
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %31, %33
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %30, i64 %34, i64 %35)
  %37 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %11, align 8
  %38 = load i64, i64* @LM_BLEND0_BG_ALPHA, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i64, i64* %9, align 8
  %43 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %37, i64 %41, i64 %42)
  %44 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %11, align 8
  %45 = load i64, i64* @LM_BLEND0_OP, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %44, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %29, %28, %18
  ret void
}

declare dso_local i32 @_stage_offset(%struct.dpu_hw_mixer*, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
