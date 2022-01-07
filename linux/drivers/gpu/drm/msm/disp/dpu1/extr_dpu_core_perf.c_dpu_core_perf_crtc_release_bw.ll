; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_crtc_release_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c_dpu_core_perf_crtc_release_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.dpu_crtc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dpu_crtc_state = type { i32 }
%struct.dpu_kms = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"invalid crtc\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid kms\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Release BW crtc=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_core_perf_crtc_release_bw(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.drm_crtc*, align 8
  %3 = alloca %struct.dpu_crtc*, align 8
  %4 = alloca %struct.dpu_crtc_state*, align 8
  %5 = alloca %struct.dpu_kms*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %2, align 8
  %6 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %7 = icmp ne %struct.drm_crtc* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %57

10:                                               ; preds = %1
  %11 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %12 = call %struct.dpu_kms* @_dpu_crtc_get_kms(%struct.drm_crtc* %11)
  store %struct.dpu_kms* %12, %struct.dpu_kms** %5, align 8
  %13 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %14 = icmp ne %struct.dpu_kms* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %17 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %10
  %21 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %57

22:                                               ; preds = %15
  %23 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %24 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %23)
  store %struct.dpu_crtc* %24, %struct.dpu_crtc** %3, align 8
  %25 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %26 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(i32 %27)
  store %struct.dpu_crtc_state* %28, %struct.dpu_crtc_state** %4, align 8
  %29 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %30 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %29, i32 0, i32 1
  %31 = call i64 @atomic_dec_return(i32* %30)
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %57

34:                                               ; preds = %22
  %35 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %36 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @trace_dpu_cmd_release_bw(i32 %44)
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.dpu_crtc*, %struct.dpu_crtc** %3, align 8
  %52 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  %54 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %55 = load %struct.drm_crtc*, %struct.drm_crtc** %2, align 8
  %56 = call i32 @_dpu_core_perf_crtc_update_bus(%struct.dpu_kms* %54, %struct.drm_crtc* %55)
  br label %57

57:                                               ; preds = %8, %20, %33, %40, %34
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_kms* @_dpu_crtc_get_kms(%struct.drm_crtc*) #1

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @trace_dpu_cmd_release_bw(i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32) #1

declare dso_local i32 @_dpu_core_perf_crtc_update_bus(%struct.dpu_kms*, %struct.drm_crtc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
