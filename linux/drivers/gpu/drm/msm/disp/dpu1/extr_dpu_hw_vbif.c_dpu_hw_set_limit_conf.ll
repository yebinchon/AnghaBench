; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_limit_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_limit_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@VBIF_IN_RD_LIM_CONF0 = common dso_local global i32 0, align 4
@VBIF_IN_WR_LIM_CONF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_vbif*, i32, i32, i32)* @dpu_hw_set_limit_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_set_limit_conf(%struct.dpu_hw_vbif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dpu_hw_vbif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %14 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %13, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %14, %struct.dpu_hw_blk_reg_map** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @VBIF_IN_RD_LIM_CONF0, align 4
  store i32 %18, i32* %11, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @VBIF_IN_WR_LIM_CONF0, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load i32, i32* %6, align 4
  %23 = sdiv i32 %22, 4
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %11, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = srem i32 %27, 4
  %29 = mul nsw i32 %28, 8
  store i32 %29, i32* %12, align 4
  %30 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %12, align 4
  %34 = shl i32 255, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %12, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %43, i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i32) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
