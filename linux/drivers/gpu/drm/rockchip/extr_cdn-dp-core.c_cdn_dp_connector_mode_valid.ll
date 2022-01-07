; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_connector_mode_valid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_connector_mode_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.drm_display_mode = type { i32 }
%struct.cdn_dp_device = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32 }

@MODE_BAD = common dso_local global i32 0, align 4
@CDN_DP_MAX_LINK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"requested=%d, actual=%d, clock=%d\0A\00", align 1
@MODE_CLOCK_HIGH = common dso_local global i32 0, align 4
@MODE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, %struct.drm_display_mode*)* @cdn_dp_connector_mode_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_connector_mode_valid(%struct.drm_connector* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_mode*, align 8
  %6 = alloca %struct.cdn_dp_device*, align 8
  %7 = alloca %struct.drm_display_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %5, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %16 = call %struct.cdn_dp_device* @connector_to_dp(%struct.drm_connector* %15)
  store %struct.cdn_dp_device* %16, %struct.cdn_dp_device** %6, align 8
  %17 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %18 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.drm_display_info* %19, %struct.drm_display_info** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %21 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @MODE_BAD, align 4
  store i32 %25, i32* %3, align 4
  br label %83

26:                                               ; preds = %2
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %7, align 8
  %28 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %32 [
    i32 10, label %30
    i32 6, label %31
  ]

30:                                               ; preds = %26
  store i32 10, i32* %14, align 4
  br label %33

31:                                               ; preds = %26
  store i32 6, i32* %14, align 4
  br label %33

32:                                               ; preds = %26
  store i32 8, i32* %14, align 4
  br label %33

33:                                               ; preds = %32, %31, %30
  %34 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %35 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %14, align 4
  %38 = mul nsw i32 %36, %37
  %39 = mul nsw i32 %38, 3
  %40 = sdiv i32 %39, 1000
  store i32 %40, i32* %8, align 4
  %41 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %42 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %45 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @drm_dp_max_lane_count(i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @min(i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @CDN_DP_MAX_LINK_RATE, align 4
  %52 = call i32 @drm_dp_bw_code_to_link_rate(i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %54 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @drm_dp_max_link_rate(i32 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @min(i32 %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %13, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sdiv i32 %62, 100
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %64, 8
  %66 = sdiv i32 %65, 10
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %81

70:                                               ; preds = %33
  %71 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %6, align 8
  %72 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.drm_display_mode*, %struct.drm_display_mode** %5, align 8
  %77 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @DRM_DEV_DEBUG_KMS(i32 %73, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %74, i32 %75, i32 %78)
  %80 = load i32, i32* @MODE_CLOCK_HIGH, align 4
  store i32 %80, i32* %3, align 4
  br label %83

81:                                               ; preds = %33
  %82 = load i32, i32* @MODE_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %70, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.cdn_dp_device* @connector_to_dp(%struct.drm_connector*) #1

declare dso_local i32 @drm_dp_max_lane_count(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @drm_dp_bw_code_to_link_rate(i32) #1

declare dso_local i32 @drm_dp_max_link_rate(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
