; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_dw_hdmi-imx.c_dw_hdmi_imx_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.dw_hdmi_plat_data = type { i32 }
%struct.of_device_id = type { %struct.dw_hdmi_plat_data* }
%struct.drm_device = type { i32 }
%struct.drm_encoder = type { i64 }
%struct.imx_hdmi = type { i32, %struct.drm_encoder, %struct.TYPE_2__* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dw_hdmi_imx_dt_ids = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@dw_hdmi_imx_encoder_helper_funcs = common dso_local global i32 0, align 4
@dw_hdmi_imx_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @dw_hdmi_imx_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_imx_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca %struct.dw_hdmi_plat_data*, align 8
  %10 = alloca %struct.of_device_id*, align 8
  %11 = alloca %struct.drm_device*, align 8
  %12 = alloca %struct.drm_encoder*, align 8
  %13 = alloca %struct.imx_hdmi*, align 8
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
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %104

27:                                               ; preds = %3
  %28 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.imx_hdmi* @devm_kzalloc(%struct.TYPE_2__* %29, i32 24, i32 %30)
  store %struct.imx_hdmi* %31, %struct.imx_hdmi** %13, align 8
  %32 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %33 = icmp ne %struct.imx_hdmi* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %104

37:                                               ; preds = %27
  %38 = load i32, i32* @dw_hdmi_imx_dt_ids, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.of_device_id* @of_match_node(i32 %38, i32 %42)
  store %struct.of_device_id* %43, %struct.of_device_id** %10, align 8
  %44 = load %struct.of_device_id*, %struct.of_device_id** %10, align 8
  %45 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %44, i32 0, i32 0
  %46 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %45, align 8
  store %struct.dw_hdmi_plat_data* %46, %struct.dw_hdmi_plat_data** %9, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %50 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %49, i32 0, i32 2
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %50, align 8
  %51 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %52 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %51, i32 0, i32 1
  store %struct.drm_encoder* %52, %struct.drm_encoder** %12, align 8
  %53 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @drm_of_find_possible_crtcs(%struct.drm_device* %53, i32 %56)
  %58 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %59 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %61 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %37
  %65 = load i32, i32* @EPROBE_DEFER, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %104

67:                                               ; preds = %37
  %68 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %69 = call i32 @dw_hdmi_imx_parse_dt(%struct.imx_hdmi* %68)
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %14, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %14, align 4
  store i32 %73, i32* %4, align 4
  br label %104

74:                                               ; preds = %67
  %75 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %76 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %75, i32* @dw_hdmi_imx_encoder_helper_funcs)
  %77 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  %78 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %79 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %80 = call i32 @drm_encoder_init(%struct.drm_device* %77, %struct.drm_encoder* %78, i32* @dw_hdmi_imx_encoder_funcs, i32 %79, i32* null)
  %81 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %82 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %83 = call i32 @platform_set_drvdata(%struct.platform_device* %81, %struct.imx_hdmi* %82)
  %84 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %85 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %86 = load %struct.dw_hdmi_plat_data*, %struct.dw_hdmi_plat_data** %9, align 8
  %87 = call i32 @dw_hdmi_bind(%struct.platform_device* %84, %struct.drm_encoder* %85, %struct.dw_hdmi_plat_data* %86)
  %88 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %89 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %91 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @IS_ERR(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %74
  %96 = load %struct.imx_hdmi*, %struct.imx_hdmi** %13, align 8
  %97 = getelementptr inbounds %struct.imx_hdmi, %struct.imx_hdmi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @PTR_ERR(i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load %struct.drm_encoder*, %struct.drm_encoder** %12, align 8
  %101 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %100)
  br label %102

102:                                              ; preds = %95, %74
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %102, %72, %64, %34, %24
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.imx_hdmi* @devm_kzalloc(%struct.TYPE_2__*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local i64 @drm_of_find_possible_crtcs(%struct.drm_device*, i32) #1

declare dso_local i32 @dw_hdmi_imx_parse_dt(%struct.imx_hdmi*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.imx_hdmi*) #1

declare dso_local i32 @dw_hdmi_bind(%struct.platform_device*, %struct.drm_encoder*, %struct.dw_hdmi_plat_data*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
