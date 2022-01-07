; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_output_color_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_get_output_color_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_crtc_timing = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@COLOR_SPACE_SRGB = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709_LIMITED = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR709 = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601_LIMITED = common dso_local global i32 0, align 4
@COLOR_SPACE_YCBCR601 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_crtc_timing*)* @get_output_color_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_output_color_space(%struct.dc_crtc_timing* %0) #0 {
  %2 = alloca %struct.dc_crtc_timing*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_crtc_timing* %0, %struct.dc_crtc_timing** %2, align 8
  %4 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %6 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %38 [
    i32 129, label %8
    i32 128, label %8
    i32 130, label %8
    i32 131, label %36
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %10 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sgt i32 %11, 270300
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %15 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @COLOR_SPACE_YCBCR709_LIMITED, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @COLOR_SPACE_YCBCR709, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %35

24:                                               ; preds = %8
  %25 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %26 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @COLOR_SPACE_YCBCR601_LIMITED, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @COLOR_SPACE_YCBCR601, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %30
  br label %35

35:                                               ; preds = %34, %23
  br label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @COLOR_SPACE_SRGB, align 4
  store i32 %37, i32* %3, align 4
  br label %40

38:                                               ; preds = %1
  %39 = call i32 @WARN_ON(i32 1)
  br label %40

40:                                               ; preds = %38, %36, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
