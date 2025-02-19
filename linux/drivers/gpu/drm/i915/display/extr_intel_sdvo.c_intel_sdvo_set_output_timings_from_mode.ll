; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_output_timings_from_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_set_output_timings_from_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.intel_sdvo_dtd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.drm_display_mode*)* @intel_sdvo_set_output_timings_from_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_set_output_timings_from_mode(%struct.intel_sdvo* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sdvo*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.intel_sdvo_dtd, align 4
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %7 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %8 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %9 = getelementptr inbounds %struct.intel_sdvo, %struct.intel_sdvo* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @intel_sdvo_set_target_output(%struct.intel_sdvo* %7, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = call i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd* %6, %struct.drm_display_mode* %15)
  %17 = load %struct.intel_sdvo*, %struct.intel_sdvo** %4, align 8
  %18 = call i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo* %17, %struct.intel_sdvo_dtd* %6)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20, %13
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @intel_sdvo_set_target_output(%struct.intel_sdvo*, i32) #1

declare dso_local i32 @intel_sdvo_get_dtd_from_mode(%struct.intel_sdvo_dtd*, %struct.drm_display_mode*) #1

declare dso_local i32 @intel_sdvo_set_output_timing(%struct.intel_sdvo*, %struct.intel_sdvo_dtd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
