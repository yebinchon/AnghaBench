; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_wait_for_frame_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_crtc.c__dpu_crtc_wait_for_frame_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.dpu_crtc = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"no frames pending\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"frame done completion wait\00", align 1
@DPU_CRTC_FRAME_DONE_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"frame done wait timed out, ret:%d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*)* @_dpu_crtc_wait_for_frame_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dpu_crtc_wait_for_frame_done(%struct.drm_crtc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.dpu_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_crtc* %0, %struct.drm_crtc** %3, align 8
  %7 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %8 = call %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc* %7)
  store %struct.dpu_crtc* %8, %struct.dpu_crtc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.dpu_crtc*, %struct.dpu_crtc** %4, align 8
  %10 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 @DPU_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %32

15:                                               ; preds = %1
  %16 = call i32 @DPU_ATRACE_BEGIN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.dpu_crtc*, %struct.dpu_crtc** %4, align 8
  %18 = getelementptr inbounds %struct.dpu_crtc, %struct.dpu_crtc* %17, i32 0, i32 0
  %19 = load i32, i32* @DPU_CRTC_FRAME_DONE_TIMEOUT_MS, align 4
  %20 = call i32 @msecs_to_jiffies(i32 %19)
  %21 = call i32 @wait_for_completion_timeout(i32* %18, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %15
  %30 = call i32 @DPU_ATRACE_END(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.dpu_crtc* @to_dpu_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DPU_DEBUG(i8*) #1

declare dso_local i32 @DPU_ATRACE_BEGIN(i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @DPU_ATRACE_END(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
