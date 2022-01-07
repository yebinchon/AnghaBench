; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_psb_intel_sdvo.c_psb_intel_sdvo_mode_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.psb_intel_sdvo = type { %struct.drm_display_mode*, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_encoder*, %struct.drm_display_mode*, %struct.drm_display_mode*)* @psb_intel_sdvo_mode_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psb_intel_sdvo_mode_fixup(%struct.drm_encoder* %0, %struct.drm_display_mode* %1, %struct.drm_display_mode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_encoder*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca %struct.psb_intel_sdvo*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store %struct.drm_display_mode* %2, %struct.drm_display_mode** %7, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %5, align 8
  %11 = call %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder* %10)
  store %struct.psb_intel_sdvo* %11, %struct.psb_intel_sdvo** %8, align 8
  %12 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %13 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = call i32 @psb_intel_sdvo_set_output_timings_from_mode(%struct.psb_intel_sdvo* %17, %struct.drm_display_mode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %52

22:                                               ; preds = %16
  %23 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = call i32 @psb_intel_sdvo_set_input_timings_for_mode(%struct.psb_intel_sdvo* %23, %struct.drm_display_mode* %24, %struct.drm_display_mode* %25)
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %29 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %34 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %35 = getelementptr inbounds %struct.psb_intel_sdvo, %struct.psb_intel_sdvo* %34, i32 0, i32 0
  %36 = load %struct.drm_display_mode*, %struct.drm_display_mode** %35, align 8
  %37 = call i32 @psb_intel_sdvo_set_output_timings_from_mode(%struct.psb_intel_sdvo* %33, %struct.drm_display_mode* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load %struct.psb_intel_sdvo*, %struct.psb_intel_sdvo** %8, align 8
  %42 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %44 = call i32 @psb_intel_sdvo_set_input_timings_for_mode(%struct.psb_intel_sdvo* %41, %struct.drm_display_mode* %42, %struct.drm_display_mode* %43)
  br label %45

45:                                               ; preds = %40, %27
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %48 = call i32 @psb_intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @psb_intel_mode_set_pixel_multiplier(%struct.drm_display_mode* %49, i32 %50)
  store i32 1, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %39, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.psb_intel_sdvo* @to_psb_intel_sdvo(%struct.drm_encoder*) #1

declare dso_local i32 @psb_intel_sdvo_set_output_timings_from_mode(%struct.psb_intel_sdvo*, %struct.drm_display_mode*) #1

declare dso_local i32 @psb_intel_sdvo_set_input_timings_for_mode(%struct.psb_intel_sdvo*, %struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @psb_intel_sdvo_get_pixel_multiplier(%struct.drm_display_mode*) #1

declare dso_local i32 @psb_intel_mode_set_pixel_multiplier(%struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
