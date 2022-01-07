; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_mode_from_pipe_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_mode_from_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_display_mode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.intel_crtc_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DRM_MODE_TYPE_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_mode_from_pipe_config(%struct.drm_display_mode* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_display_mode*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  store %struct.drm_display_mode* %0, %struct.drm_display_mode** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %5 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %6 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %11 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %10, i32 0, i32 12
  store i32 %9, i32* %11, align 4
  %12 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %13 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %18 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %17, i32 0, i32 11
  store i32 %16, i32* %18, align 4
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %20 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %25 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %24, i32 0, i32 10
  store i32 %23, i32* %25, align 4
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %32 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %34 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %39 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %41 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %46 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %48 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %53 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %55 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %60 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %62 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %67 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @DRM_MODE_TYPE_DRIVER, align 4
  %69 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %70 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %72 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %79 = call i32 @drm_mode_hsync(%struct.drm_display_mode* %78)
  %80 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %81 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %83 = call i32 @drm_mode_vrefresh(%struct.drm_display_mode* %82)
  %84 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %85 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.drm_display_mode*, %struct.drm_display_mode** %3, align 8
  %87 = call i32 @drm_mode_set_name(%struct.drm_display_mode* %86)
  ret void
}

declare dso_local i32 @drm_mode_hsync(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.drm_display_mode*) #1

declare dso_local i32 @drm_mode_set_name(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
