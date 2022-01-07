; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_i9xx_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.intel_panel, %struct.TYPE_3__ }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@BLC_PWM_CTL = common dso_local global i32 0, align 4
@BLM_LEGACY_MODE = common dso_local global i32 0, align 4
@BLM_POLARITY_PNV = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @i9xx_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %11 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %6, align 8
  %15 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %16 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %15, i32 0, i32 0
  store %struct.intel_panel* %16, %struct.intel_panel** %7, align 8
  %17 = load i32, i32* @BLC_PWM_CTL, align 4
  %18 = call i32 @I915_READ(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %20 = call i64 @IS_GEN(%struct.drm_i915_private* %19, i32 2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %2
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %24 = call i64 @IS_I915GM(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %28 = call i64 @IS_I945GM(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %26, %22, %2
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @BLM_LEGACY_MODE, align 4
  %33 = and i32 %31, %32
  %34 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %35 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %30, %26
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %39 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BLM_POLARITY_PNV, align 4
  %44 = and i32 %42, %43
  %45 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %46 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  br label %48

48:                                               ; preds = %41, %37
  %49 = load i32, i32* %8, align 4
  %50 = ashr i32 %49, 17
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %55 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %48
  %60 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %61 = call i32 @get_backlight_max_vbt(%struct.intel_connector* %60)
  %62 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %63 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 4
  %65 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %66 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %59, %48
  %71 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %72 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %121

79:                                               ; preds = %70
  %80 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %81 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %87 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 255
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %85, %79
  %92 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %93 = call i32 @get_backlight_min_vbt(%struct.intel_connector* %92)
  %94 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %95 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  store i32 %93, i32* %96, align 4
  %97 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %98 = call i32 @i9xx_get_backlight(%struct.intel_connector* %97)
  store i32 %98, i32* %9, align 4
  %99 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %104 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %108 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @clamp(i32 %102, i32 %106, i32 %110)
  %112 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %113 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %119 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 3
  store i32 %117, i32* %120, align 4
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %91, %76
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

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
