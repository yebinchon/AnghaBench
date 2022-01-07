; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_load_luts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_color.c_chv_load_luts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_property_blob*, %struct.drm_property_blob*, i32 }
%struct.drm_property_blob = type { i32 }
%struct.intel_crtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*)* @chv_load_luts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_load_luts(%struct.intel_crtc_state* %0) #0 {
  %2 = alloca %struct.intel_crtc_state*, align 8
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.drm_property_blob*, align 8
  %5 = alloca %struct.drm_property_blob*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %2, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %3, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.drm_property_blob*, %struct.drm_property_blob** %13, align 8
  store %struct.drm_property_blob* %14, %struct.drm_property_blob** %4, align 8
  %15 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %16 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.drm_property_blob*, %struct.drm_property_blob** %17, align 8
  store %struct.drm_property_blob* %18, %struct.drm_property_blob** %5, align 8
  %19 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %20 = call i32 @cherryview_load_csc_matrix(%struct.intel_crtc_state* %19)
  %21 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %22 = call i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %2, align 8
  %26 = call i32 @i9xx_load_luts(%struct.intel_crtc_state* %25)
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %29 = icmp ne %struct.drm_property_blob* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %32 = load %struct.drm_property_blob*, %struct.drm_property_blob** %5, align 8
  %33 = call i32 @chv_load_cgm_degamma(%struct.intel_crtc* %31, %struct.drm_property_blob* %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %36 = icmp ne %struct.drm_property_blob* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %39 = load %struct.drm_property_blob*, %struct.drm_property_blob** %4, align 8
  %40 = call i32 @chv_load_cgm_gamma(%struct.intel_crtc* %38, %struct.drm_property_blob* %39)
  br label %41

41:                                               ; preds = %24, %37, %34
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @cherryview_load_csc_matrix(%struct.intel_crtc_state*) #1

declare dso_local i64 @crtc_state_is_legacy_gamma(%struct.intel_crtc_state*) #1

declare dso_local i32 @i9xx_load_luts(%struct.intel_crtc_state*) #1

declare dso_local i32 @chv_load_cgm_degamma(%struct.intel_crtc*, %struct.drm_property_blob*) #1

declare dso_local i32 @chv_load_cgm_gamma(%struct.intel_crtc*, %struct.drm_property_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
