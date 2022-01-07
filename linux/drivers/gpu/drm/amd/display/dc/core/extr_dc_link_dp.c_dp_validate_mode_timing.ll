; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_validate_mode_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link_dp.c_dp_validate_mode_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_link = type { i32 }
%struct.dc_crtc_timing = type { i32, i32, i32 }
%struct.dc_link_settings = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dp_validate_mode_timing(%struct.dc_link* %0, %struct.dc_crtc_timing* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_link*, align 8
  %5 = alloca %struct.dc_crtc_timing*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_link_settings*, align 8
  store %struct.dc_link* %0, %struct.dc_link** %4, align 8
  store %struct.dc_crtc_timing* %1, %struct.dc_crtc_timing** %5, align 8
  %9 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %10 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 10
  %13 = icmp eq i32 %12, 25175
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %16 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 640
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %21 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 480
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %38

25:                                               ; preds = %19, %14, %2
  %26 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %27 = call %struct.dc_link_settings* @dc_link_get_link_cap(%struct.dc_link* %26)
  store %struct.dc_link_settings* %27, %struct.dc_link_settings** %8, align 8
  %28 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %5, align 8
  %29 = call i32 @dc_bandwidth_in_kbps_from_timing(%struct.dc_crtc_timing* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.dc_link*, %struct.dc_link** %4, align 8
  %31 = load %struct.dc_link_settings*, %struct.dc_link_settings** %8, align 8
  %32 = call i32 @dc_link_bandwidth_kbps(%struct.dc_link* %30, %struct.dc_link_settings* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sle i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %38

37:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %36, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.dc_link_settings* @dc_link_get_link_cap(%struct.dc_link*) #1

declare dso_local i32 @dc_bandwidth_in_kbps_from_timing(%struct.dc_crtc_timing*) #1

declare dso_local i32 @dc_link_bandwidth_kbps(%struct.dc_link*, %struct.dc_link_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
