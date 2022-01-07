; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_grf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_lvds.c_rockchip_lvds_grf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_encoder = type { i32 }
%struct.drm_display_mode = type { i32, i32, i32 }
%struct.rockchip_lvds = type { i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@DRM_MODE_FLAG_PHSYNC = common dso_local global i32 0, align 4
@DRM_MODE_FLAG_PCSYNC = common dso_local global i32 0, align 4
@DISPLAY_OUTPUT_RGB = common dso_local global i64 0, align 8
@LVDS_CH0_EN = common dso_local global i32 0, align 4
@LVDS_TTL_EN = common dso_local global i32 0, align 4
@LVDS_CH1_EN = common dso_local global i32 0, align 4
@DISPLAY_OUTPUT_DUAL_LVDS = common dso_local global i64 0, align 8
@LVDS_DUAL = common dso_local global i32 0, align 4
@LVDS_START_PHASE_RST_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Could not write to GRF: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_encoder*, %struct.drm_display_mode*)* @rockchip_lvds_grf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_lvds_grf_config(%struct.drm_encoder* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_encoder*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  %5 = alloca %struct.rockchip_lvds*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_encoder* %0, %struct.drm_encoder** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %10 = load %struct.drm_encoder*, %struct.drm_encoder** %3, align 8
  %11 = call %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder* %10)
  store %struct.rockchip_lvds* %11, %struct.rockchip_lvds** %5, align 8
  %12 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %13 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @DRM_MODE_FLAG_PHSYNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  store i32 %19, i32* %6, align 4
  %20 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %21 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DRM_MODE_FLAG_PCSYNC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %7, align 4
  %28 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DISPLAY_OUTPUT_RGB, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %59

33:                                               ; preds = %2
  %34 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %35 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %34, i32 0, i32 5
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = icmp ne %struct.TYPE_3__* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %33
  %39 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %40 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @IS_ERR(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %58, label %46

46:                                               ; preds = %38
  %47 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %48 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %53 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %52, i32 0, i32 5
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @pinctrl_select_state(i32 %51, i32 %56)
  br label %58

58:                                               ; preds = %46, %38, %33
  br label %59

59:                                               ; preds = %58, %2
  %60 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %61 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LVDS_CH0_EN, align 4
  %64 = or i32 %62, %63
  store i32 %64, i32* %8, align 4
  %65 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %66 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DISPLAY_OUTPUT_RGB, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %59
  %71 = load i32, i32* @LVDS_TTL_EN, align 4
  %72 = load i32, i32* @LVDS_CH1_EN, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %8, align 4
  br label %89

76:                                               ; preds = %59
  %77 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %78 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @DISPLAY_OUTPUT_DUAL_LVDS, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i32, i32* @LVDS_DUAL, align 4
  %84 = load i32, i32* @LVDS_CH1_EN, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* %8, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %8, align 4
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %70
  %90 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %91 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %94 = getelementptr inbounds %struct.drm_display_mode, %struct.drm_display_mode* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = and i32 %96, 1
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %89
  %100 = load i32, i32* @LVDS_START_PHASE_RST_1, align 4
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  br label %103

103:                                              ; preds = %99, %89
  %104 = load i32, i32* %7, align 4
  %105 = shl i32 %104, 8
  %106 = load i32, i32* %6, align 4
  %107 = shl i32 %106, 9
  %108 = or i32 %105, %107
  %109 = load i32, i32* %8, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, -65536
  store i32 %112, i32* %8, align 4
  %113 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %114 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %117 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %116, i32 0, i32 3
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @regmap_write(i32 %115, i32 %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %103
  %126 = load %struct.rockchip_lvds*, %struct.rockchip_lvds** %5, align 8
  %127 = getelementptr inbounds %struct.rockchip_lvds, %struct.rockchip_lvds* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @DRM_DEV_ERROR(i32 %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %125, %103
  ret void
}

declare dso_local %struct.rockchip_lvds* @encoder_to_lvds(%struct.drm_encoder*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @DRM_DEV_ERROR(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
