; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_hdmi_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_hdmi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@DRM_MODE_MATCH_TIMINGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_FLAGS = common dso_local global i32 0, align 4
@edid_4k_modes = common dso_local global %struct.drm_display_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_display_mode*)* @drm_match_hdmi_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drm_match_hdmi_mode(%struct.drm_display_mode* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  %9 = load i32, i32* @DRM_MODE_MATCH_TIMINGS, align 4
  %10 = load i32, i32* @DRM_MODE_MATCH_FLAGS, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %60

17:                                               ; preds = %1
  store i64 1, i64* %5, align 8
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_4k_modes, align 8
  %21 = call i64 @ARRAY_SIZE(%struct.drm_display_mode* %20)
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %18
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_4k_modes, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i64 %25
  store %struct.drm_display_mode* %26, %struct.drm_display_mode** %6, align 8
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %7, align 4
  %30 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %31 = call i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode* %30)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %33 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @KHZ2PICOS(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @KHZ2PICOS(i32 %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %23
  %40 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %41 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @KHZ2PICOS(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @KHZ2PICOS(i32 %44)
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39, %23
  %48 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i64 @drm_mode_match(%struct.drm_display_mode* %48, %struct.drm_display_mode* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i64, i64* %5, align 8
  store i64 %54, i64* %2, align 8
  br label %60

55:                                               ; preds = %47, %39
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %18

59:                                               ; preds = %18
  store i64 0, i64* %2, align 8
  br label %60

60:                                               ; preds = %59, %53, %16
  %61 = load i64, i64* %2, align 8
  ret i64 %61
}

declare dso_local i64 @ARRAY_SIZE(%struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode*) #1

declare dso_local i64 @KHZ2PICOS(i32) #1

declare dso_local i64 @drm_mode_match(%struct.drm_display_mode*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
