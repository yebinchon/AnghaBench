; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_vbt_fixed_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c_intel_panel_vbt_fixed_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_connector = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.drm_display_info, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.drm_display_info = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"[CONNECTOR:%d:%s] using mode from VBT: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_display_mode* @intel_panel_vbt_fixed_mode(%struct.intel_connector* %0) #0 {
  %2 = alloca %struct.drm_display_mode*, align 8
  %3 = alloca %struct.intel_connector*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_connector* %0, %struct.intel_connector** %3, align 8
  %7 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %8 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %13 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  store %struct.drm_display_info* %14, %struct.drm_display_info** %5, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %61

21:                                               ; preds = %1
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 1
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.drm_display_mode* @drm_mode_duplicate(i32* %23, i32 %27)
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %6, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %30 = icmp ne %struct.drm_display_mode* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  store %struct.drm_display_mode* null, %struct.drm_display_mode** %2, align 8
  br label %61

32:                                               ; preds = %21
  %33 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %39 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.intel_connector*, %struct.intel_connector** %3, align 8
  %44 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %49 = call i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode* %48)
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %54 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %56 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %59 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %60, %struct.drm_display_mode** %2, align 8
  br label %61

61:                                               ; preds = %32, %31, %20
  %62 = load %struct.drm_display_mode*, %struct.drm_display_mode** %2, align 8
  ret %struct.drm_display_mode* %62
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @drm_mode_debug_printmodeline(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
