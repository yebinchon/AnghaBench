; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_qos_remap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_hw_vbif.c_dpu_hw_set_qos_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_hw_vbif = type { %struct.dpu_hw_blk_reg_map }
%struct.dpu_hw_blk_reg_map = type { i32 }

@VBIF_XINL_QOS_RP_REMAP_000 = common dso_local global i64 0, align 8
@VBIF_XINL_QOS_LVL_REMAP_000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_hw_vbif*, i32, i32, i32)* @dpu_hw_set_qos_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_hw_set_qos_remap(%struct.dpu_hw_vbif* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dpu_hw_vbif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dpu_hw_blk_reg_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dpu_hw_vbif* %0, %struct.dpu_hw_vbif** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %16 = icmp ne %struct.dpu_hw_vbif* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %81

18:                                               ; preds = %4
  %19 = load %struct.dpu_hw_vbif*, %struct.dpu_hw_vbif** %5, align 8
  %20 = getelementptr inbounds %struct.dpu_hw_vbif, %struct.dpu_hw_vbif* %19, i32 0, i32 0
  store %struct.dpu_hw_blk_reg_map* %20, %struct.dpu_hw_blk_reg_map** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, 8
  %23 = ashr i32 %22, 3
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 8
  %27 = add nsw i32 %24, %26
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 7
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %32 = load i64, i64* @VBIF_XINL_QOS_RP_REMAP_000, align 8
  %33 = load i32, i32* %13, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %31, i64 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %38 = load i64, i64* @VBIF_XINL_QOS_LVL_REMAP_000, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map* %37, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %14, align 4
  %44 = shl i32 7, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %10, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %14, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %12, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %12, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %11, align 4
  %67 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %68 = load i64, i64* @VBIF_XINL_QOS_RP_REMAP_000, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %67, i64 %71, i32 %72)
  %74 = load %struct.dpu_hw_blk_reg_map*, %struct.dpu_hw_blk_reg_map** %9, align 8
  %75 = load i64, i64* @VBIF_XINL_QOS_LVL_REMAP_000, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map* %74, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @DPU_REG_READ(%struct.dpu_hw_blk_reg_map*, i64) #1

declare dso_local i32 @DPU_REG_WRITE(%struct.dpu_hw_blk_reg_map*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
