; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_mg_clock_gating_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_mg_clock_gating_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i64 }
%struct.rv7xx_power_info = type { i64 }
%struct.evergreen_power_info = type { i64 }

@CHIP_CEDAR = common dso_local global i64 0, align 8
@CEDAR_MGCGCGTSSMCTRL_DFLT = common dso_local global i32 0, align 4
@CHIP_REDWOOD = common dso_local global i64 0, align 8
@REDWOOD_MGCGCGTSSMCTRL_DFLT = common dso_local global i32 0, align 4
@CYPRESS_MGCGCGTSSMCTRL_DFLT = common dso_local global i32 0, align 4
@GRBM_GFX_INDEX = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_0 = common dso_local global i32 0, align 4
@CYPRESS_MGCGTTLOCAL0_DFLT = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_1 = common dso_local global i32 0, align 4
@CYPRESS_MGCGTTLOCAL1_DFLT = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_2 = common dso_local global i32 0, align 4
@CYPRESS_MGCGTTLOCAL2_DFLT = common dso_local global i32 0, align 4
@CG_CGTT_LOCAL_3 = common dso_local global i32 0, align 4
@CYPRESS_MGCGTTLOCAL3_DFLT = common dso_local global i32 0, align 4
@CGTS_SM_CTRL_REG = common dso_local global i32 0, align 4
@MC_CITF_MISC_RD_CG = common dso_local global i32 0, align 4
@MEM_LS_ENABLE = common dso_local global i32 0, align 4
@MC_CITF_MISC_WR_CG = common dso_local global i32 0, align 4
@MC_CITF_MISC_VM_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_HUB_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_VM_CG = common dso_local global i32 0, align 4
@MC_HUB_MISC_SIP_CG = common dso_local global i32 0, align 4
@MC_XPB_CLK_GAT = common dso_local global i32 0, align 4
@VM_L2_CG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32)* @cypress_mg_clock_gating_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cypress_mg_clock_gating_enable(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rv7xx_power_info*, align 8
  %6 = alloca %struct.evergreen_power_info*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %104

14:                                               ; preds = %2
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CHIP_CEDAR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @CEDAR_MGCGCGTSSMCTRL_DFLT, align 4
  store i32 %21, i32* %7, align 4
  br label %33

22:                                               ; preds = %14
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CHIP_REDWOOD, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @REDWOOD_MGCGCGTSSMCTRL_DFLT, align 4
  store i32 %29, i32* %7, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @CYPRESS_MGCGCGTSSMCTRL_DFLT, align 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %30, %28
  br label %33

33:                                               ; preds = %32, %20
  %34 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %35 = call i32 @WREG32(i32 %34, i32 -1073741824)
  %36 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %37 = load i32, i32* @CYPRESS_MGCGTTLOCAL0_DFLT, align 4
  %38 = call i32 @WREG32_CG(i32 %36, i32 %37)
  %39 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %40 = load i32, i32* @CYPRESS_MGCGTTLOCAL1_DFLT, align 4
  %41 = and i32 %40, -12289
  %42 = call i32 @WREG32_CG(i32 %39, i32 %41)
  %43 = load i32, i32* @CG_CGTT_LOCAL_2, align 4
  %44 = load i32, i32* @CYPRESS_MGCGTTLOCAL2_DFLT, align 4
  %45 = call i32 @WREG32_CG(i32 %43, i32 %44)
  %46 = load i32, i32* @CG_CGTT_LOCAL_3, align 4
  %47 = load i32, i32* @CYPRESS_MGCGTTLOCAL3_DFLT, align 4
  %48 = call i32 @WREG32_CG(i32 %46, i32 %47)
  %49 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %50 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %33
  %54 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %33
  %58 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %6, align 8
  %59 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %103

62:                                               ; preds = %57
  %63 = load i32, i32* @MC_CITF_MISC_RD_CG, align 4
  %64 = load i32, i32* @MEM_LS_ENABLE, align 4
  %65 = load i32, i32* @MEM_LS_ENABLE, align 4
  %66 = xor i32 %65, -1
  %67 = call i32 @WREG32_P(i32 %63, i32 %64, i32 %66)
  %68 = load i32, i32* @MC_CITF_MISC_WR_CG, align 4
  %69 = load i32, i32* @MEM_LS_ENABLE, align 4
  %70 = load i32, i32* @MEM_LS_ENABLE, align 4
  %71 = xor i32 %70, -1
  %72 = call i32 @WREG32_P(i32 %68, i32 %69, i32 %71)
  %73 = load i32, i32* @MC_CITF_MISC_VM_CG, align 4
  %74 = load i32, i32* @MEM_LS_ENABLE, align 4
  %75 = load i32, i32* @MEM_LS_ENABLE, align 4
  %76 = xor i32 %75, -1
  %77 = call i32 @WREG32_P(i32 %73, i32 %74, i32 %76)
  %78 = load i32, i32* @MC_HUB_MISC_HUB_CG, align 4
  %79 = load i32, i32* @MEM_LS_ENABLE, align 4
  %80 = load i32, i32* @MEM_LS_ENABLE, align 4
  %81 = xor i32 %80, -1
  %82 = call i32 @WREG32_P(i32 %78, i32 %79, i32 %81)
  %83 = load i32, i32* @MC_HUB_MISC_VM_CG, align 4
  %84 = load i32, i32* @MEM_LS_ENABLE, align 4
  %85 = load i32, i32* @MEM_LS_ENABLE, align 4
  %86 = xor i32 %85, -1
  %87 = call i32 @WREG32_P(i32 %83, i32 %84, i32 %86)
  %88 = load i32, i32* @MC_HUB_MISC_SIP_CG, align 4
  %89 = load i32, i32* @MEM_LS_ENABLE, align 4
  %90 = load i32, i32* @MEM_LS_ENABLE, align 4
  %91 = xor i32 %90, -1
  %92 = call i32 @WREG32_P(i32 %88, i32 %89, i32 %91)
  %93 = load i32, i32* @MC_XPB_CLK_GAT, align 4
  %94 = load i32, i32* @MEM_LS_ENABLE, align 4
  %95 = load i32, i32* @MEM_LS_ENABLE, align 4
  %96 = xor i32 %95, -1
  %97 = call i32 @WREG32_P(i32 %93, i32 %94, i32 %96)
  %98 = load i32, i32* @VM_L2_CG, align 4
  %99 = load i32, i32* @MEM_LS_ENABLE, align 4
  %100 = load i32, i32* @MEM_LS_ENABLE, align 4
  %101 = xor i32 %100, -1
  %102 = call i32 @WREG32_P(i32 %98, i32 %99, i32 %101)
  br label %103

103:                                              ; preds = %62, %57
  br label %123

104:                                              ; preds = %2
  %105 = load i32, i32* @GRBM_GFX_INDEX, align 4
  %106 = call i32 @WREG32(i32 %105, i32 -1073741824)
  %107 = load i32, i32* @CG_CGTT_LOCAL_0, align 4
  %108 = call i32 @WREG32_CG(i32 %107, i32 -1)
  %109 = load i32, i32* @CG_CGTT_LOCAL_1, align 4
  %110 = call i32 @WREG32_CG(i32 %109, i32 -1)
  %111 = load i32, i32* @CG_CGTT_LOCAL_2, align 4
  %112 = call i32 @WREG32_CG(i32 %111, i32 -1)
  %113 = load i32, i32* @CG_CGTT_LOCAL_3, align 4
  %114 = call i32 @WREG32_CG(i32 %113, i32 -1)
  %115 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %5, align 8
  %116 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %104
  %120 = load i32, i32* @CGTS_SM_CTRL_REG, align 4
  %121 = call i32 @WREG32(i32 %120, i32 -2114696256)
  br label %122

122:                                              ; preds = %119, %104
  br label %123

123:                                              ; preds = %122, %103
  ret void
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @WREG32_CG(i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
