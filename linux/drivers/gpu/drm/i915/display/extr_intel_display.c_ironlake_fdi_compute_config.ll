; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_compute_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_ironlake_fdi_compute_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_crtc_state = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_display_mode }
%struct.drm_display_mode = type { i32 }

@EDEADLK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"fdi link bw constraint, reducing pipe bpp to %i\0A\00", align 1
@RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_crtc*, %struct.intel_crtc_state*)* @ironlake_fdi_compute_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ironlake_fdi_compute_config(%struct.intel_crtc* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_crtc*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_display_mode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.intel_crtc* %0, %struct.intel_crtc** %4, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %5, align 8
  %13 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %14 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.drm_device*, %struct.drm_device** %15, align 8
  store %struct.drm_device* %16, %struct.drm_device** %6, align 8
  %17 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %18 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.drm_display_mode* %19, %struct.drm_display_mode** %7, align 8
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %68, %2
  %21 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %22 = call i32 @to_i915(%struct.drm_device* %21)
  %23 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %24 = call i32 @intel_fdi_link_freq(i32 %22, %struct.intel_crtc_state* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.drm_display_mode*, %struct.drm_display_mode** %7, align 8
  %26 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %31 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ironlake_get_lanes_required(i32 %28, i32 %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %38 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %44 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %43, i32 0, i32 3
  %45 = call i32 @intel_link_compute_m_n(i32 %39, i32 %40, i32 %41, i32 %42, i32* %44, i32 0, i32 0)
  %46 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %47 = load %struct.intel_crtc*, %struct.intel_crtc** %4, align 8
  %48 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %51 = call i32 @ironlake_check_fdi_lanes(%struct.drm_device* %46, i32 %49, %struct.intel_crtc_state* %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @EDEADLK, align 4
  %54 = sub nsw i32 0, %53
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %20
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %86

58:                                               ; preds = %20
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %65 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %66, 18
  br i1 %67, label %68, label %79

68:                                               ; preds = %63
  %69 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %70 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 6
  store i32 %72, i32* %70, align 4
  %73 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %74 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i32 1, i32* %12, align 4
  %77 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %78 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  br label %20

79:                                               ; preds = %63, %58
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @RETRY, align 4
  store i32 %83, i32* %3, align 4
  br label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %82, %56
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @intel_fdi_link_freq(i32, %struct.intel_crtc_state*) #1

declare dso_local i32 @to_i915(%struct.drm_device*) #1

declare dso_local i32 @ironlake_get_lanes_required(i32, i32, i32) #1

declare dso_local i32 @intel_link_compute_m_n(i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ironlake_check_fdi_lanes(%struct.drm_device*, i32, %struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
