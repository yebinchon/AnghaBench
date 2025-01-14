; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_destroy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c_dpu_crtc_destroy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dpu_crtc = type { i32 }
%struct.dpu_crtc_state = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid argument(s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"crtc%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_crtc*, %struct.drm_crtc_state*)* @dpu_crtc_destroy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_crtc_destroy_state(%struct.drm_crtc* %0, %struct.drm_crtc_state* %1) #0 {
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_crtc_state*, align 8
  %5 = alloca %struct.dpu_crtc*, align 8
  %6 = alloca %struct.dpu_crtc_state*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  store %struct.drm_crtc_state* %1, %struct.drm_crtc_state** %4, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = icmp ne %struct.drm_crtc* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %11 = icmp ne %struct.drm_crtc_state* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9, %2
  %13 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %28

14:                                               ; preds = %9
  %15 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %16 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %15)
  store %struct.dpu_crtc* %16, %struct.dpu_crtc** %5, align 8
  %17 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %18 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state* %17)
  store %struct.dpu_crtc_state* %18, %struct.dpu_crtc_state** %6, align 8
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %4, align 8
  %25 = call i32 @__drm_atomic_helper_crtc_destroy_state(%struct.drm_crtc_state* %24)
  %26 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %6, align 8
  %27 = call i32 @kfree(%struct.dpu_crtc_state* %26)
  br label %28

28:                                               ; preds = %14, %12
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32) #1

declare dso_local i32 @__drm_atomic_helper_crtc_destroy_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @kfree(%struct.dpu_crtc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
