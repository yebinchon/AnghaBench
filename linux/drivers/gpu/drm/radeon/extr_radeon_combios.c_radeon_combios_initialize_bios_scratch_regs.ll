; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_initialize_bios_scratch_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_combios.c_radeon_combios_initialize_bios_scratch_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.radeon_device* }
%struct.radeon_device = type { i32 }

@RADEON_BIOS_0_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_6_SCRATCH = common dso_local global i32 0, align 4
@RADEON_BIOS_7_SCRATCH = common dso_local global i32 0, align 4
@RADEON_DRIVER_BRIGHTNESS_EN = common dso_local global i32 0, align 4
@RADEON_DISPLAY_SWITCHING_DIS = common dso_local global i32 0, align 4
@RADEON_ACC_MODE_CHANGE = common dso_local global i32 0, align 4
@RADEON_DRV_LOADED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_combios_initialize_bios_scratch_regs(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %7 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %8 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %7, i32 0, i32 0
  %9 = load %struct.radeon_device*, %struct.radeon_device** %8, align 8
  store %struct.radeon_device* %9, %struct.radeon_device** %3, align 8
  %10 = load i32, i32* @RADEON_BIOS_0_SCRATCH, align 4
  %11 = call i32 @RREG32(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %13 = call i32 @RREG32(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @RADEON_BIOS_7_SCRATCH, align 4
  %15 = call i32 @RREG32(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @RADEON_DRIVER_BRIGHTNESS_EN, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @RADEON_DISPLAY_SWITCHING_DIS, align 4
  %21 = load i32, i32* @RADEON_ACC_MODE_CHANGE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @RADEON_DRV_LOADED, align 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @RADEON_BIOS_0_SCRATCH, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @WREG32(i32 %28, i32 %29)
  %31 = load i32, i32* @RADEON_BIOS_6_SCRATCH, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @WREG32(i32 %31, i32 %32)
  %34 = load i32, i32* @RADEON_BIOS_7_SCRATCH, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @WREG32(i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
