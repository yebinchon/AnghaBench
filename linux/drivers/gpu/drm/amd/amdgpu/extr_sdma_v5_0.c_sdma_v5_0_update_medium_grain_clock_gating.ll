; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_sdma_v5_0.c_sdma_v5_0_update_medium_grain_clock_gating.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @sdma_v5_0_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdma_v5_0_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %95, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %11 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %98

15:                                               ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %60

18:                                               ; preds = %15
  %19 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %20 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AMD_CG_SUPPORT_SDMA_MGCG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %18
  %26 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %29 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %26, i32 %27, i32 %28)
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %5, align 4
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %32 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %45 = or i32 %43, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %25
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %56 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @WREG32(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %25
  br label %94

60:                                               ; preds = %18, %15
  %61 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %64 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %61, i32 %62, i32 %63)
  %65 = call i32 @RREG32(i32 %64)
  store i32 %65, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE7_MASK, align 4
  %67 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE6_MASK, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE5_MASK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE4_MASK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE3_MASK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE2_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE1_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @SDMA0_CLK_CTRL__SOFT_OVERRIDE0_MASK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %60
  %87 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @mmSDMA0_CLK_CTRL, align 4
  %90 = call i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device* %87, i32 %88, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @WREG32(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %86, %60
  br label %94

94:                                               ; preds = %93, %59
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %8

98:                                               ; preds = %8
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @sdma_v5_0_get_reg_offset(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
