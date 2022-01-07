; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_duplicate_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_duplicate_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc_state = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.dpu_crtc = type { i32 }
%struct.dpu_crtc_state = type { %struct.drm_crtc_state }

@.str = private unnamed_addr constant [21 x i8] c"invalid argument(s)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to allocate state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_crtc_state* (%struct.drm_crtc*)* @dpu_crtc_duplicate_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_crtc_state* @dpu_crtc_duplicate_state(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc_state*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.dpu_crtc*, align 8
  %5 = alloca %struct.dpu_crtc_state*, align 8
  %6 = alloca %struct.dpu_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = icmp ne %struct.drm_crtc* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %37

16:                                               ; preds = %9
  %17 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %18 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %17)
  store %struct.dpu_crtc* %18, %struct.dpu_crtc** %4, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(i32 %21)
  store %struct.dpu_crtc_state* %22, %struct.dpu_crtc_state** %6, align 8
  %23 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %6, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.dpu_crtc_state* @kmemdup(%struct.dpu_crtc_state* %23, i32 4, i32 %24)
  store %struct.dpu_crtc_state* %25, %struct.dpu_crtc_state** %5, align 8
  %26 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %27 = icmp ne %struct.dpu_crtc_state* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %16
  %29 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.drm_crtc_state* null, %struct.drm_crtc_state** %2, align 8
  br label %37

30:                                               ; preds = %16
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %32 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %33 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %32, i32 0, i32 0
  %34 = call i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc* %31, %struct.drm_crtc_state* %33)
  %35 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %35, i32 0, i32 0
  store %struct.drm_crtc_state* %36, %struct.drm_crtc_state** %2, align 8
  br label %37

37:                                               ; preds = %30, %28, %14
  %38 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %2, align 8
  ret %struct.drm_crtc_state* %38
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(i32) #1

declare dso_local %struct.dpu_crtc_state* @kmemdup(%struct.dpu_crtc_state*, i32, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_duplicate_state(%struct.drm_crtc*, %struct.drm_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
