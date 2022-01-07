; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_analogix_dp-rockchip.c_rockchip_dp_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.analogix_dp_plat_data = type { i32 }
%struct.drm_connector = type { %struct.drm_display_info }
%struct.drm_display_info = type { i32, i32 }

@DRM_COLOR_FORMAT_YCRCB444 = common dso_local global i32 0, align 4
@DRM_COLOR_FORMAT_YCRCB422 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Swapping display color format from YUV to RGB\0A\00", align 1
@DRM_COLOR_FORMAT_RGB444 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.analogix_dp_plat_data*, %struct.drm_connector*)* @rockchip_dp_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_dp_get_modes(%struct.analogix_dp_plat_data* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.analogix_dp_plat_data*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_display_info*, align 8
  %6 = alloca i32, align 4
  store %struct.analogix_dp_plat_data* %0, %struct.analogix_dp_plat_data** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %7, i32 0, i32 0
  store %struct.drm_display_info* %8, %struct.drm_display_info** %5, align 8
  %9 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB444, align 4
  %10 = load i32, i32* @DRM_COLOR_FORMAT_YCRCB422, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %13 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %23 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @DRM_COLOR_FORMAT_RGB444, align 4
  %27 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %28 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.drm_display_info*, %struct.drm_display_info** %5, align 8
  %32 = getelementptr inbounds %struct.drm_display_info, %struct.drm_display_info* %31, i32 0, i32 1
  store i32 8, i32* %32, align 4
  br label %33

33:                                               ; preds = %18, %2
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
