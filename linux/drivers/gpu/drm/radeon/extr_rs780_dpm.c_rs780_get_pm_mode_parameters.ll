; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_get_pm_mode_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rs780_dpm.c_rs780_get_pm_mode_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32, %struct.radeon_mode_info }
%struct.radeon_mode_info = type { i64* }
%struct.igp_power_info = type { i32, i64 }
%struct.drm_crtc = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.radeon_crtc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @rs780_get_pm_mode_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs780_get_pm_mode_parameters(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.igp_power_info*, align 8
  %4 = alloca %struct.radeon_mode_info*, align 8
  %5 = alloca %struct.drm_crtc*, align 8
  %6 = alloca %struct.radeon_crtc*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %9 = call %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device* %8)
  store %struct.igp_power_info* %9, %struct.igp_power_info** %3, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 1
  store %struct.radeon_mode_info* %11, %struct.radeon_mode_info** %4, align 8
  %12 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %13 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %14, i32 0, i32 0
  store i32 60, i32* %15, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %65, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %19 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %68

22:                                               ; preds = %16
  %23 = load %struct.radeon_mode_info*, %struct.radeon_mode_info** %4, align 8
  %24 = getelementptr inbounds %struct.radeon_mode_info, %struct.radeon_mode_info* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.drm_crtc*
  store %struct.drm_crtc* %30, %struct.drm_crtc** %5, align 8
  %31 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %32 = icmp ne %struct.drm_crtc* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %22
  %34 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %35 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %33
  %39 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %40 = call %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc* %39)
  store %struct.radeon_crtc* %40, %struct.radeon_crtc** %6, align 8
  %41 = load %struct.radeon_crtc*, %struct.radeon_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.radeon_crtc, %struct.radeon_crtc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %45 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %47 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %38
  %52 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %53 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.drm_crtc*, %struct.drm_crtc** %5, align 8
  %59 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %58, i32 0, i32 0
  %60 = call i32 @drm_mode_vrefresh(%struct.TYPE_2__* %59)
  %61 = load %struct.igp_power_info*, %struct.igp_power_info** %3, align 8
  %62 = getelementptr inbounds %struct.igp_power_info, %struct.igp_power_info* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %51, %38
  br label %68

64:                                               ; preds = %33, %22
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %16

68:                                               ; preds = %63, %16
  ret void
}

declare dso_local %struct.igp_power_info* @rs780_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.radeon_crtc* @to_radeon_crtc(%struct.drm_crtc*) #1

declare dso_local i32 @drm_mode_vrefresh(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
