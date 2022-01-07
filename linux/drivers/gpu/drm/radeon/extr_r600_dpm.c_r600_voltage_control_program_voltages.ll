; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_voltage_control_program_voltages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_voltage_control_program_voltages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CTXSW_VID_LOWER_GPIO_CNTL = common dso_local global i64 0, align 8
@VID_UPPER_GPIO_CNTL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_voltage_control_program_voltages(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 3, %10
  %12 = sub i32 3, %11
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* @CTXSW_VID_LOWER_GPIO_CNTL, align 8
  %14 = load i32, i32* %9, align 4
  %15 = mul nsw i32 %14, 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @WREG32(i64 %17, i32 %18)
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 3, %20
  %22 = shl i32 7, %21
  store i32 %22, i32* %8, align 4
  %23 = load i64, i64* @VID_UPPER_GPIO_CNTL, align 8
  %24 = call i32 @RREG32(i64 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %9, align 4
  %31 = mul nsw i32 3, %30
  %32 = sub nsw i32 32, %31
  %33 = ashr i32 %29, %32
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %28, %35
  store i32 %36, i32* %7, align 4
  %37 = load i64, i64* @VID_UPPER_GPIO_CNTL, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @WREG32(i64 %37, i32 %38)
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @RREG32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
