; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_dw_hdmi-rockchip.c_dw_hdmi_rockchip_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dw_hdmi_plat_data = type { %struct.rockchip_hdmi* }
%struct.rockchip_hdmi = type { i32, i32, %struct.TYPE_4__*, i32, %struct.drm_encoder, %struct.rockchip_hdmi* }
%struct.drm_encoder = type { i64 }
%struct.of_device_id = type { i32 }
%struct.drm_device = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_hdmi_rockchip_dt_ids = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Unable to parse OF data\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to enable HDMI vpll: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to get phy\0A\00", align 1
@dw_hdmi_rockchip_encoder_helper_funcs = common dso_local global i32 0, align 4
@dw_hdmi_rockchip_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dw_hdmi_rockchip_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_rockchip_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.dw_hdmi_plat_data*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.drm_encoder*, align 8
  %13 = alloca %struct.rockchip_hdmi*, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.platform_device* @to_platform_device(%struct.device* %15)
  store %struct.platform_device* %16, %struct.platform_device** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %11, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %170

27:                                               ; preds = %3
  %28 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.rockchip_hdmi* @devm_kzalloc(%struct.TYPE_4__* %29, i32 40, i32 %30)
  store %struct.rockchip_hdmi* %31, %struct.rockchip_hdmi** %13, align 8
  %32 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %33 = icmp ne %struct.rockchip_hdmi* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %170

37:                                               ; preds = %27
  %38 = load i32, i32* @dw_hdmi_rockchip_dt_ids, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.of_device_id* @of_match_node(i32 %38, i32 %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %10, align 8
  %44 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %47 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.dw_hdmi_plat_data* @devm_kmemdup(%struct.TYPE_4__* %45, i32 %48, i32 8, i32 %49)
  store %struct.dw_hdmi_plat_data* %50, %struct.dw_hdmi_plat_data** %9, align 8
  %51 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %9, align 8
  %52 = icmp ne %struct.dw_hdmi_plat_data* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %37
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %170

56:                                               ; preds = %37
  %57 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %60 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %59, i32 0, i32 2
  store %struct.TYPE_4__* %58, %struct.TYPE_4__** %60, align 8
  %61 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %9, align 8
  %62 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %61, i32 0, i32 0
  %63 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %62, align 8
  %64 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %65 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %64, i32 0, i32 5
  store %struct.rockchip_hdmi* %63, %struct.rockchip_hdmi** %65, align 8
  %66 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %67 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %9, align 8
  %68 = getelementptr inbounds %struct.dw_hdmi_plat_data, %struct.dw_hdmi_plat_data* %67, i32 0, i32 0
  store %struct.rockchip_hdmi* %66, %struct.rockchip_hdmi** %68, align 8
  %69 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %70 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %69, i32 0, i32 4
  store %struct.drm_encoder* %70, %struct.drm_encoder** %12, align 8
  %71 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @drm_of_find_possible_crtcs(%struct.drm_device* %71, i32 %74)
  %76 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %77 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %79 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %56
  %83 = load i32, i32* @EPROBE_DEFER, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %170

85:                                               ; preds = %56
  %86 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %87 = call i32 @rockchip_hdmi_parse_dt(%struct.rockchip_hdmi* %86)
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %92 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %91, i32 0, i32 2
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = call i32 (%struct.TYPE_4__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_4__* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %4, align 4
  br label %170

96:                                               ; preds = %85
  %97 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %98 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @clk_prepare_enable(i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %105 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %104, i32 0, i32 2
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %14, align 4
  %108 = call i32 (%struct.TYPE_4__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_4__* %106, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %14, align 4
  store i32 %109, i32* %4, align 4
  br label %170

110:                                              ; preds = %96
  %111 = load %struct.device*, %struct.device** %5, align 8
  %112 = call i32 @devm_phy_optional_get(%struct.device* %111, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %113 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %114 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 8
  %115 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %116 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i64 @IS_ERR(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %110
  %121 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %122 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @PTR_ERR(i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* @EPROBE_DEFER, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp ne i32 %125, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %131 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %130, i32 0, i32 2
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = call i32 (%struct.TYPE_4__*, i8*, ...) @DRM_DEV_ERROR(%struct.TYPE_4__* %132, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %134

134:                                              ; preds = %129, %120
  %135 = load i32, i32* %14, align 4
  store i32 %135, i32* %4, align 4
  br label %170

136:                                              ; preds = %110
  %137 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %138 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %137, i32* @dw_hdmi_rockchip_encoder_helper_funcs)
  %139 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %140 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %141 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %142 = call i32 @drm_encoder_init(%struct.drm_device* %139, %struct.drm_encoder* %140, i32* @dw_hdmi_rockchip_encoder_funcs, i32 %141, i32* null)
  %143 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %144 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %145 = call i32 @platform_set_drvdata(%struct.platform_device* %143, %struct.rockchip_hdmi* %144)
  %146 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %147 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %148 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %9, align 8
  %149 = call i32 @dw_hdmi_bind(%struct.platform_device* %146, %struct.drm_encoder* %147, %struct.dw_hdmi_plat_data* %148)
  %150 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %151 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %153 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i64 @IS_ERR(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %136
  %158 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %159 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @PTR_ERR(i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %163 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %162)
  %164 = load %struct.rockchip_hdmi*, %struct.rockchip_hdmi** %13, align 8
  %165 = getelementptr inbounds %struct.rockchip_hdmi, %struct.rockchip_hdmi* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @clk_disable_unprepare(i32 %166)
  br label %168

168:                                              ; preds = %157, %136
  %169 = load i32, i32* %14, align 4
  store i32 %169, i32* %4, align 4
  br label %170

170:                                              ; preds = %168, %134, %103, %90, %82, %53, %34, %24
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.rockchip_hdmi* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.dw_hdmi_plat_data* @devm_kmemdup(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i64 @drm_of_find_possible_crtcs(%struct.drm_device*, i32) #1

declare dso_local i32 @rockchip_hdmi_parse_dt(%struct.rockchip_hdmi*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.TYPE_4__*, i8*, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rockchip_hdmi*) #1

declare dso_local i32 @dw_hdmi_bind(%struct.platform_device*, %struct.drm_encoder*, %struct.dw_hdmi_plat_data*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
