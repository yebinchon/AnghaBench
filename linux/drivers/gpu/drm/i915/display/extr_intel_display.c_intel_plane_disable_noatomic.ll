; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_disable_noatomic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_plane_disable_noatomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.intel_plane = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.intel_crtc_state = type { i64* }
%struct.intel_plane_state = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Disabling [PLANE:%d:%s] on [CRTC:%d:%s]\0A\00", align 1
@PLANE_PRIMARY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_crtc*, %struct.intel_plane*)* @intel_plane_disable_noatomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_plane_disable_noatomic(%struct.intel_crtc* %0, %struct.intel_plane* %1) #0 {
  %3 = alloca %struct.intel_crtc*, align 8
  %4 = alloca %struct.intel_plane*, align 8
  %5 = alloca %struct.intel_crtc_state*, align 8
  %6 = alloca %struct.intel_plane_state*, align 8
  store %struct.intel_crtc* %0, %struct.intel_crtc** %3, align 8
  store %struct.intel_plane* %1, %struct.intel_plane** %4, align 8
  %7 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %8 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.intel_crtc_state* @to_intel_crtc_state(i32 %10)
  store %struct.intel_crtc_state* %11, %struct.intel_crtc_state** %5, align 8
  %12 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %13 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.intel_plane_state* @to_intel_plane_state(i32 %15)
  store %struct.intel_plane_state* %16, %struct.intel_plane_state** %6, align 8
  %17 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %18 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %23 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %32 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %30, i32 %34)
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %37 = load %struct.intel_plane_state*, %struct.intel_plane_state** %6, align 8
  %38 = call i32 @intel_set_plane_visible(%struct.intel_crtc_state* %36, %struct.intel_plane_state* %37, i32 0)
  %39 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %40 = call i32 @fixup_active_planes(%struct.intel_crtc_state* %39)
  %41 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %42 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %45 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  store i64 0, i64* %47, align 8
  %48 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %49 = getelementptr inbounds %struct.intel_plane, %struct.intel_plane* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PLANE_PRIMARY, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %2
  %54 = load %struct.intel_crtc*, %struct.intel_crtc** %3, align 8
  %55 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %54, i32 0, i32 0
  %56 = call i32 @intel_pre_disable_primary_noatomic(%struct.TYPE_8__* %55)
  br label %57

57:                                               ; preds = %53, %2
  %58 = load %struct.intel_plane*, %struct.intel_plane** %4, align 8
  %59 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %5, align 8
  %60 = call i32 @intel_disable_plane(%struct.intel_plane* %58, %struct.intel_crtc_state* %59)
  ret void
}

declare dso_local %struct.intel_crtc_state* @to_intel_crtc_state(i32) #1

declare dso_local %struct.intel_plane_state* @to_intel_plane_state(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @intel_set_plane_visible(%struct.intel_crtc_state*, %struct.intel_plane_state*, i32) #1

declare dso_local i32 @fixup_active_planes(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_pre_disable_primary_noatomic(%struct.TYPE_8__*) #1

declare dso_local i32 @intel_disable_plane(%struct.intel_plane*, %struct.intel_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
