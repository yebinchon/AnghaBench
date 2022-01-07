; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_update_sdma_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v3_0.c_sdma_v3_0_update_sdma_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@mmSDMA0_CLK_CTRL = common dso_local global i64 0, align 8
@sdma_offsets = common dso_local global i64* null, align 8
@SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v3_0_update_sdma_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v3_0_update_sdma_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %70

17:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %66, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %18
  %26 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %27 = load i64*, i64** @sdma_offsets, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %26, %31
  %33 = call i32 @RREG32(i64 %32)
  store i32 %33, i32* %6, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %35 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %25
  %56 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %57 = load i64*, i64** @sdma_offsets, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %56, %61
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @WREG32(i64 %62, i32 %63)
  br label %65

65:                                               ; preds = %55, %25
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %18

69:                                               ; preds = %18
  br label %122

70:                                               ; preds = %10, %2
  store i32 0, i32* %7, align 4
  br label %71

71:                                               ; preds = %118, %70
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %72, %76
  br i1 %77, label %78, label %121

78:                                               ; preds = %71
  %79 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %80 = load i64*, i64** @sdma_offsets, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %79, %84
  %86 = call i32 @RREG32(i64 %85)
  store i32 %86, i32* %6, align 4
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %88 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %6, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %6, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %78
  %108 = load i64, i64* @mmSDMA0_CLK_CTRL, align 8
  %109 = load i64*, i64** @sdma_offsets, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %108, %113
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @WREG32(i64 %114, i32 %115)
  br label %117

117:                                              ; preds = %107, %78
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %71

121:                                              ; preds = %71
  br label %122

122:                                              ; preds = %121, %69
  ret void
}

declare dso_local i32 @RREG32(i64) #1

declare dso_local i32 @WREG32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
