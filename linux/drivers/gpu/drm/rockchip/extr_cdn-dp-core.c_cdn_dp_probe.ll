; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.of_device_id = type { i64 }
%struct.cdn_dp_data = type { i32 }
%struct.cdn_dp_port = type { i32, %struct.cdn_dp_device*, %struct.phy*, %struct.phy* }
%struct.cdn_dp_device = type { i32, i32, %struct.cdn_dp_port**, %struct.device* }
%struct.phy = type { i32 }
%struct.extcon_dev = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cdn_dp_dt_ids = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"missing extcon or phy\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cdn_dp_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @cdn_dp_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_device_id*, align 8
  %6 = alloca %struct.cdn_dp_data*, align 8
  %7 = alloca %struct.cdn_dp_port*, align 8
  %8 = alloca %struct.cdn_dp_device*, align 8
  %9 = alloca %struct.extcon_dev*, align 8
  %10 = alloca %struct.phy*, align 8
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kzalloc(%struct.device* %14, i32 24, i32 %15)
  %17 = bitcast i8* %16 to %struct.cdn_dp_device*
  store %struct.cdn_dp_device* %17, %struct.cdn_dp_device** %8, align 8
  %18 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %19 = icmp ne %struct.cdn_dp_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %138

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %26 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %25, i32 0, i32 3
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load i32, i32* @cdn_dp_dt_ids, align 4
  %28 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.of_device_id* @of_match_node(i32 %27, i32 %31)
  store %struct.of_device_id* %32, %struct.of_device_id** %5, align 8
  %33 = load %struct.of_device_id*, %struct.of_device_id** %5, align 8
  %34 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.cdn_dp_data*
  store %struct.cdn_dp_data* %36, %struct.cdn_dp_data** %6, align 8
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %113, %23
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.cdn_dp_data*, %struct.cdn_dp_data** %6, align 8
  %40 = getelementptr inbounds %struct.cdn_dp_data, %struct.cdn_dp_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %116

43:                                               ; preds = %37
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.phy* @extcon_get_edev_by_phandle(%struct.device* %44, i32 %45)
  %47 = bitcast %struct.phy* %46 to %struct.extcon_dev*
  store %struct.extcon_dev* %47, %struct.extcon_dev** %9, align 8
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = getelementptr inbounds %struct.device, %struct.device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call %struct.phy* @devm_of_phy_get_by_index(%struct.device* %48, i32 %51, i32 %52)
  store %struct.phy* %53, %struct.phy** %10, align 8
  %54 = load %struct.extcon_dev*, %struct.extcon_dev** %9, align 8
  %55 = bitcast %struct.extcon_dev* %54 to %struct.phy*
  %56 = call i32 @PTR_ERR(%struct.phy* %55)
  %57 = load i32, i32* @EPROBE_DEFER, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %43
  %61 = load %struct.phy*, %struct.phy** %10, align 8
  %62 = call i32 @PTR_ERR(%struct.phy* %61)
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %60, %43
  %67 = load i32, i32* @EPROBE_DEFER, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  br label %138

69:                                               ; preds = %60
  %70 = load %struct.extcon_dev*, %struct.extcon_dev** %9, align 8
  %71 = bitcast %struct.extcon_dev* %70 to %struct.phy*
  %72 = call i64 @IS_ERR(%struct.phy* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load %struct.phy*, %struct.phy** %10, align 8
  %76 = call i64 @IS_ERR(%struct.phy* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %69
  br label %113

79:                                               ; preds = %74
  %80 = load %struct.device*, %struct.device** %4, align 8
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @devm_kzalloc(%struct.device* %80, i32 32, i32 %81)
  %83 = bitcast i8* %82 to %struct.cdn_dp_port*
  store %struct.cdn_dp_port* %83, %struct.cdn_dp_port** %7, align 8
  %84 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %85 = icmp ne %struct.cdn_dp_port* %84, null
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %138

89:                                               ; preds = %79
  %90 = load %struct.extcon_dev*, %struct.extcon_dev** %9, align 8
  %91 = bitcast %struct.extcon_dev* %90 to %struct.phy*
  %92 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %93 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %92, i32 0, i32 3
  store %struct.phy* %91, %struct.phy** %93, align 8
  %94 = load %struct.phy*, %struct.phy** %10, align 8
  %95 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %96 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %95, i32 0, i32 2
  store %struct.phy* %94, %struct.phy** %96, align 8
  %97 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %98 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %99 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %98, i32 0, i32 1
  store %struct.cdn_dp_device* %97, %struct.cdn_dp_device** %99, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %102 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %7, align 8
  %104 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %105 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %104, i32 0, i32 2
  %106 = load %struct.cdn_dp_port**, %struct.cdn_dp_port*** %105, align 8
  %107 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %108 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds %struct.cdn_dp_port*, %struct.cdn_dp_port** %106, i64 %111
  store %struct.cdn_dp_port* %103, %struct.cdn_dp_port** %112, align 8
  br label %113

113:                                              ; preds = %89, %78
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %11, align 4
  br label %37

116:                                              ; preds = %37
  %117 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %118 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %116
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = call i32 @DRM_DEV_ERROR(%struct.device* %122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %138

126:                                              ; preds = %116
  %127 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %128 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %127, i32 0, i32 0
  %129 = call i32 @mutex_init(i32* %128)
  %130 = load %struct.device*, %struct.device** %4, align 8
  %131 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %132 = call i32 @dev_set_drvdata(%struct.device* %130, %struct.cdn_dp_device* %131)
  %133 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %134 = load %struct.device*, %struct.device** %4, align 8
  %135 = call i32 @cdn_dp_audio_codec_init(%struct.cdn_dp_device* %133, %struct.device* %134)
  %136 = load %struct.device*, %struct.device** %4, align 8
  %137 = call i32 @component_add(%struct.device* %136, i32* @cdn_dp_component_ops)
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %126, %121, %86, %66, %20
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i8* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.of_device_id* @of_match_node(i32, i32) #1

declare dso_local %struct.phy* @extcon_get_edev_by_phandle(%struct.device*, i32) #1

declare dso_local %struct.phy* @devm_of_phy_get_by_index(%struct.device*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.cdn_dp_device*) #1

declare dso_local i32 @cdn_dp_audio_codec_init(%struct.cdn_dp_device*, %struct.device*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
