; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v4_0.c_sdma_v4_0_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AMD_CG_SUPPORT_SDMA_MGCG = common dso_local global i32 0, align 4
@mmSDMA0_CLK_CTRL = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK = common dso_local global i32 0, align 4
@SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v4_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v4_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %60

10:                                               ; preds = %2
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %60

17:                                               ; preds = %10
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %21 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %59

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %28 = call i32 @RREG32_SDMA(i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %30 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %25
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @WREG32_SDMA(i32 %51, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %25
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %18

59:                                               ; preds = %18
  br label %102

60:                                               ; preds = %10, %2
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %98, %60
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %62, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %61
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %71 = call i32 @RREG32_SDMA(i32 %69, i32 %70)
  store i32 %71, i32* %5, align 4
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %73 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %68
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @WREG32_SDMA(i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %92, %68
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %7, align 4
  br label %61

101:                                              ; preds = %61
  br label %102

102:                                              ; preds = %101, %59
  ret void
}

declare dso_local i32 @RREG32_SDMA(i32, i32) #1

declare dso_local i32 @WREG32_SDMA(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
