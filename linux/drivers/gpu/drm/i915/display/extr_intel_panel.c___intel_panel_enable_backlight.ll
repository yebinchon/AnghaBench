; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c___intel_panel_enable_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_panel.c___intel_panel_enable_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.intel_connector = type { %struct.intel_panel }
%struct.intel_panel = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, %struct.TYPE_5__*, i32 (%struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.intel_crtc_state.0 = type opaque
%struct.drm_connector_state.1 = type opaque

@FB_BLANK_UNBLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc_state*, %struct.drm_connector_state*)* @__intel_panel_enable_backlight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__intel_panel_enable_backlight(%struct.intel_crtc_state* %0, %struct.drm_connector_state* %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca %struct.drm_connector_state*, align 8
  %5 = alloca %struct.intel_connector*, align 8
  %6 = alloca %struct.intel_panel*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %4, align 8
  %7 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector_state, %struct.drm_connector_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_connector* @to_intel_connector(i32 %9)
  store %struct.intel_connector* %10, %struct.intel_connector** %5, align 8
  %11 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %12 = getelementptr inbounds %struct.intel_connector, %struct.intel_connector* %11, i32 0, i32 0
  store %struct.intel_panel* %12, %struct.intel_panel** %6, align 8
  %13 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %14 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %21 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %25 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %23, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %2
  %30 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %31 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %35 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i64 %33, i64* %36, align 8
  %37 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %38 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %62

42:                                               ; preds = %29
  %43 = load %struct.intel_connector*, %struct.intel_connector** %5, align 8
  %44 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %45 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %49 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @scale_hw_to_user(%struct.intel_connector* %43, i64 %47, i32 %54)
  %56 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %57 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %42, %29
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %65 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32 (%struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)*, i32 (%struct.intel_crtc_state.0*, %struct.drm_connector_state.1*)** %66, align 8
  %68 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %69 = bitcast %struct.intel_crtc_state* %68 to %struct.intel_crtc_state.0*
  %70 = load %struct.drm_connector_state*, %struct.drm_connector_state** %4, align 8
  %71 = bitcast %struct.drm_connector_state* %70 to %struct.drm_connector_state.1*
  %72 = call i32 %67(%struct.intel_crtc_state.0* %69, %struct.drm_connector_state.1* %71)
  %73 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %74 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 3
  store i32 1, i32* %75, align 8
  %76 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %77 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = icmp ne %struct.TYPE_5__* %79, null
  br i1 %80, label %81, label %89

81:                                               ; preds = %63
  %82 = load i32, i32* @FB_BLANK_UNBLANK, align 4
  %83 = load %struct.intel_panel*, %struct.intel_panel** %6, align 8
  %84 = getelementptr inbounds %struct.intel_panel, %struct.intel_panel* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %81, %63
  ret void
}

declare dso_local %struct.intel_connector* @to_intel_connector(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @scale_hw_to_user(%struct.intel_connector*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
