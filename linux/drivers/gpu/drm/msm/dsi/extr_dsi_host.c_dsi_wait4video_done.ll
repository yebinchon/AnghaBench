; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_wait4video_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_wait4video_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_dsi_host = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@DSI_IRQ_MASK_VIDEO_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wait for video done timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_dsi_host*)* @dsi_wait4video_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_wait4video_done(%struct.msm_dsi_host* %0) #0 {
  %2 = alloca %struct.msm_dsi_host*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.msm_dsi_host* %0, %struct.msm_dsi_host** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %6 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %10 = load i32, i32* @DSI_IRQ_MASK_VIDEO_DONE, align 4
  %11 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %9, i32 %10, i32 1)
  %12 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %13 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %12, i32 0, i32 0
  %14 = call i32 @reinit_completion(i32* %13)
  %15 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %16 = getelementptr inbounds %struct.msm_dsi_host, %struct.msm_dsi_host* %15, i32 0, i32 0
  %17 = call i32 @msecs_to_jiffies(i32 70)
  %18 = call i64 @wait_for_completion_timeout(i32* %16, i32 %17)
  store i64 %18, i64* %3, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @DRM_DEV_ERROR(%struct.device* %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %1
  %25 = load %struct.msm_dsi_host*, %struct.msm_dsi_host** %2, align 8
  %26 = load i32, i32* @DSI_IRQ_MASK_VIDEO_DONE, align 4
  %27 = call i32 @dsi_intr_ctrl(%struct.msm_dsi_host* %25, i32 %26, i32 0)
  ret void
}

declare dso_local i32 @dsi_intr_ctrl(%struct.msm_dsi_host*, i32, i32) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
