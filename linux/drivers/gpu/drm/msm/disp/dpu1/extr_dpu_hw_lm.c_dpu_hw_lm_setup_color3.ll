; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_color3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_lm.c_dpu_hw_lm_setup_color3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_mixer = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@LM_OP_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_mixer*, i32)* @dpu_hw_lm_setup_color3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_lm_setup_color3(%struct.dpu_hw_mixer* %0, i32 %1) #0 {
  %3 = alloca %struct.dpu_hw_mixer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %6 = alloca i32, align 4
  store %struct.dpu_hw_mixer* %0, %struct.dpu_hw_mixer** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dpu_hw_mixer*, %struct.dpu_hw_mixer** %3, align 8
  %8 = getelementptr inbounds %struct.dpu_hw_mixer, %struct.dpu_hw_mixer* %7, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %8, %struct.dpu_hw_blk_reg_map** %5, align 8
  %9 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %10 = load i32, i32* @LM_OP_MODE, align 4
  %11 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @BIT(i32 31)
  %14 = call i32 @BIT(i32 30)
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %5, align 8
  %20 = load i32, i32* @LM_OP_MODE, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %19, i32 %20, i32 %21)
  ret void
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
