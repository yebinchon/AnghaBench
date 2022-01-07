; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_core_perf_calc_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_core_perf_calc_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64, i64, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.drm_crtc = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.drm_crtc_state = type { i32 }
%struct.dpu_core_perf_params = type { i64, i64, i64 }
%struct.dpu_crtc_state = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid parameters\0A\00", align 1
@DPU_PERF_MODE_MINIMUM = common dso_local global i64 0, align 8
@DPU_PERF_MODE_FIXED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [49 x i8] c"crtc=%d clk_rate=%llu core_ib=%llu core_ab=%llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpu_kms*, %struct.drm_crtc*, %struct.drm_crtc_state*, %struct.dpu_core_perf_params*)* @_dpu_core_perf_calc_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_dpu_core_perf_calc_crtc(%struct.dpu_kms* %0, %struct.drm_crtc* %1, %struct.drm_crtc_state* %2, %struct.dpu_core_perf_params* %3) #0 {
  %5 = alloca %struct.dpu_kms*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_crtc_state*, align 8
  %8 = alloca %struct.dpu_core_perf_params*, align 8
  %9 = alloca %struct.dpu_crtc_state*, align 8
  store %struct.dpu_kms* %0, %struct.dpu_kms** %5, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %6, align 8
  store %struct.drm_crtc_state* %2, %struct.drm_crtc_state** %7, align 8
  store %struct.dpu_core_perf_params* %3, %struct.dpu_core_perf_params** %8, align 8
  %10 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %11 = icmp ne %struct.dpu_kms* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %4
  %13 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %14 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %19 = icmp ne %struct.drm_crtc* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %22 = icmp ne %struct.drm_crtc_state* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %25 = icmp ne %struct.dpu_core_perf_params* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %20, %17, %12, %4
  %27 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %117

28:                                               ; preds = %23
  %29 = load %struct.drm_crtc_state*, %struct.drm_crtc_state** %7, align 8
  %30 = call %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state* %29)
  store %struct.dpu_crtc_state* %30, %struct.dpu_crtc_state** %9, align 8
  %31 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %32 = call i32 @memset(%struct.dpu_core_perf_params* %31, i32 0, i32 24)
  %33 = load %struct.dpu_crtc_state*, %struct.dpu_crtc_state** %9, align 8
  %34 = getelementptr inbounds %struct.dpu_crtc_state, %struct.dpu_crtc_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %28
  %38 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %39 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = mul i64 %43, 1000
  %45 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %46 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %48 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %51 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %53 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %57 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  br label %102

58:                                               ; preds = %28
  %59 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %60 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @DPU_PERF_MODE_MINIMUM, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %58
  %67 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %68 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %70 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %69, i32 0, i32 1
  store i64 0, i64* %70, align 8
  %71 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %72 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %71, i32 0, i32 2
  store i64 0, i64* %72, align 8
  br label %101

73:                                               ; preds = %58
  %74 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %75 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DPU_PERF_MODE_FIXED, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %73
  %82 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %83 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %87 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %89 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %93 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %92, i32 0, i32 1
  store i64 %91, i64* %93, align 8
  %94 = load %struct.dpu_kms*, %struct.dpu_kms** %5, align 8
  %95 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %99 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %81, %73
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %37
  %103 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %104 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %108 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %111 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.dpu_core_perf_params*, %struct.dpu_core_perf_params** %8, align 8
  %114 = getelementptr inbounds %struct.dpu_core_perf_params, %struct.dpu_core_perf_params* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %106, i64 %109, i64 %112, i64 %115)
  br label %117

117:                                              ; preds = %102, %26
  ret void
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_crtc_state* @to_dpu_crtc_state(%struct.drm_crtc_state*) #1

declare dso_local i32 @memset(%struct.dpu_core_perf_params*, i32, i32) #1

declare dso_local i32 @DPU_DEBUG(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
