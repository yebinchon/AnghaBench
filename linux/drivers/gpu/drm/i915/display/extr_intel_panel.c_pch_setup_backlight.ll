; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_pch_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_POLARITY = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @pch_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.drm_i915_private* @to_i915(i32 %15)
  store %struct.drm_i915_private* %16, %struct.drm_i915_private** %6, align 8
  %17 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %18 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %17, i32 0, i32 0
  store %struct.intel_panel* %18, %struct.intel_panel** %7, align 8
  %19 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %20 = call i32 @I915_READ(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @BLM_PCH_POLARITY, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %25 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %28 = call i32 @I915_READ(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = ashr i32 %29, 16
  %31 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %32 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %35 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %2
  %40 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %41 = call i32 @get_backlight_max_vbt(%struct.intel_connector* %40)
  %42 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %43 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %2
  %46 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %47 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %95

54:                                               ; preds = %45
  %55 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %56 = call i32 @get_backlight_min_vbt(%struct.intel_connector* %55)
  %57 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %58 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %61 = call i32 @pch_get_backlight(%struct.intel_connector* %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %67 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %71 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @clamp(i32 %65, i32 %69, i32 %73)
  %75 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %76 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 4
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %79 = call i32 @I915_READ(i32 %78)
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %54
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %84, %54
  %90 = phi i1 [ false, %54 ], [ %88, %84 ]
  %91 = zext i1 %90 to i32
  %92 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %93 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 4
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %89, %51
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @get_backlight_max_vbt(%struct.intel_connector*) #1

declare dso_local i32 @get_backlight_min_vbt(%struct.intel_connector*) #1

declare dso_local i32 @pch_get_backlight(%struct.intel_connector*) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.intel_connector*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
