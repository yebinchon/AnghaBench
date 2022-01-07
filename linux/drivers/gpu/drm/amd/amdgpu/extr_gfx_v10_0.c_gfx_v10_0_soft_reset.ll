; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v10_0.c_gfx_v10_0_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmGRBM_STATUS = common dso_local global i32 0, align 4
@GRBM_STATUS__PA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SC_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__BCI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SX_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__TA_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__DB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CB_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__GDS_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__SPI_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__GE_BUSY_NO_DMA_MASK = common dso_local global i32 0, align 4
@GRBM_SOFT_RESET = common dso_local global i32 0, align 4
@SOFT_RESET_CP = common dso_local global i32 0, align 4
@SOFT_RESET_GFX = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_BUSY_MASK = common dso_local global i32 0, align 4
@GRBM_STATUS__CP_COHERENCY_BUSY_MASK = common dso_local global i32 0, align 4
@mmGRBM_STATUS2 = common dso_local global i32 0, align 4
@GRBM_STATUS2 = common dso_local global i32 0, align 4
@RLC_BUSY = common dso_local global i32 0, align 4
@SOFT_RESET_RLC = common dso_local global i32 0, align 4
@mmGRBM_SOFT_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GRBM_SOFT_RESET=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @gfx_v10_0_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfx_v10_0_soft_reset(i8* %0) #0 {
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
  %21 = load i32, i32* @GRBM_STATUS__DB_BUSY_MASK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @GRBM_STATUS__CB_BUSY_MASK, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @GRBM_STATUS__GDS_BUSY_MASK, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @GRBM_STATUS__SPI_BUSY_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @GRBM_STATUS__GE_BUSY_NO_DMA_MASK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @GRBM_STATUS__BCI_BUSY_MASK, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %11, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %1
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %38 = load i32, i32* @SOFT_RESET_CP, align 4
  %39 = call i32 @REG_SET_FIELD(i32 %36, i32 %37, i32 %38, i32 1)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %42 = load i32, i32* @SOFT_RESET_GFX, align 4
  %43 = call i32 @REG_SET_FIELD(i32 %40, i32 %41, i32 %42, i32 1)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @GRBM_STATUS__CP_BUSY_MASK, align 4
  %47 = load i32, i32* @GRBM_STATUS__CP_COHERENCY_BUSY_MASK, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %54 = load i32, i32* @SOFT_RESET_CP, align 4
  %55 = call i32 @REG_SET_FIELD(i32 %52, i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %44
  %57 = load i32, i32* @GC, align 4
  %58 = load i32, i32* @mmGRBM_STATUS2, align 4
  %59 = call i32 @RREG32_SOC15(i32 %57, i32 0, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @GRBM_STATUS2, align 4
  %62 = load i32, i32* @RLC_BUSY, align 4
  %63 = call i64 @REG_GET_FIELD(i32 %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @GRBM_SOFT_RESET, align 4
  %68 = load i32, i32* @SOFT_RESET_RLC, align 4
  %69 = call i32 @REG_SET_FIELD(i32 %66, i32 %67, i32 %68, i32 1)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i32, i32* %3, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %75 = call i32 @gfx_v10_0_rlc_stop(%struct.amdgpu_device* %74)
  %76 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %77 = call i32 @gfx_v10_0_cp_gfx_enable(%struct.amdgpu_device* %76, i32 0)
  %78 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %79 = call i32 @gfx_v10_0_cp_compute_enable(%struct.amdgpu_device* %78, i32 0)
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %73
  %83 = load i32, i32* @GC, align 4
  %84 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %85 = call i32 @RREG32_SOC15(i32 %83, i32 0, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %3, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %90 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @dev_info(i32 %91, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @GC, align 4
  %95 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @WREG32_SOC15(i32 %94, i32 0, i32 %95, i32 %96)
  %98 = load i32, i32* @GC, align 4
  %99 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %100 = call i32 @RREG32_SOC15(i32 %98, i32 0, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = call i32 @udelay(i32 50)
  %102 = load i32, i32* %3, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %4, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %4, align 4
  %106 = load i32, i32* @GC, align 4
  %107 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @WREG32_SOC15(i32 %106, i32 0, i32 %107, i32 %108)
  %110 = load i32, i32* @GC, align 4
  %111 = load i32, i32* @mmGRBM_SOFT_RESET, align 4
  %112 = call i32 @RREG32_SOC15(i32 %110, i32 0, i32 %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %82, %73
  %114 = call i32 @udelay(i32 50)
  br label %115

115:                                              ; preds = %113, %70
  ret i32 0
}

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i64 @REG_GET_FIELD(i32, i32, i32) #1

declare dso_local i32 @gfx_v10_0_rlc_stop(%struct.amdgpu_device*) #1

declare dso_local i32 @gfx_v10_0_cp_gfx_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @gfx_v10_0_cp_compute_enable(%struct.amdgpu_device*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
