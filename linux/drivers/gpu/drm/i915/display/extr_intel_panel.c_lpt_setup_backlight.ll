; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_lpt_setup_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_lpt_setup_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_connector = type { %struct.TYPE_3__, %struct.intel_panel }
%struct.TYPE_3__ = type { i32, i32 }
%struct.intel_panel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.drm_i915_private = type { i32 }

@SOUTH_CHICKEN2 = common dso_local global i32 0, align 4
@LPT_PWM_GRANULARITY = common dso_local global i32 0, align 4
@SOUTH_CHICKEN1 = common dso_local global i32 0, align 4
@SPT_PWM_GRANULARITY = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL1 = common dso_local global i32 0, align 4
@BLM_PCH_POLARITY = common dso_local global i32 0, align 4
@BLC_PWM_PCH_CTL2 = common dso_local global i32 0, align 4
@BLC_PWM_CPU_CTL2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BLM_PCH_PWM_ENABLE = common dso_local global i32 0, align 4
@BLM_PCH_OVERRIDE_ENABLE = common dso_local global i32 0, align 4
@BLM_PWM_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"CPU backlight register was enabled, switching to PCH override\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_connector*, i32)* @lpt_setup_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpt_setup_backlight(%struct.intel_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_panel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.intel_connector* %0, %struct.intel_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %15 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.drm_i915_private* @to_i915(i32 %17)
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %6, align 8
  %19 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %20 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %19, i32 0, i32 1
  store %struct.intel_panel* %20, %struct.intel_panel** %7, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %22 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32, i32* @SOUTH_CHICKEN2, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @LPT_PWM_GRANULARITY, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %12, align 4
  br label %34

29:                                               ; preds = %2
  %30 = load i32, i32* @SOUTH_CHICKEN1, align 4
  %31 = call i32 @I915_READ(i32 %30)
  %32 = load i32, i32* @SPT_PWM_GRANULARITY, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %37 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @BLM_PCH_POLARITY, align 4
  %43 = and i32 %41, %42
  %44 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %45 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @BLC_PWM_PCH_CTL2, align 4
  %48 = call i32 @I915_READ(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = ashr i32 %49, 16
  %51 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %52 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %55 = call i32 @I915_READ(i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %57 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %34
  %62 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %63 = call i32 @get_backlight_max_vbt(%struct.intel_connector* %62)
  %64 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %65 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %61, %34
  %68 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %69 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENODEV, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %160

76:                                               ; preds = %67
  %77 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %78 = call i32 @get_backlight_min_vbt(%struct.intel_connector* %77)
  %79 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %80 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 5
  store i32 %78, i32* %81, align 4
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @BLM_PCH_PWM_ENABLE, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %86 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %89 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %76
  %94 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %95 = call i64 @HAS_PCH_LPT(%struct.drm_i915_private* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @BLM_PCH_OVERRIDE_ENABLE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br label %107

107:                                              ; preds = %102, %97, %93, %76
  %108 = phi i1 [ false, %97 ], [ false, %93 ], [ false, %76 ], [ %106, %102 ]
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %114 = call i32 @pch_get_backlight(%struct.intel_connector* %113)
  store i32 %114, i32* %11, align 4
  br label %118

115:                                              ; preds = %107
  %116 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %117 = call i32 @lpt_get_backlight(%struct.intel_connector* %116)
  store i32 %117, i32* %11, align 4
  br label %118

118:                                              ; preds = %115, %112
  %119 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %120 = load i32, i32* %11, align 4
  %121 = call i32 @intel_panel_compute_brightness(%struct.intel_connector* %119, i32 %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %124 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %128 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @clamp(i32 %122, i32 %126, i32 %130)
  %132 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %133 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 4
  store i32 %131, i32* %134, align 4
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %159

137:                                              ; preds = %118
  %138 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %139 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %140 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.intel_panel*, %struct.intel_panel** %7, align 8
  %144 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @lpt_set_backlight(i32 %142, i32 %146)
  %148 = load i32, i32* @BLC_PWM_PCH_CTL1, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @BLM_PCH_OVERRIDE_ENABLE, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @I915_WRITE(i32 %148, i32 %151)
  %153 = load i32, i32* @BLC_PWM_CPU_CTL2, align 4
  %154 = load i32, i32* %8, align 4
  %155 = load i32, i32* @BLM_PWM_ENABLE, align 4
  %156 = xor i32 %155, -1
  %157 = and i32 %154, %156
  %158 = call i32 @I915_WRITE(i32 %153, i32 %157)
  br label %159

159:                                              ; preds = %137, %118
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %73
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i64 @HAS_PCH_LPT(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @get_backlight_max_vbt(%struct.intel_connector*) #1

declare dso_local i32 @get_backlight_min_vbt(%struct.intel_connector*) #1

declare dso_local i32 @pch_get_backlight(%struct.intel_connector*) #1

declare dso_local i32 @lpt_get_backlight(%struct.intel_connector*) #1

declare dso_local i32 @intel_panel_compute_brightness(%struct.intel_connector*, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local i32 @lpt_set_backlight(i32, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
