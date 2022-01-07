; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_get_limit_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_get_limit_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@VBIF_IN_RD_LIM_CONF0 = common dso_local global i32 0, align 4
@VBIF_IN_WR_LIM_CONF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpu_hw_vbif*, i32, i32)* @dpu_hw_get_limit_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpu_hw_get_limit_conf(%struct.dpu_hw_vbif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_vbif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %13 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %12, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %13, %struct.dpu_hw_blk_reg_map** %7, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @VBIF_IN_RD_LIM_CONF0, align 4
  store i32 %17, i32* %9, align 4
  br label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @VBIF_IN_WR_LIM_CONF0, align 4
  store i32 %19, i32* %9, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 4
  %23 = mul nsw i32 %22, 4
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = srem i32 %26, 4
  %28 = mul nsw i32 %27, 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = ashr i32 %32, %33
  %35 = and i32 %34, 255
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  ret i32 %36
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
