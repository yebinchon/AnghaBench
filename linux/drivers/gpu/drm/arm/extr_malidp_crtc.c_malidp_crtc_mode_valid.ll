; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/extr_malidp_crtc.c_malidp_crtc_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_crtc = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.malidp_drm = type { %struct.malidp_hw_device* }
%struct.malidp_hw_device = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"pxlclk doesn't support %ld Hz\0A\00", align 1
@MODE_NOCLOCK = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_crtc*, %struct.drm_display_mode*)* @malidp_crtc_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @malidp_crtc_mode_valid(%struct.drm_crtc* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_crtc*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.malidp_drm*, align 8
  %7 = alloca %struct.malidp_hw_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.drm_crtc* %0, %struct.drm_crtc** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %10 = load %struct.drm_crtc*, %struct.drm_crtc** %4, align 8
  %11 = call %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc* %10)
  store %struct.malidp_drm* %11, %struct.malidp_drm** %6, align 8
  %12 = load %struct.malidp_drm*, %struct.malidp_drm** %6, align 8
  %13 = getelementptr inbounds %struct.malidp_drm, %struct.malidp_drm* %12, i32 0, i32 0
  %14 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %13, align 8
  store %struct.malidp_hw_device* %14, %struct.malidp_hw_device** %7, align 8
  %15 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %16 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %17, 1000
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.malidp_hw_device*, %struct.malidp_hw_device** %7, align 8
  %24 = getelementptr inbounds %struct.malidp_hw_device, %struct.malidp_hw_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %9, align 8
  %27 = call i64 @clk_round_rate(i32 %25, i64 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @DRM_DEBUG_DRIVER(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @MODE_NOCLOCK, align 4
  store i32 %34, i32* %3, align 4
  br label %38

35:                                               ; preds = %22
  br label %36

36:                                               ; preds = %35, %2
  %37 = load i32, i32* @MODE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.malidp_drm* @crtc_to_malidp_device(%struct.drm_crtc*) #1

declare dso_local i64 @clk_round_rate(i32, i64) #1

declare dso_local i32 @DRM_DEBUG_DRIVER(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
