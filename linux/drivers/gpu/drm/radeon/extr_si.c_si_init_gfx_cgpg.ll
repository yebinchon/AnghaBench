; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_gfx_cgpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_init_gfx_cgpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@RLC_SAVE_AND_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_PG_CNTL = common dso_local global i32 0, align 4
@GFX_PG_SRC = common dso_local global i32 0, align 4
@RLC_CLEAR_STATE_RESTORE_BASE = common dso_local global i32 0, align 4
@RLC_AUTO_PG_CTRL = common dso_local global i32 0, align 4
@GRBM_REG_SGIT_MASK = common dso_local global i32 0, align 4
@PG_AFTER_GRBM_REG_ST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_init_gfx_cgpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_init_gfx_cgpg(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load i32, i32* @RLC_SAVE_AND_RESTORE_BASE, align 4
  %5 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %6 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 8
  %10 = call i32 @WREG32(i32 %4, i32 %9)
  %11 = load i32, i32* @RLC_PG_CNTL, align 4
  %12 = call i32 @RREG32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @GFX_PG_SRC, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @RLC_PG_CNTL, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @WREG32(i32 %16, i32 %17)
  %19 = load i32, i32* @RLC_CLEAR_STATE_RESTORE_BASE, align 4
  %20 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 8
  %25 = call i32 @WREG32(i32 %19, i32 %24)
  %26 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %27 = call i32 @RREG32(i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @GRBM_REG_SGIT_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = call i32 @GRBM_REG_SGIT(i32 1792)
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* @PG_AFTER_GRBM_REG_ST_MASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* @RLC_AUTO_PG_CTRL, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @WREG32(i32 %39, i32 %40)
  ret void
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @GRBM_REG_SGIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
