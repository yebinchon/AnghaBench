; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.amdgpu_device*)* }

@GC = common dso_local global i32 0, align 4
@mmGRBM_STATUS = common dso_local global i32 0, align 4
@GRBM_STATUS__PA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SC_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__BCI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SX_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__TA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__VGT_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__DB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__GDS_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SPI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__IA_BUSY_NO_DMA_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_COHERENCY_BUSY_MASK = common dso_local global i32 0, align 4
@mmGRBM_STATUS2 = common dso_local global i32 0, align 4
@GRBM_STATUS2 = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@CHIP_ARCTURUS = common dso_local global i64 0, align 8
@mmGRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v9_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v9_0_soft_reset(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.amdgpu_device*
  store %struct.amdgpu_device* %7, %struct.amdgpu_device** %5, align 8
  %8 = load i32, i32* @GC, align 4
  %9 = load i32, i32* @mmGRBM_STATUS, align 4
  %10 = call i32 @RREG32_SOC15(i32 %8, i32 0, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @GRBM_STATUS__PA_BUSY_MASK, align 4
  %13 = load i32, i32* @GRBM_STATUS__SC_BUSY_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @GRBM_STATUS__BCI_BUSY_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @GRBM_STATUS__SX_BUSY_MASK, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GRBM_STATUS__TA_BUSY_MASK, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @GRBM_STATUS__VGT_BUSY_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GRBM_STATUS__DB_BUSY_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GRBM_STATUS__CB_BUSY_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GRBM_STATUS__GDS_BUSY_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GRBM_STATUS__SPI_BUSY_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GRBM_STATUS__IA_BUSY_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @GRBM_STATUS__IA_BUSY_NO_DMA_MASK, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %11, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %40 = load i32, i32* @SOFT_RESET_CP, align 4
  %41 = call i32 @REG_SET_FIELD(i32 %38, i32 %39, i32 %40, i32 1)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %44 = load i32, i32* @SOFT_RESET_GFX, align 4
  %45 = call i32 @REG_SET_FIELD(i32 %42, i32 %43, i32 %44, i32 1)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %1
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @GRBM_STATUS__CP_BUSY_MASK, align 4
  %49 = load i32, i32* @GRBM_STATUS__CP_COHERENCY_BUSY_MASK, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %56 = load i32, i32* @SOFT_RESET_CP, align 4
  %57 = call i32 @REG_SET_FIELD(i32 %54, i32 %55, i32 %56, i32 1)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32, i32* @GC, align 4
  %60 = load i32, i32* @mmGRBM_STATUS2, align 4
  %61 = call i32 @RREG32_SOC15(i32 %59, i32 0, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @GRBM_STATUS2, align 4
  %64 = load i32, i32* @RLC_BUSY, align 4
  %65 = call i64 @REG_GET_FIELD(i32 %62, i32 %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %58
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %70 = load i32, i32* @SOFT_RESET_RLC, align 4
  %71 = call i32 @REG_SET_FIELD(i32 %68, i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %58
  %73 = load i32, i32* %3, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %131

75:                                               ; preds = %72
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32 (%struct.amdgpu_device*)*, i32 (%struct.amdgpu_device*)** %81, align 8
  %83 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %84 = call i32 %82(%struct.amdgpu_device* %83)
  %85 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %86 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @CHIP_ARCTURUS, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %75
  %91 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %92 = call i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device* %91, i32 0)
  br label %93

93:                                               ; preds = %90, %75
  %94 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %95 = call i32 @gfx_v9_0_cp_compute_enable(%struct.amdgpu_device* %94, i32 0)
  %96 = load i32, i32* %3, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %129

98:                                               ; preds = %93
  %99 = load i32, i32* @GC, align 4
  %100 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %101 = call i32 @RREG32_SOC15(i32 %99, i32 0, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %4, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %106 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @dev_info(i32 %107, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* @GC, align 4
  %111 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @WREG32_SOC15(i32 %110, i32 0, i32 %111, i32 %112)
  %114 = load i32, i32* @GC, align 4
  %115 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %116 = call i32 @RREG32_SOC15(i32 %114, i32 0, i32 %115)
  store i32 %116, i32* %4, align 4
  %117 = call i32 @udelay(i32 50)
  %118 = load i32, i32* %3, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %4, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* @GC, align 4
  %123 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @WREG32_SOC15(i32 %122, i32 0, i32 %123, i32 %124)
  %126 = load i32, i32* @GC, align 4
  %127 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %128 = call i32 @RREG32_SOC15(i32 %126, i32 0, i32 %127)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %98, %93
  %130 = call i32 @udelay(i32 50)
  br label %131

131:                                              ; preds = %129, %72
  ret i32 0
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @gfx_v9_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v9_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
