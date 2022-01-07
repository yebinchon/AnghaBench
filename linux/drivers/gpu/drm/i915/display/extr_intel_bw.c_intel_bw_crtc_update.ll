; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_intel_bw_crtc_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_bw.c_intel_bw_crtc_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_bw_state = type { i32*, i32* }
%struct.intel_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crtc = type { i64 }

@.str = private unnamed_addr constant [43 x i8] c"pipe %c data rate %u num active planes %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_bw_crtc_update(%struct.intel_bw_state* %0, %struct.intel_crtc_state* %1) #0 {
  %3 = alloca %struct.intel_bw_state*, align 8
  %4 = alloca %struct.intel_crtc_state*, align 8
  %5 = alloca %struct.intel_crtc*, align 8
  store %struct.intel_bw_state* %0, %struct.intel_bw_state** %3, align 8
  store %struct.intel_crtc_state* %1, %struct.intel_crtc_state** %4, align 8
  %6 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %7 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.intel_crtc* @to_intel_crtc(i32 %9)
  store %struct.intel_crtc* %10, %struct.intel_crtc** %5, align 8
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %12 = call i32 @intel_bw_crtc_data_rate(%struct.intel_crtc_state* %11)
  %13 = load %struct.intel_bw_state*, %struct.intel_bw_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_bw_state, %struct.intel_bw_state* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %17 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  store i32 %12, i32* %19, align 4
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %4, align 8
  %21 = call i32 @intel_bw_crtc_num_active_planes(%struct.intel_crtc_state* %20)
  %22 = load %struct.intel_bw_state*, %struct.intel_bw_state** %3, align 8
  %23 = getelementptr inbounds %struct.intel_bw_state, %struct.intel_bw_state* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %26 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  store i32 %21, i32* %28, align 4
  %29 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %30 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @pipe_name(i64 %31)
  %33 = load %struct.intel_bw_state*, %struct.intel_bw_state** %3, align 8
  %34 = getelementptr inbounds %struct.intel_bw_state, %struct.intel_bw_state* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %37 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.intel_bw_state*, %struct.intel_bw_state** %3, align 8
  %42 = getelementptr inbounds %struct.intel_bw_state, %struct.intel_bw_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.intel_crtc*, %struct.intel_crtc** %5, align 8
  %45 = getelementptr inbounds %struct.intel_crtc, %struct.intel_crtc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %40, i32 %48)
  ret void
}

declare dso_local %struct.intel_crtc* @to_intel_crtc(i32) #1

declare dso_local i32 @intel_bw_crtc_data_rate(%struct.intel_crtc_state*) #1

declare dso_local i32 @intel_bw_crtc_num_active_planes(%struct.intel_crtc_state*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32) #1

declare dso_local i32 @pipe_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
