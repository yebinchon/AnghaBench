; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_hdmi_mode_clock_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_edid.c_drm_match_hdmi_mode_clock_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@DRM_MODE_MATCH_TIMINGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_FLAGS = common dso_local global i32 0, align 4
@edid_4k_modes = common dso_local global %struct.drm_display_mode* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_display_mode*, i32)* @drm_match_hdmi_mode_clock_tolerance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drm_match_hdmi_mode_clock_tolerance(%struct.drm_display_mode* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.drm_display_mode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @DRM_MODE_MATCH_TIMINGS, align 4
  %12 = load i32, i32* @DRM_MODE_MATCH_FLAGS, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %15 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %65

19:                                               ; preds = %2
  store i64 1, i64* %7, align 8
  br label %20

20:                                               ; preds = %61, %19
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_4k_modes, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.drm_display_mode* %22)
  %24 = icmp ult i64 %21, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = load %struct.drm_display_mode*, %struct.drm_display_mode** @edid_4k_modes, align 8
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %26, i64 %27
  store %struct.drm_display_mode* %28, %struct.drm_display_mode** %8, align 8
  %29 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %30 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %33 = call i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub i32 %36, %37
  %39 = call i32 @abs(i32 %38)
  %40 = load i32, i32* %5, align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %25
  %43 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %44 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub i32 %45, %46
  %48 = call i32 @abs(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %61

52:                                               ; preds = %42, %25
  %53 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %54 = load %struct.drm_display_mode*, %struct.drm_display_mode** %8, align 8
  %55 = load i32, i32* %6, align 4
  %56 = call i64 @drm_mode_match(%struct.drm_display_mode* %53, %struct.drm_display_mode* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i64, i64* %7, align 8
  store i64 %59, i64* %3, align 8
  br label %65

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load i64, i64* %7, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %20

64:                                               ; preds = %20
  store i64 0, i64* %3, align 8
  br label %65

65:                                               ; preds = %64, %58, %18
  %66 = load i64, i64* %3, align 8
  ret i64 %66
}

declare dso_local i64 @ARRAY_SIZE(%struct.drm_display_mode*) #1

declare dso_local i32 @hdmi_mode_alternate_clock(%struct.drm_display_mode*) #1

declare dso_local i32 @abs(i32) #1

declare dso_local i64 @drm_mode_match(%struct.drm_display_mode*, %struct.drm_display_mode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
