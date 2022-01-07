; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_update_hdp_mem_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_nv.c_nv_update_hdp_mem_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_CG_SUPPORT_HDP_LS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_DS = common dso_local global i32 0, align 4
@AMD_CG_SUPPORT_HDP_SD = common dso_local global i32 0, align 4
@HDP = common dso_local global i32 0, align 4
@mmHDP_CLK_CNTL = common dso_local global i32 0, align 4
@mmHDP_MEM_POWER_CTRL = common dso_local global i32 0, align 4
@HDP_CLK_CNTL = common dso_local global i32 0, align 4
@IPH_MEM_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@RC_MEM_CLK_SOFT_OVERRIDE = common dso_local global i32 0, align 4
@HDP_MEM_POWER_CTRL = common dso_local global i32 0, align 4
@IPH_MEM_POWER_CTRL_EN = common dso_local global i32 0, align 4
@IPH_MEM_POWER_LS_EN = common dso_local global i32 0, align 4
@IPH_MEM_POWER_DS_EN = common dso_local global i32 0, align 4
@IPH_MEM_POWER_SD_EN = common dso_local global i32 0, align 4
@RC_MEM_POWER_CTRL_EN = common dso_local global i32 0, align 4
@RC_MEM_POWER_LS_EN = common dso_local global i32 0, align 4
@RC_MEM_POWER_DS_EN = common dso_local global i32 0, align 4
@RC_MEM_POWER_SD_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*, i32)* @nv_update_hdp_mem_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv_update_hdp_mem_power_gating(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %9 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %12 = load i32, i32* @AMD_CG_SUPPORT_HDP_DS, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AMD_CG_SUPPORT_HDP_SD, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %10, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %138

19:                                               ; preds = %2
  %20 = load i32, i32* @HDP, align 4
  %21 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %22 = call i32 @RREG32_SOC15(i32 %20, i32 0, i32 %21)
  store i32 %22, i32* %6, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @HDP, align 4
  %24 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %25 = call i32 @RREG32_SOC15(i32 %23, i32 0, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @HDP_CLK_CNTL, align 4
  %28 = load i32, i32* @IPH_MEM_CLK_SOFT_OVERRIDE, align 4
  %29 = call i32 @REG_SET_FIELD(i32 %26, i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HDP_CLK_CNTL, align 4
  %32 = load i32, i32* @RC_MEM_CLK_SOFT_OVERRIDE, align 4
  %33 = call i32 @REG_SET_FIELD(i32 %30, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @HDP, align 4
  %35 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @WREG32_SOC15(i32 %34, i32 0, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %40 = load i32, i32* @IPH_MEM_POWER_CTRL_EN, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40, i32 0)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %44 = load i32, i32* @IPH_MEM_POWER_LS_EN, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %48 = load i32, i32* @IPH_MEM_POWER_DS_EN, align 4
  %49 = call i32 @REG_SET_FIELD(i32 %46, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %52 = load i32, i32* @IPH_MEM_POWER_SD_EN, align 4
  %53 = call i32 @REG_SET_FIELD(i32 %50, i32 %51, i32 %52, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %56 = load i32, i32* @RC_MEM_POWER_CTRL_EN, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 0)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %60 = load i32, i32* @RC_MEM_POWER_LS_EN, align 4
  %61 = call i32 @REG_SET_FIELD(i32 %58, i32 %59, i32 %60, i32 0)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %64 = load i32, i32* @RC_MEM_POWER_DS_EN, align 4
  %65 = call i32 @REG_SET_FIELD(i32 %62, i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %68 = load i32, i32* @RC_MEM_POWER_SD_EN, align 4
  %69 = call i32 @REG_SET_FIELD(i32 %66, i32 %67, i32 %68, i32 0)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @HDP, align 4
  %71 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @WREG32_SOC15(i32 %70, i32 0, i32 %71, i32 %72)
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %75 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AMD_CG_SUPPORT_HDP_LS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %19
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %83 = load i32, i32* @IPH_MEM_POWER_LS_EN, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @REG_SET_FIELD(i32 %81, i32 %82, i32 %83, i32 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %88 = load i32, i32* @RC_MEM_POWER_LS_EN, align 4
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @REG_SET_FIELD(i32 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %7, align 4
  br label %129

91:                                               ; preds = %19
  %92 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %93 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AMD_CG_SUPPORT_HDP_DS, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %101 = load i32, i32* @IPH_MEM_POWER_DS_EN, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @REG_SET_FIELD(i32 %99, i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %106 = load i32, i32* @RC_MEM_POWER_DS_EN, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @REG_SET_FIELD(i32 %104, i32 %105, i32 %106, i32 %107)
  store i32 %108, i32* %7, align 4
  br label %128

109:                                              ; preds = %91
  %110 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %111 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @AMD_CG_SUPPORT_HDP_SD, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %109
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %119 = load i32, i32* @IPH_MEM_POWER_SD_EN, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @REG_SET_FIELD(i32 %117, i32 %118, i32 %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @HDP_MEM_POWER_CTRL, align 4
  %124 = load i32, i32* @RC_MEM_POWER_DS_EN, align 4
  %125 = load i32, i32* %4, align 4
  %126 = call i32 @REG_SET_FIELD(i32 %122, i32 %123, i32 %124, i32 %125)
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %116, %109
  br label %128

128:                                              ; preds = %127, %98
  br label %129

129:                                              ; preds = %128, %80
  %130 = load i32, i32* @HDP, align 4
  %131 = load i32, i32* @mmHDP_MEM_POWER_CTRL, align 4
  %132 = load i32, i32* %7, align 4
  %133 = call i32 @WREG32_SOC15(i32 %130, i32 0, i32 %131, i32 %132)
  %134 = load i32, i32* @HDP, align 4
  %135 = load i32, i32* @mmHDP_CLK_CNTL, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @WREG32_SOC15(i32 %134, i32 0, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %18
  ret void
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
