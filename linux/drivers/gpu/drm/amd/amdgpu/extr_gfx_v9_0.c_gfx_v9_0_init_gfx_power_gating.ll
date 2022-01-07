; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_gfx_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_init_gfx_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@AMD_PG_SUPPORT_GFX_PG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_SMG = common dso_local global i32 0, align 4
@AMD_PG_SUPPORT_GFX_DMG = common dso_local global i32 0, align 4
@GC = common dso_local global i32 0, align 4
@mmCP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK = common dso_local global i32 0, align 4
@CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT = common dso_local global i32 0, align 4
@RLC_PG_DELAY__POWER_UP_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_PG_DELAY__POWER_DOWN_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_PG_DELAY__CMD_PROPAGATE_DELAY__SHIFT = common dso_local global i32 0, align 4
@RLC_PG_DELAY__MEM_SLEEP_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY_2 = common dso_local global i32 0, align 4
@RLC_PG_DELAY_2__SERDES_CMD_DELAY_MASK = common dso_local global i32 0, align 4
@RLC_PG_DELAY_2__SERDES_CMD_DELAY__SHIFT = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY_3 = common dso_local global i32 0, align 4
@RLC_PG_DELAY_3__CGCG_ACTIVE_BEFORE_CGPG_MASK = common dso_local global i32 0, align 4
@RLC_PG_DELAY_3__CGCG_ACTIVE_BEFORE_CGPG__SHIFT = common dso_local global i32 0, align 4
@mmRLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_init_gfx_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_init_gfx_power_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %5 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @AMD_PG_SUPPORT_GFX_PG, align 4
  %8 = load i32, i32* @AMD_PG_SUPPORT_GFX_SMG, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @AMD_PG_SUPPORT_GFX_DMG, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %6, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %106

14:                                               ; preds = %1
  %15 = load i32, i32* @GC, align 4
  %16 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %17 = call i32 @SOC15_REG_OFFSET(i32 %15, i32 0, i32 %16)
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @CP_RB_WPTR_POLL_CNTL__IDLE_POLL_COUNT__SHIFT, align 4
  %24 = shl i32 96, %23
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* @GC, align 4
  %28 = load i32, i32* @mmCP_RB_WPTR_POLL_CNTL, align 4
  %29 = call i32 @SOC15_REG_OFFSET(i32 %27, i32 0, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @WREG32(i32 %29, i32 %30)
  store i32 0, i32* %3, align 4
  %32 = load i32, i32* @RLC_PG_DELAY__POWER_UP_DELAY__SHIFT, align 4
  %33 = shl i32 16, %32
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* @RLC_PG_DELAY__POWER_DOWN_DELAY__SHIFT, align 4
  %37 = shl i32 16, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @RLC_PG_DELAY__CMD_PROPAGATE_DELAY__SHIFT, align 4
  %41 = shl i32 16, %40
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @RLC_PG_DELAY__MEM_SLEEP_DELAY__SHIFT, align 4
  %45 = shl i32 64, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  %48 = load i32, i32* @GC, align 4
  %49 = load i32, i32* @mmRLC_PG_DELAY, align 4
  %50 = call i32 @SOC15_REG_OFFSET(i32 %48, i32 0, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @WREG32(i32 %50, i32 %51)
  %53 = load i32, i32* @GC, align 4
  %54 = load i32, i32* @mmRLC_PG_DELAY_2, align 4
  %55 = call i32 @SOC15_REG_OFFSET(i32 %53, i32 0, i32 %54)
  %56 = call i32 @RREG32(i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @RLC_PG_DELAY_2__SERDES_CMD_DELAY_MASK, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* @RLC_PG_DELAY_2__SERDES_CMD_DELAY__SHIFT, align 4
  %62 = shl i32 4, %61
  %63 = load i32, i32* %3, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %3, align 4
  %65 = load i32, i32* @GC, align 4
  %66 = load i32, i32* @mmRLC_PG_DELAY_2, align 4
  %67 = call i32 @SOC15_REG_OFFSET(i32 %65, i32 0, i32 %66)
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load i32, i32* @GC, align 4
  %71 = load i32, i32* @mmRLC_PG_DELAY_3, align 4
  %72 = call i32 @SOC15_REG_OFFSET(i32 %70, i32 0, i32 %71)
  %73 = call i32 @RREG32(i32 %72)
  store i32 %73, i32* %3, align 4
  %74 = load i32, i32* @RLC_PG_DELAY_3__CGCG_ACTIVE_BEFORE_CGPG_MASK, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* @RLC_PG_DELAY_3__CGCG_ACTIVE_BEFORE_CGPG__SHIFT, align 4
  %79 = shl i32 255, %78
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* @GC, align 4
  %83 = load i32, i32* @mmRLC_PG_DELAY_3, align 4
  %84 = call i32 @SOC15_REG_OFFSET(i32 %82, i32 0, i32 %83)
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @WREG32(i32 %84, i32 %85)
  %87 = load i32, i32* @GC, align 4
  %88 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %89 = call i32 @SOC15_REG_OFFSET(i32 %87, i32 0, i32 %88)
  %90 = call i32 @RREG32(i32 %89)
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* @RLC_AUTO_PG_CTRL__GRBM_REG_SAVE_GFX_IDLE_THRESHOLD__SHIFT, align 4
  %96 = shl i32 22000, %95
  %97 = load i32, i32* %3, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* @GC, align 4
  %100 = load i32, i32* @mmRLC_AUTO_PG_CTRL, align 4
  %101 = call i32 @SOC15_REG_OFFSET(i32 %99, i32 0, i32 %100)
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @WREG32(i32 %101, i32 %102)
  %104 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %105 = call i32 @pwr_10_0_gfxip_control_over_cgpg(%struct.amdgpu_device* %104, i32 1)
  br label %106

106:                                              ; preds = %14, %1
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @SOC15_REG_OFFSET(i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @pwr_10_0_gfxip_control_over_cgpg(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
