; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_preferred_input_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_get_preferred_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_connector = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.intel_sdvo_dtd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @intel_sdvo_get_preferred_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_get_preferred_input_mode(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, %struct.drm_display_mode* %2, %struct.drm_display_mode* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_sdvo*, align 8
  %7 = alloca %struct.intel_sdvo_connector*, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca %struct.drm_display_mode*, align 8
  %10 = alloca %struct.intel_sdvo_dtd, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %6, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %7, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %8, align 8
  store %struct.drm_display_mode* %3, %struct.drm_display_mode** %9, align 8
  %11 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %12 = call i32 @intel_sdvo_set_target_input(%struct.intel_sdvo* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

15:                                               ; preds = %4
  %16 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %17 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %7, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %19 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 10
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %23 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo* %16, %struct.intel_sdvo_connector* %17, i32 %21, i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %44

31:                                               ; preds = %15
  %32 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %33 = call i32 @intel_sdvo_get_preferred_input_timing(%struct.intel_sdvo* %32, %struct.intel_sdvo_dtd* %10)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %5, align 4
  br label %44

36:                                               ; preds = %31
  %37 = load %struct.drm_display_mode*, %struct.drm_display_mode** %9, align 8
  %38 = call i32 @intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode* %37, %struct.intel_sdvo_dtd* %10)
  %39 = getelementptr inbounds %struct.intel_sdvo_dtd, %struct.intel_sdvo_dtd* %10, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %43 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  store i32 1, i32* %5, align 4
  br label %44

44:                                               ; preds = %36, %35, %30, %14
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @intel_sdvo_set_target_input(%struct.intel_sdvo*) #1

declare dso_local i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_connector*, i32, i32, i32) #1

declare dso_local i32 @intel_sdvo_get_preferred_input_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

declare dso_local i32 @intel_sdvo_get_mode_from_dtd(%struct.drm_display_mode*, %struct.intel_sdvo_dtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
