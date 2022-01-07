; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v8_0.c_gfx_v8_0_init_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@CP_RB_WPTR_POLL_CNTL = common dso_local global i32 0, align 4
@IDLE_POLL_COUNT = common dso_local global i32 0, align 4
@RLC_PG_DELAY = common dso_local global i32 0, align 4
@POWER_UP_DELAY = common dso_local global i32 0, align 4
@POWER_DOWN_DELAY = common dso_local global i32 0, align 4
@CMD_PROPAGATE_DELAY = common dso_local global i32 0, align 4
@MEM_SLEEP_DELAY = common dso_local global i32 0, align 4
@mmRLC_PG_DELAY = common dso_local global i32 0, align 4
@RLC_PG_DELAY_2 = common dso_local global i32 0, align 4
@SERDES_CMD_DELAY = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@GRBM_REG_SAVE_GFX_IDLE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v8_0_init_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v8_0_init_power_gating(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i64, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %4 = load i32, i32* @CP_RB_WPTR_POLL_CNTL, align 4
  %5 = load i32, i32* @IDLE_POLL_COUNT, align 4
  %6 = call i32 @WREG32_FIELD(i32 %4, i32 %5, i32 96)
  %7 = load i32, i32* @RLC_PG_DELAY, align 4
  %8 = load i32, i32* @POWER_UP_DELAY, align 4
  %9 = call i64 @REG_SET_FIELD(i64 0, i32 %7, i32 %8, i32 16)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* @RLC_PG_DELAY, align 4
  %12 = load i32, i32* @POWER_DOWN_DELAY, align 4
  %13 = call i64 @REG_SET_FIELD(i64 %10, i32 %11, i32 %12, i32 16)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i32, i32* @RLC_PG_DELAY, align 4
  %16 = load i32, i32* @CMD_PROPAGATE_DELAY, align 4
  %17 = call i64 @REG_SET_FIELD(i64 %14, i32 %15, i32 %16, i32 16)
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @RLC_PG_DELAY, align 4
  %20 = load i32, i32* @MEM_SLEEP_DELAY, align 4
  %21 = call i64 @REG_SET_FIELD(i64 %18, i32 %19, i32 %20, i32 16)
  store i64 %21, i64* %3, align 8
  %22 = load i32, i32* @mmRLC_PG_DELAY, align 4
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @WREG32(i32 %22, i64 %23)
  %25 = load i32, i32* @RLC_PG_DELAY_2, align 4
  %26 = load i32, i32* @SERDES_CMD_DELAY, align 4
  %27 = call i32 @WREG32_FIELD(i32 %25, i32 %26, i32 3)
  %28 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %29 = load i32, i32* @GRBM_REG_SAVE_GFX_IDLE_THRESHOLD, align 4
  %30 = call i32 @WREG32_FIELD(i32 %28, i32 %29, i32 22000)
  ret void
}

declare dso_local i32 @WREG32_FIELD(i32, i32, i32) #1

declare dso_local i64 @REG_SET_FIELD(i64, i32, i32, i32) #1

declare dso_local i32 @WREG32(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
