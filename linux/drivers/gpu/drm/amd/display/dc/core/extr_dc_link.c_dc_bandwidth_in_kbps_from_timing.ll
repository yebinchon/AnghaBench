; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_bandwidth_in_kbps_from_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_dc_bandwidth_in_kbps_from_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_crtc_timing = type { i32, i32, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@PIXEL_ENCODING_YCBCR420 = common dso_local global i64 0, align 8
@PIXEL_ENCODING_YCBCR422 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_bandwidth_in_kbps_from_timing(%struct.dc_crtc_timing* %0) #0 {
  %2 = alloca %struct.dc_crtc_timing*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dc_crtc_timing* %0, %struct.dc_crtc_timing** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %6 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %14 [
    i32 129, label %8
    i32 128, label %9
    i32 133, label %10
    i32 132, label %11
    i32 131, label %12
    i32 130, label %13
  ]

8:                                                ; preds = %1
  store i32 6, i32* %3, align 4
  br label %15

9:                                                ; preds = %1
  store i32 8, i32* %3, align 4
  br label %15

10:                                               ; preds = %1
  store i32 10, i32* %3, align 4
  br label %15

11:                                               ; preds = %1
  store i32 12, i32* %3, align 4
  br label %15

12:                                               ; preds = %1
  store i32 14, i32* %3, align 4
  br label %15

13:                                               ; preds = %1
  store i32 16, i32* %3, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %13, %12, %11, %10, %9, %8
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %21 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sdiv i32 %22, 10
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = mul nsw i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %28 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %32, label %55

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 %33, 3
  store i32 %34, i32* %4, align 4
  %35 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %36 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PIXEL_ENCODING_YCBCR420, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = sdiv i32 %41, 2
  store i32 %42, i32* %4, align 4
  br label %54

43:                                               ; preds = %32
  %44 = load %struct.dc_crtc_timing*, %struct.dc_crtc_timing** %2, align 8
  %45 = getelementptr inbounds %struct.dc_crtc_timing, %struct.dc_crtc_timing* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PIXEL_ENCODING_YCBCR422, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sdiv i32 %51, 3
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %43
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %15
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
