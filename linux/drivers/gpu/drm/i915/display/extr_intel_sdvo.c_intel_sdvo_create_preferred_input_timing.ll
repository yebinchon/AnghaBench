; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_create_preferred_input_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_sdvo.c_intel_sdvo_create_preferred_input_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sdvo = type { i32 }
%struct.intel_sdvo_connector = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_display_mode* }
%struct.drm_display_mode = type { i64, i64 }
%struct.intel_sdvo_preferred_input_timing_args = type { i32, i64, i64, i64, i64 }

@SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_sdvo*, %struct.intel_sdvo_connector*, i64, i64, i64)* @intel_sdvo_create_preferred_input_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_sdvo_create_preferred_input_timing(%struct.intel_sdvo* %0, %struct.intel_sdvo_connector* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.intel_sdvo*, align 8
  %7 = alloca %struct.intel_sdvo_connector*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.intel_sdvo_preferred_input_timing_args, align 8
  %12 = alloca %struct.drm_display_mode*, align 8
  store %struct.intel_sdvo* %0, %struct.intel_sdvo** %6, align 8
  store %struct.intel_sdvo_connector* %1, %struct.intel_sdvo_connector** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = call i32 @memset(%struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 40)
  %14 = load i64, i64* %8, align 8
  %15 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 4
  store i64 %14, i64* %15, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 3
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 2
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %7, align 8
  %22 = call i64 @IS_LVDS(%struct.intel_sdvo_connector* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %5
  %25 = load %struct.intel_sdvo_connector*, %struct.intel_sdvo_connector** %7, align 8
  %26 = getelementptr inbounds %struct.intel_sdvo_connector, %struct.intel_sdvo_connector* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %28, align 8
  store %struct.drm_display_mode* %29, %struct.drm_display_mode** %12, align 8
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %31 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %24
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %12, align 8
  %37 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35, %24
  %42 = getelementptr inbounds %struct.intel_sdvo_preferred_input_timing_args, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 0, i32 0
  store i32 1, i32* %42, align 8
  br label %43

43:                                               ; preds = %41, %35
  br label %44

44:                                               ; preds = %43, %5
  %45 = load %struct.intel_sdvo*, %struct.intel_sdvo** %6, align 8
  %46 = load i32, i32* @SDVO_CMD_CREATE_PREFERRED_INPUT_TIMING, align 4
  %47 = call i32 @intel_sdvo_set_value(%struct.intel_sdvo* %45, i32 %46, %struct.intel_sdvo_preferred_input_timing_args* %11, i32 40)
  ret i32 %47
}

declare dso_local i32 @memset(%struct.intel_sdvo_preferred_input_timing_args*, i32, i32) #1

declare dso_local i64 @IS_LVDS(%struct.intel_sdvo_connector*) #1

declare dso_local i32 @intel_sdvo_set_value(%struct.intel_sdvo*, i32, %struct.intel_sdvo_preferred_input_timing_args*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
