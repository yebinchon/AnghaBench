; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_vlv_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_vlv_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@PIPE_A = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BLM_POLARITY_I965 = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @vlv_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
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
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PIPE_A, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @PIPE_B, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @VLV_BLC_PWM_CTL2(i32 %34)
  %36 = call i32 @I915_READ(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BLM_POLARITY_I965, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %41 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @VLV_BLC_PWM_CTL(i32 %43)
  %45 = call i32 @I915_READ(i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = ashr i32 %46, 16
  %48 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %49 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %33
  %57 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %58 = call i32 @get_backlight_max_vbt(%struct.intel_connector* %57)
  %59 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %60 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %33
  %63 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %64 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %102

71:                                               ; preds = %62
  %72 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %73 = call i32 @get_backlight_min_vbt(%struct.intel_connector* %72)
  %74 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %75 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 3
  store i32 %73, i32* %76, align 4
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @_vlv_get_backlight(%struct.drm_i915_private* %77, i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %80, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %85 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %89 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @clamp(i32 %83, i32 %87, i32 %91)
  %93 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %94 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 4
  store i32 %92, i32* %95, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %98 = and i32 %96, %97
  %99 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %100 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 4
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %71, %68, %30
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @VLV_BLC_PWM_CTL2(i32) #1

declare dso_local i32 @VLV_BLC_PWM_CTL(i32) #1

declare dso_local i32 @get_backlight_max_vbt(%struct.intel_connector*) #1

declare dso_local i32 @get_backlight_min_vbt(%struct.intel_connector*) #1

declare dso_local i32 @_vlv_get_backlight(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.intel_connector*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
