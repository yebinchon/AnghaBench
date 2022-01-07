; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pwm_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pwm_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32*, i64 }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"pwm_backlight\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to own the pwm chip\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CRC_PMIC_PWM_PERIOD_NS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to configure the pwm chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @pwm_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %6, align 8
  %13 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %14 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %13, i32 0, i32 0
  store %struct.intel_panel* %14, %struct.intel_panel** %7, align 8
  %15 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %16 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @pwm_get(i32 %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %20 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  store i32* %18, i32** %21, align 8
  %22 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %23 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @IS_ERR(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %31 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %88

35:                                               ; preds = %2
  %36 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @pwm_apply_args(i32* %39)
  %41 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %42 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @CRC_PMIC_PWM_PERIOD_NS, align 4
  %46 = load i32, i32* @CRC_PMIC_PWM_PERIOD_NS, align 4
  %47 = call i32 @pwm_config(i32* %44, i32 %45, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %35
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %53 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @pwm_put(i32* %55)
  %57 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %58 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32* null, i32** %59, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %88

61:                                               ; preds = %35
  %62 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %63 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %66 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 100, i32* %67, align 8
  %68 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %69 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @pwm_get_duty_cycle(i32* %71)
  %73 = mul nsw i32 %72, 100
  %74 = load i32, i32* @CRC_PMIC_PWM_PERIOD_NS, align 4
  %75 = call i64 @DIV_ROUND_UP(i32 %73, i32 %74)
  %76 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %77 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i64 %75, i64* %78, align 8
  %79 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %80 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = zext i1 %83 to i32
  %85 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %86 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %61, %50, %28
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32* @pwm_get(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @pwm_apply_args(i32*) #1

declare dso_local i32 @pwm_config(i32*, i32, i32) #1

declare dso_local i32 @pwm_put(i32*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pwm_get_duty_cycle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
