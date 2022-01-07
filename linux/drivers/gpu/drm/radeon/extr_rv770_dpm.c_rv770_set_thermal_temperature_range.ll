; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_set_thermal_temperature_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_set_thermal_temperature_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"invalid thermal range: %d - %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CG_THERMAL_INT = common dso_local global i32 0, align 4
@DIG_THERM_INTH_MASK = common dso_local global i32 0, align 4
@DIG_THERM_INTL_MASK = common dso_local global i32 0, align 4
@CG_THERMAL_CTRL = common dso_local global i32 0, align 4
@DIG_THERM_DPM_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32, i32)* @rv770_set_thermal_temperature_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv770_set_thermal_temperature_range(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 255000, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %13, %3
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %9, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %65

31:                                               ; preds = %21
  %32 = load i32, i32* @CG_THERMAL_INT, align 4
  %33 = load i32, i32* %9, align 4
  %34 = sdiv i32 %33, 1000
  %35 = call i32 @DIG_THERM_INTH(i32 %34)
  %36 = load i32, i32* @DIG_THERM_INTH_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @WREG32_P(i32 %32, i32 %35, i32 %37)
  %39 = load i32, i32* @CG_THERMAL_INT, align 4
  %40 = load i32, i32* %8, align 4
  %41 = sdiv i32 %40, 1000
  %42 = call i32 @DIG_THERM_INTL(i32 %41)
  %43 = load i32, i32* @DIG_THERM_INTL_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @WREG32_P(i32 %39, i32 %42, i32 %44)
  %46 = load i32, i32* @CG_THERMAL_CTRL, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sdiv i32 %47, 1000
  %49 = call i32 @DIG_THERM_DPM(i32 %48)
  %50 = load i32, i32* @DIG_THERM_DPM_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = call i32 @WREG32_P(i32 %46, i32 %49, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %55 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %61 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %59, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %31, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @DRM_ERROR(i8*, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @DIG_THERM_INTH(i32) #1

declare dso_local i32 @DIG_THERM_INTL(i32) #1

declare dso_local i32 @DIG_THERM_DPM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
