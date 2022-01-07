; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_mem_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_mem_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@MAX_XIN_COUNT = common dso_local global i32 0, align 4
@VBIF_OUT_AXI_AMEMTYPE_CONF1 = common dso_local global i32 0, align 4
@VBIF_OUT_AXI_AMEMTYPE_CONF0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_vbif*, i32, i32)* @dpu_hw_set_mem_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_set_mem_type(%struct.dpu_hw_vbif* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dpu_hw_vbif*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %12 = icmp ne %struct.dpu_hw_vbif* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MAX_XIN_COUNT, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %13, %3
  br label %54

21:                                               ; preds = %17
  %22 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %4, align 8
  %23 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %22, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %23, %struct.dpu_hw_blk_reg_map** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 8
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @VBIF_OUT_AXI_AMEMTYPE_CONF1, align 4
  store i32 %29, i32* %8, align 4
  br label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @VBIF_OUT_AXI_AMEMTYPE_CONF0, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 7
  %35 = mul nsw i32 %34, 4
  store i32 %35, i32* %9, align 4
  %36 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = shl i32 7, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 7
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %45, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %32, %20
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
