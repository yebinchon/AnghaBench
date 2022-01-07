; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_read_disabled_bios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si.c_si_read_disabled_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@R600_BUS_CNTL = common dso_local global i32 0, align 4
@AVIVO_D1VGA_CONTROL = common dso_local global i32 0, align 4
@AVIVO_D2VGA_CONTROL = common dso_local global i32 0, align 4
@VGA_RENDER_CONTROL = common dso_local global i32 0, align 4
@R600_ROM_CNTL = common dso_local global i32 0, align 4
@R600_BIOS_ROM_DIS = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_MODE_ENABLE = common dso_local global i32 0, align 4
@AVIVO_DVGA_CONTROL_TIMING_SELECT = common dso_local global i32 0, align 4
@C_000300_VGA_VSTATUS_CNTL = common dso_local global i32 0, align 4
@R600_SCK_OVERWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_read_disabled_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_read_disabled_bios(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @R600_BUS_CNTL, align 4
  %10 = call i32 @RREG32(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %18 = call i32 @RREG32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %20 = call i32 @RREG32(i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %22 = call i32 @RREG32(i32 %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %16, %1
  %24 = load i32, i32* @R600_ROM_CNTL, align 4
  %25 = call i32 @RREG32(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* @R600_BUS_CNTL, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @R600_BIOS_ROM_DIS, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = call i32 @WREG32(i32 %26, i32 %30)
  %32 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %33 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %23
  %38 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %41 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = call i32 @WREG32(i32 %38, i32 %44)
  %46 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @AVIVO_DVGA_CONTROL_MODE_ENABLE, align 4
  %49 = load i32, i32* @AVIVO_DVGA_CONTROL_TIMING_SELECT, align 4
  %50 = or i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = and i32 %47, %51
  %53 = call i32 @WREG32(i32 %46, i32 %52)
  %54 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @C_000300_VGA_VSTATUS_CNTL, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @WREG32(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %37, %23
  %60 = load i32, i32* @R600_ROM_CNTL, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @R600_SCK_OVERWRITE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @WREG32(i32 %60, i32 %63)
  %65 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %66 = call i32 @amdgpu_read_bios(%struct.amdgpu_device* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* @R600_BUS_CNTL, align 4
  %68 = load i32, i32* %3, align 4
  %69 = call i32 @WREG32(i32 %67, i32 %68)
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %71 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %59
  %76 = load i32, i32* @AVIVO_D1VGA_CONTROL, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @WREG32(i32 %76, i32 %77)
  %79 = load i32, i32* @AVIVO_D2VGA_CONTROL, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @WREG32(i32 %79, i32 %80)
  %82 = load i32, i32* @VGA_RENDER_CONTROL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @WREG32(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %75, %59
  %86 = load i32, i32* @R600_ROM_CNTL, align 4
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @WREG32(i32 %86, i32 %87)
  %89 = load i32, i32* %8, align 4
  ret i32 %89
}

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @amdgpu_read_bios(%struct.amdgpu_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
