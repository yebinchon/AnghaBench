; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_start_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_dp_helper.c_drm_dp_start_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_dp_aux = type { i32, %struct.drm_crtc*, i64 }
%struct.drm_crtc = type { i32 }

@DP_TEST_SINK = common dso_local global i32 0, align 4
@DP_TEST_SINK_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_dp_start_crc(%struct.drm_dp_aux* %0, %struct.drm_crtc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_dp_aux*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_dp_aux* %0, %struct.drm_dp_aux** %4, align 8
  store %struct.drm_crtc* %1, %struct.drm_crtc** %5, align 8
  %8 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %9 = load i32, i32* @DP_TEST_SINK, align 4
  %10 = call i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  %16 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %17 = load i32, i32* @DP_TEST_SINK, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DP_TEST_SINK_START, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux* %16, i32 %17, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %15
  %27 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %28 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %30 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %31 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %30, i32 0, i32 1
  store %struct.drm_crtc* %29, %struct.drm_crtc** %31, align 8
  %32 = load %struct.drm_dp_aux*, %struct.drm_dp_aux** %4, align 8
  %33 = getelementptr inbounds %struct.drm_dp_aux, %struct.drm_dp_aux* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %26, %24, %13
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @drm_dp_dpcd_readb(%struct.drm_dp_aux*, i32, i32*) #1

declare dso_local i32 @drm_dp_dpcd_writeb(%struct.drm_dp_aux*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
