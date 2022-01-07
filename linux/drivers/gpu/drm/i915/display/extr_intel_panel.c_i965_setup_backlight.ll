; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i965_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_CTL2 = common dso_local global i32 0, align 4
@BLM_COMBINATION_MODE = common dso_local global i32 0, align 4
@BLM_POLARITY_I965 = common dso_local global i32 0, align 4
@BLC_PWM_CTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @i965_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i965_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.drm_i915_private* @to_i915(i32 %14)
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %6, align 8
  %16 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %17 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %16, i32 0, i32 0
  store %struct.intel_panel* %17, %struct.intel_panel** %7, align 8
  %18 = load i32, i32* @BLC_PWM_CTL2, align 4
  %19 = call i32 @I915_READ(i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @BLM_COMBINATION_MODE, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %24 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @BLM_POLARITY_I965, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %30 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @BLC_PWM_CTL, align 4
  %33 = call i32 @I915_READ(i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, 16
  %36 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %40 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %2
  %45 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %46 = call i32 @get_backlight_max_vbt(%struct.intel_connector* %45)
  %47 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %48 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %44, %2
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %50
  %60 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %61 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %67 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 255
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %73 = call i32 @get_backlight_min_vbt(%struct.intel_connector* %72)
  %74 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %75 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 4
  store i32 %73, i32* %76, align 4
  %77 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %78 = call i32 @i9xx_get_backlight(%struct.intel_connector* %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %84 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %88 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @clamp(i32 %82, i32 %86, i32 %90)
  %92 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %93 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %97 = and i32 %95, %96
  %98 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %99 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %71, %56
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @get_backlight_max_vbt(%struct.intel_connector*) #1

declare dso_local i32 @get_backlight_min_vbt(%struct.intel_connector*) #1

declare dso_local i32 @i9xx_get_backlight(%struct.intel_connector*) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.intel_connector*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
