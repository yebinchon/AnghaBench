; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dsi.c_intel_dsi_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.intel_connector = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_display_mode = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"no fixed mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"drm_mode_duplicate failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_dsi_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_connector*, align 8
  %4 = alloca %struct.intel_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %3, align 8
  %6 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %7 = call %struct.intel_connector* @to_intel_connector(%struct.drm_connector* %6)
  store %struct.intel_connector* %7, %struct.intel_connector** %4, align 8
  %8 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %10 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %18 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_connector*, %struct.intel_connector** %4, align 8
  %21 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.drm_display_mode* @drm_mode_duplicate(i32 %19, i32 %23)
  store %struct.drm_display_mode* %24, %struct.drm_display_mode** %5, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %26 = icmp ne %struct.drm_display_mode* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %16
  %28 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %16
  %30 = load %struct.drm_connector*, %struct.drm_connector** %3, align 8
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %32 = call i32 @drm_mode_probed_add(%struct.drm_connector* %30, %struct.drm_display_mode* %31)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %27, %14
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.intel_connector* @to_intel_connector(%struct.drm_connector*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.drm_display_mode* @drm_mode_duplicate(i32, i32) #1

declare dso_local i32 @drm_mode_probed_add(%struct.drm_connector*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
