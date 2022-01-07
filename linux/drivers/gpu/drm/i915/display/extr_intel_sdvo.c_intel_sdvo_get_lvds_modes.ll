; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_lvds_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_lvds_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.intel_sdvo = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@DRM_MODE_TYPE_PREFERRED = common dso_local global i32 0, align 4
@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_sdvo_get_lvds_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_sdvo_get_lvds_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_sdvo*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %7 = call %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector* %6)
  store %struct.intel_sdvo* %7, %struct.intel_sdvo** %3, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %4, align 8
  %12 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %13 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %17 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %21 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %46

25:                                               ; preds = %1
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %28, i32* %32)
  store %struct.drm_display_mode* %33, %struct.drm_display_mode** %5, align 8
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = icmp ne %struct.drm_display_mode* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load i32, i32* @DRM_MODE_TYPE_PREFERRED, align 4
  %38 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %44 = call i32 @drm_mode_probed_add(%struct.drm_connector* %42, %struct.drm_display_mode* %43)
  br label %45

45:                                               ; preds = %36, %25
  br label %46

46:                                               ; preds = %45, %1
  %47 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %48 = load %struct.intel_sdvo*, %struct.intel_sdvo** %3, align 8
  %49 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %48, i32 0, i32 0
  %50 = call i32 @intel_ddc_get_modes(%struct.drm_connector* %47, i32* %49)
  ret void
}

declare dso_local %struct.intel_sdvo* @intel_attached_sdvo(%struct.drm_connector*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32*) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_ddc_get_modes(%struct.drm_connector*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
