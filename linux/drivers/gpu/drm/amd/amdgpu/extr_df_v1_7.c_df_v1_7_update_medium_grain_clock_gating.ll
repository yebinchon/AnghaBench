; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v1_7.c_df_v1_7_update_medium_grain_clock_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_df_v1_7.c_df_v1_7_update_medium_grain_clock_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.amdgpu_device*, i32)* }

@AMD_CG_SUPPORT_DF_MGCG = common dso_local global i32 0, align 4
@DF = common dso_local global i32 0, align 4
@mmDF_PIE_AON0_DfGlobalClkGater = common dso_local global i32 0, align 4
@DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK = common dso_local global i32 0, align 4
@DF_V1_7_MGCG_ENABLE_15_CYCLE_DELAY = common dso_local global i32 0, align 4
@DF_V1_7_MGCG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @df_v1_7_update_medium_grain_clock_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @df_v1_7_update_medium_grain_clock_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %9, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %12 = call i32 %10(%struct.amdgpu_device* %11, i32 1)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %17 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @AMD_CG_SUPPORT_DF_MGCG, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load i32, i32* @DF, align 4
  %24 = load i32, i32* @mmDF_PIE_AON0_DfGlobalClkGater, align 4
  %25 = call i32 @RREG32_SOC15(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @DF_V1_7_MGCG_ENABLE_15_CYCLE_DELAY, align 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @DF, align 4
  %34 = load i32, i32* @mmDF_PIE_AON0_DfGlobalClkGater, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @WREG32_SOC15(i32 %33, i32 0, i32 %34, i32 %35)
  br label %52

37:                                               ; preds = %15, %2
  %38 = load i32, i32* @DF, align 4
  %39 = load i32, i32* @mmDF_PIE_AON0_DfGlobalClkGater, align 4
  %40 = call i32 @RREG32_SOC15(i32 %38, i32 0, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @DF_PIE_AON0_DfGlobalClkGater__MGCGMode_MASK, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @DF_V1_7_MGCG_DISABLE, align 4
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* @DF, align 4
  %49 = load i32, i32* @mmDF_PIE_AON0_DfGlobalClkGater, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @WREG32_SOC15(i32 %48, i32 0, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %37, %22
  %53 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %54 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.amdgpu_device*, i32)*, i32 (%struct.amdgpu_device*, i32)** %56, align 8
  %58 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %59 = call i32 %57(%struct.amdgpu_device* %58, i32 0)
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
