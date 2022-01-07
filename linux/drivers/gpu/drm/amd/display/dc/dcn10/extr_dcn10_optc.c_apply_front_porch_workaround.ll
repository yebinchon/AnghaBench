; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_apply_front_porch_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_optc.c_apply_front_porch_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_crtc_timing = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_crtc_timing*)* @apply_front_porch_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_front_porch_workaround(%struct.dc_crtc_timing* %0) #0 {
  %2 = alloca %struct.dc_crtc_timing*, align 8
  store %struct.dc_crtc_timing* %0, %struct.dc_crtc_timing** %2, align 8
  %3 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %4 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %10 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %15 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %14, i32 0, i32 0
  store i32 2, i32* %15, align 4
  br label %16

16:                                               ; preds = %13, %8
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %19 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 1
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %24 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
