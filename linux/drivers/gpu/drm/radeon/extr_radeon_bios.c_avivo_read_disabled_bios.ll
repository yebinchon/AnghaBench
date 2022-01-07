; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_avivo_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_bios.c_avivo_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@RADEON_SEPROM_CNTL1 = common dso_local global i32 0, align 4
@RADEON_VIPH_CONTROL = common dso_local global i32 0, align 4
@RV370_BUS_CNTL = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D2VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@RADEON_GPIOPAD_A = common dso_local global i32 0, align 4
@RADEON_GPIOPAD_EN = common dso_local global i32 0, align 4
@RADEON_GPIOPAD_MASK = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_MASK = common dso_local global i32 0, align 4
@RADEON_SCK_PRESCALE_SHIFT = common dso_local global i32 0, align 4
@RADEON_VIPH_EN = common dso_local global i32 0, align 4
@RV370_BUS_BIOS_DIS_ROM = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_MODE_ENABLE = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_TIMING_SELECT = common dso_local global i32 0, align 4
@AVIVO_VGA_VSTATUS_CNTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @avivo_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avivo_read_disabled_bios(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %13 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %14 = call i32 @RREG32(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %16 = call i32 @RREG32(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @RV370_BUS_CNTL, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %22 = call i32 @RREG32(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %24 = call i32 @RREG32(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %26 = call i32 @RREG32(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* @RADEON_GPIOPAD_EN, align 4
  %28 = call i32 @RREG32(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %30 = call i32 @RREG32(i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @RADEON_SCK_PRESCALE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = load i32, i32* @RADEON_SCK_PRESCALE_SHIFT, align 4
  %37 = shl i32 12, %36
  %38 = or i32 %35, %37
  %39 = call i32 @WREG32(i32 %31, i32 %38)
  %40 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %41 = call i32 @WREG32(i32 %40, i32 0)
  %42 = load i32, i32* @RADEON_GPIOPAD_EN, align 4
  %43 = call i32 @WREG32(i32 %42, i32 0)
  %44 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %45 = call i32 @WREG32(i32 %44, i32 0)
  %46 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @RADEON_VIPH_EN, align 4
  %49 = xor i32 %48, -1
  %50 = and i32 %47, %49
  %51 = call i32 @WREG32(i32 %46, i32 %50)
  %52 = load i32, i32* @RV370_BUS_CNTL, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @RV370_BUS_BIOS_DIS_ROM, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @WREG32(i32 %52, i32 %56)
  %58 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %61 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %62 = or i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = call i32 @WREG32(i32 %58, i32 %64)
  %66 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %69 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = and i32 %67, %71
  %73 = call i32 @WREG32(i32 %66, i32 %72)
  %74 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @AVIVO_VGA_VSTATUS_CNTL_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @WREG32(i32 %74, i32 %78)
  %80 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %81 = call i32 @radeon_read_bios(%struct.radeon_device* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* @RADEON_SEPROM_CNTL1, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  %85 = load i32, i32* @RADEON_VIPH_CONTROL, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @WREG32(i32 %85, i32 %86)
  %88 = load i32, i32* @RV370_BUS_CNTL, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @WREG32(i32 %88, i32 %89)
  %91 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @WREG32(i32 %91, i32 %92)
  %94 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @WREG32(i32 %94, i32 %95)
  %97 = load i32, i32* @AVIVO_VGA_RENDER_CONTROL, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @WREG32(i32 %97, i32 %98)
  %100 = load i32, i32* @RADEON_GPIOPAD_A, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @WREG32(i32 %100, i32 %101)
  %103 = load i32, i32* @RADEON_GPIOPAD_EN, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @WREG32(i32 %103, i32 %104)
  %106 = load i32, i32* @RADEON_GPIOPAD_MASK, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @WREG32(i32 %106, i32 %107)
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @radeon_read_bios(%struct.radeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
