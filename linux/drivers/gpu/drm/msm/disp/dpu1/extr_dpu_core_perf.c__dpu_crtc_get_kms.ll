; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_crtc_get_kms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_core_perf.c__dpu_crtc_get_kms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_kms = type { i32 }
%struct.drm_crtc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"invalid device\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"invalid kms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpu_kms* (%struct.drm_crtc*)* @_dpu_crtc_get_kms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpu_kms* @_dpu_crtc_get_kms(%struct.drm_crtc* %0) #0 {
  %2 = alloca %struct.dpu_kms*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.msm_drm_private*, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %5 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %6 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %11 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.msm_drm_private*, %struct.msm_drm_private** %13, align 8
  %15 = icmp ne %struct.msm_drm_private* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9, %1
  %17 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store %struct.dpu_kms* null, %struct.dpu_kms** %2, align 8
  br label %38

18:                                               ; preds = %9
  %19 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %20 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.msm_drm_private*, %struct.msm_drm_private** %22, align 8
  store %struct.msm_drm_private* %23, %struct.msm_drm_private** %4, align 8
  %24 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %25 = icmp ne %struct.msm_drm_private* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %28 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %18
  %32 = call i32 @DPU_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dpu_kms* null, %struct.dpu_kms** %2, align 8
  br label %38

33:                                               ; preds = %26
  %34 = load %struct.msm_drm_private*, %struct.msm_drm_private** %4, align 8
  %35 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.dpu_kms* @to_dpu_kms(i32 %36)
  store %struct.dpu_kms* %37, %struct.dpu_kms** %2, align 8
  br label %38

38:                                               ; preds = %33, %31, %16
  %39 = load %struct.dpu_kms*, %struct.dpu_kms** %2, align 8
  ret %struct.dpu_kms* %39
}

declare dso_local i32 @DPU_ERROR(i8*) #1

declare dso_local %struct.dpu_kms* @to_dpu_kms(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
