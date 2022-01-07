; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_common_get_clockgating_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_vi.c_vi_common_get_clockgating_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@ixPCIE_CNTL2 = common dso_local global i32 0, align 4
@PCIE_CNTL2__SLV_MEM_LS_EN_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_BIF_LS = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_LS = common dso_local global i32 0, align 4
@HDP_MEM_POWER_LS__LS_ENABLE_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@mmHDP_HOST_PATH_CNTL = common dso_local global i32 0, align 4
@HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_MGCG = common dso_local global i32 0, align 4
@ixCGTT_ROM_CLK_CTRL0 = common dso_local global i32 0, align 4
@CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_ROM_MGCG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @vi_common_get_clockgating_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vi_common_get_clockgating_state(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %8, %struct.amdgpu_device** %5, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %10 = call i64 @amdgpu_sriov_vf(%struct.amdgpu_device* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  store i32 0, i32* %13, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load i32, i32* @ixPCIE_CNTL2, align 4
  %16 = call i32 @RREG32_PCIE(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PCIE_CNTL2__SLV_MEM_LS_EN_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @AMD_CG_SUPPORT_BIF_LS, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* @mmHDP_MEM_POWER_LS, align 4
  %28 = call i32 @RREG32(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @HDP_MEM_POWER_LS__LS_ENABLE_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  %34 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %34
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %33, %26
  %39 = load i32, i32* @mmHDP_HOST_PATH_CNTL, align 4
  %40 = call i32 @RREG32(i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @HDP_HOST_PATH_CNTL__CLOCK_GATING_DIS_MASK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @AMD_CG_SUPPORT_HDP_MGCG, align 4
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* @ixCGTT_ROM_CLK_CTRL0, align 4
  %52 = call i32 @RREG32_SMC(i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @CGTT_ROM_CLK_CTRL0__SOFT_OVERRIDE0_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @AMD_CG_SUPPORT_ROM_MGCG, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %57, %50
  ret void
}

declare dso_local i64 @amdgpu_sriov_vf(%struct.amdgpu_device*) #1

declare dso_local i32 @RREG32_PCIE(i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @RREG32_SMC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
