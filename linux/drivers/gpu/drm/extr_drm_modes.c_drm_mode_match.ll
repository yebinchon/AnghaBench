; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32 }

@DRM_MODE_MATCH_TIMINGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_CLOCK = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_FLAGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_3D_FLAGS = common dso_local global i32 0, align 4
@DRM_MODE_MATCH_ASPECT_RATIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_match(%struct.drm_display_mode* %0, %struct.drm_display_mode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.drm_display_mode*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %5, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %9 = icmp ne %struct.drm_display_mode* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %12 = icmp ne %struct.drm_display_mode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i32 1, i32* %4, align 4
  br label %77

14:                                               ; preds = %10, %3
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = icmp ne %struct.drm_display_mode* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %19 = icmp ne %struct.drm_display_mode* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %14
  store i32 0, i32* %4, align 4
  br label %77

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @DRM_MODE_MATCH_TIMINGS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %28 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %29 = call i32 @drm_mode_match_timings(%struct.drm_display_mode* %27, %struct.drm_display_mode* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %77

32:                                               ; preds = %26, %21
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @DRM_MODE_MATCH_CLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %39 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %40 = call i32 @drm_mode_match_clock(%struct.drm_display_mode* %38, %struct.drm_display_mode* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %77

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @DRM_MODE_MATCH_FLAGS, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %50 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %51 = call i32 @drm_mode_match_flags(%struct.drm_display_mode* %49, %struct.drm_display_mode* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %77

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DRM_MODE_MATCH_3D_FLAGS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %61 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %62 = call i32 @drm_mode_match_3d_flags(%struct.drm_display_mode* %60, %struct.drm_display_mode* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %77

65:                                               ; preds = %59, %54
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @DRM_MODE_MATCH_ASPECT_RATIO, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %72 = load %struct.drm_display_mode*, %struct.drm_display_mode** %6, align 8
  %73 = call i32 @drm_mode_match_aspect_ratio(%struct.drm_display_mode* %71, %struct.drm_display_mode* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %77

76:                                               ; preds = %70, %65
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %76, %75, %64, %53, %42, %31, %20, %13
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @drm_mode_match_timings(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_match_clock(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_match_flags(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_match_3d_flags(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_match_aspect_ratio(%struct.drm_display_mode*, %struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
