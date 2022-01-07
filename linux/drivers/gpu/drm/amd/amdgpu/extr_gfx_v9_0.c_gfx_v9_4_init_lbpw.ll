; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_4_init_lbpw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_4_init_lbpw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@GC = common dso_local global i32 0, align 4
@mmRLC_LB_THR_CONFIG_1 = common dso_local global i32 0, align 4
@mmRLC_LB_THR_CONFIG_2 = common dso_local global i32 0, align 4
@mmRLC_LB_THR_CONFIG_3 = common dso_local global i32 0, align 4
@mmRLC_LB_THR_CONFIG_4 = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_INIT = common dso_local global i32 0, align 4
@mmRLC_LB_CNTR_MAX = common dso_local global i32 0, align 4
@mmRLC_LB_INIT_CU_MASK = common dso_local global i32 0, align 4
@RLC_LB_PARAMS = common dso_local global i32 0, align 4
@FIFO_SAMPLES = common dso_local global i32 0, align 4
@PG_IDLE_SAMPLES = common dso_local global i32 0, align 4
@PG_IDLE_SAMPLE_INTERVAL = common dso_local global i32 0, align 4
@mmRLC_LB_PARAMS = common dso_local global i32 0, align 4
@mmRLC_GPM_GENERAL_7 = common dso_local global i32 0, align 4
@RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK = common dso_local global i32 0, align 4
@RLC_LB_CNTL = common dso_local global i32 0, align 4
@CU_MASK_USED_OFF_HYST = common dso_local global i32 0, align 4
@RESERVED = common dso_local global i32 0, align 4
@mmRLC_LB_CNTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_4_init_lbpw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_4_init_lbpw(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @GC, align 4
  %5 = load i32, i32* @mmRLC_LB_THR_CONFIG_1, align 4
  %6 = call i32 @WREG32_SOC15(i32 %4, i32 0, i32 %5, i32 127)
  %7 = load i32, i32* @GC, align 4
  %8 = load i32, i32* @mmRLC_LB_THR_CONFIG_2, align 4
  %9 = call i32 @WREG32_SOC15(i32 %7, i32 0, i32 %8, i32 53709048)
  %10 = load i32, i32* @GC, align 4
  %11 = load i32, i32* @mmRLC_LB_THR_CONFIG_3, align 4
  %12 = call i32 @WREG32_SOC15(i32 %10, i32 0, i32 %11, i32 119)
  %13 = load i32, i32* @GC, align 4
  %14 = load i32, i32* @mmRLC_LB_THR_CONFIG_4, align 4
  %15 = call i32 @WREG32_SOC15(i32 %13, i32 0, i32 %14, i32 49948432)
  %16 = load i32, i32* @GC, align 4
  %17 = load i32, i32* @mmRLC_LB_CNTR_INIT, align 4
  %18 = call i32 @WREG32_SOC15(i32 %16, i32 0, i32 %17, i32 0)
  %19 = load i32, i32* @GC, align 4
  %20 = load i32, i32* @mmRLC_LB_CNTR_MAX, align 4
  %21 = call i32 @WREG32_SOC15(i32 %19, i32 0, i32 %20, i32 2048)
  %22 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %23 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %26 = call i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device* %25, i32 -1, i32 -1, i32 -1)
  %27 = load i32, i32* @GC, align 4
  %28 = load i32, i32* @mmRLC_LB_INIT_CU_MASK, align 4
  %29 = call i32 @WREG32_SOC15(i32 %27, i32 0, i32 %28, i32 -1)
  %30 = load i32, i32* @RLC_LB_PARAMS, align 4
  %31 = load i32, i32* @FIFO_SAMPLES, align 4
  %32 = call i32 @REG_SET_FIELD(i32 0, i32 %30, i32 %31, i32 3)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @RLC_LB_PARAMS, align 4
  %35 = load i32, i32* @PG_IDLE_SAMPLES, align 4
  %36 = call i32 @REG_SET_FIELD(i32 %33, i32 %34, i32 %35, i32 16)
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @RLC_LB_PARAMS, align 4
  %41 = load i32, i32* @PG_IDLE_SAMPLE_INTERVAL, align 4
  %42 = call i32 @REG_SET_FIELD(i32 %39, i32 %40, i32 %41, i32 831)
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* @GC, align 4
  %46 = load i32, i32* @mmRLC_LB_PARAMS, align 4
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @WREG32_SOC15(i32 %45, i32 0, i32 %46, i32 %47)
  %49 = load i32, i32* @GC, align 4
  %50 = load i32, i32* @mmRLC_GPM_GENERAL_7, align 4
  %51 = call i32 @RREG32_SOC15(i32 %49, i32 0, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 65535
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, 12582912
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* @GC, align 4
  %57 = load i32, i32* @mmRLC_GPM_GENERAL_7, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @WREG32_SOC15(i32 %56, i32 0, i32 %57, i32 %58)
  %60 = load i32, i32* @RLC_LB_CNTL__LB_CNT_SPIM_ACTIVE_MASK, align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @RLC_LB_CNTL, align 4
  %63 = load i32, i32* @CU_MASK_USED_OFF_HYST, align 4
  %64 = call i32 @REG_SET_FIELD(i32 %61, i32 %62, i32 %63, i32 9)
  %65 = load i32, i32* %3, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @RLC_LB_CNTL, align 4
  %69 = load i32, i32* @RESERVED, align 4
  %70 = call i32 @REG_SET_FIELD(i32 %67, i32 %68, i32 %69, i32 524288)
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  %73 = load i32, i32* @GC, align 4
  %74 = load i32, i32* @mmRLC_LB_CNTL, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @WREG32_SOC15(i32 %73, i32 0, i32 %74, i32 %75)
  %77 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %78 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %81 = call i32 @gfx_v9_0_init_always_on_cu_mask(%struct.amdgpu_device* %80)
  ret void
}

declare dso_local i32 @WREG32_SOC15(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @gfx_v9_0_select_se_sh(%struct.amdgpu_device*, i32, i32, i32) #1

declare dso_local i32 @REG_SET_FIELD(i32, i32, i32, i32) #1

declare dso_local i32 @RREG32_SOC15(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @gfx_v9_0_init_always_on_cu_mask(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
