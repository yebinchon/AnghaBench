; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_dp_set_m_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_intel_dp_set_m_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_crtc_state = type { %struct.intel_link_m_n, i64, %struct.intel_link_m_n }
%struct.intel_link_m_n = type { i32 }

@M1_N1 = common dso_local global i32 0, align 4
@M2_N2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported divider value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_dp_set_m_n(%struct.intel_crtc_state* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_crtc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_link_m_n*, align 8
  %6 = alloca %struct.intel_link_m_n*, align 8
  store %struct.intel_crtc_state* %0, %struct.intel_crtc_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.intel_link_m_n* null, %struct.intel_link_m_n** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @M1_N1, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %12 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %11, i32 0, i32 0
  store %struct.intel_link_m_n* %12, %struct.intel_link_m_n** %5, align 8
  %13 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %13, i32 0, i32 2
  store %struct.intel_link_m_n* %14, %struct.intel_link_m_n** %6, align 8
  br label %25

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @M2_N2, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %21 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %20, i32 0, i32 2
  store %struct.intel_link_m_n* %21, %struct.intel_link_m_n** %5, align 8
  br label %24

22:                                               ; preds = %15
  %23 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %40

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %24, %10
  %26 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %27 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %32 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %33 = getelementptr inbounds %struct.intel_crtc_state, %struct.intel_crtc_state* %32, i32 0, i32 0
  %34 = call i32 @intel_pch_transcoder_set_m_n(%struct.intel_crtc_state* %31, %struct.intel_link_m_n* %33)
  br label %40

35:                                               ; preds = %25
  %36 = load %struct.intel_crtc_state*, %struct.intel_crtc_state** %3, align 8
  %37 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %5, align 8
  %38 = load %struct.intel_link_m_n*, %struct.intel_link_m_n** %6, align 8
  %39 = call i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state* %36, %struct.intel_link_m_n* %37, %struct.intel_link_m_n* %38)
  br label %40

40:                                               ; preds = %22, %35, %30
  ret void
}

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @intel_pch_transcoder_set_m_n(%struct.intel_crtc_state*, %struct.intel_link_m_n*) #1

declare dso_local i32 @intel_cpu_transcoder_set_m_n(%struct.intel_crtc_state*, %struct.intel_link_m_n*, %struct.intel_link_m_n*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
