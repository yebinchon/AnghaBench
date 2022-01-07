; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_blend_config_sdm845.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_blend_config_sdm845.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@DPU_STAGE_BASE = common dso_local global i64 0, align 8
@LM_BLEND0_CONST_ALPHA = common dso_local global i64 0, align 8
@LM_BLEND0_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mixer*, i64, i64, i64, i64)* @dpu_hw_lm_setup_blend_config_sdm845 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_lm_setup_blend_config_sdm845(%struct.dpu_hw_mixer* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dpu_hw_mixer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.dpu_hw_mixer* %0, %struct.dpu_hw_mixer** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %6, align 8
  %15 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %14, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %15, %struct.dpu_hw_blk_reg_map** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @DPU_STAGE_BASE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %51

20:                                               ; preds = %5
  %21 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @_stage_offset(%struct.dpu_hw_mixer* %21, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp slt i32 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  br label %51

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = and i64 %31, 255
  %33 = load i64, i64* %8, align 8
  %34 = and i64 %33, 255
  %35 = shl i64 %34, 16
  %36 = or i64 %32, %35
  store i64 %36, i64* %13, align 8
  %37 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %11, align 8
  %38 = load i64, i64* @LM_BLEND0_CONST_ALPHA, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i64, i64* %13, align 8
  %43 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %37, i64 %41, i64 %42)
  %44 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %11, align 8
  %45 = load i64, i64* @LM_BLEND0_OP, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %44, i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %30, %29, %19
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
