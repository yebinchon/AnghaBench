; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_cdn-dp-core.c_cdn_dp_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.cdn_dp_device = type { i32, i32, i32, i32, i32, i32, i32, %struct.cdn_dp_port**, %struct.drm_connector, %struct.drm_encoder, %struct.drm_device* }
%struct.cdn_dp_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.drm_connector = type { i32, i32 }
%struct.drm_encoder = type { i32 }
%struct.drm_device = type { i32 }

@cdn_dp_pd_event_work = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"possible_crtcs = 0x%x\0A\00", align 1
@cdn_dp_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"failed to initialize encoder with drm\0A\00", align 1
@cdn_dp_encoder_helper_funcs = common dso_local global i32 0, align 4
@DRM_CONNECTOR_POLL_HPD = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@cdn_dp_atomic_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_DisplayPort = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"failed to initialize connector with drm\0A\00", align 1
@cdn_dp_connector_helper_funcs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to attach connector and encoder\0A\00", align 1
@cdn_dp_pd_event = common dso_local global i32 0, align 4
@EXTCON_DISP_DP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"register EXTCON_DISP_DP notifier err\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @cdn_dp_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdn_dp_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cdn_dp_device*, align 8
  %9 = alloca %struct.drm_encoder*, align 8
  %10 = alloca %struct.drm_connector*, align 8
  %11 = alloca %struct.cdn_dp_port*, align 8
  %12 = alloca %struct.drm_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = call %struct.cdn_dp_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.cdn_dp_device* %16, %struct.cdn_dp_device** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.drm_device*
  store %struct.drm_device* %18, %struct.drm_device** %12, align 8
  %19 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %20 = call i32 @cdn_dp_parse_dt(%struct.cdn_dp_device* %19)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %4, align 4
  br label %143

25:                                               ; preds = %3
  %26 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %27 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %28 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %27, i32 0, i32 10
  store %struct.drm_device* %26, %struct.drm_device** %28, align 8
  %29 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %30 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %32 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  %33 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %34 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 8
  %35 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %36 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %35, i32 0, i32 3
  store i32 0, i32* %36, align 4
  %37 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %38 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %37, i32 0, i32 5
  %39 = load i32, i32* @cdn_dp_pd_event_work, align 4
  %40 = call i32 @INIT_WORK(i32* %38, i32 %39)
  %41 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %42 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %41, i32 0, i32 9
  store %struct.drm_encoder* %42, %struct.drm_encoder** %9, align 8
  %43 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = getelementptr inbounds %struct.device, %struct.device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @drm_of_find_possible_crtcs(%struct.drm_device* %43, i32 %46)
  %48 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %49 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %51 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %55 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %56 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %57 = call i32 @drm_encoder_init(%struct.drm_device* %54, %struct.drm_encoder* %55, i32* @cdn_dp_encoder_funcs, i32 %56, i32* null)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %25
  %61 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %143

63:                                               ; preds = %25
  %64 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %65 = call i32 @drm_encoder_helper_add(%struct.drm_encoder* %64, i32* @cdn_dp_encoder_helper_funcs)
  %66 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %67 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %66, i32 0, i32 8
  store %struct.drm_connector* %67, %struct.drm_connector** %10, align 8
  %68 = load i32, i32* @DRM_CONNECTOR_POLL_HPD, align 4
  %69 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %70 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %72 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %73 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.drm_device*, %struct.drm_device** %12, align 8
  %75 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %76 = load i32, i32* @DRM_MODE_CONNECTOR_DisplayPort, align 4
  %77 = call i32 @drm_connector_init(%struct.drm_device* %74, %struct.drm_connector* %75, i32* @cdn_dp_atomic_connector_funcs, i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %139

82:                                               ; preds = %63
  %83 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %84 = call i32 @drm_connector_helper_add(%struct.drm_connector* %83, i32* @cdn_dp_connector_helper_funcs)
  %85 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %86 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %87 = call i32 @drm_connector_attach_encoder(%struct.drm_connector* %85, %struct.drm_encoder* %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %136

92:                                               ; preds = %82
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %127, %92
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %96 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %130

99:                                               ; preds = %93
  %100 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %101 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %100, i32 0, i32 7
  %102 = load %struct.cdn_dp_port**, %struct.cdn_dp_port*** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.cdn_dp_port*, %struct.cdn_dp_port** %102, i64 %104
  %106 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %105, align 8
  store %struct.cdn_dp_port* %106, %struct.cdn_dp_port** %11, align 8
  %107 = load i32, i32* @cdn_dp_pd_event, align 4
  %108 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %11, align 8
  %109 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %112 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %11, align 8
  %115 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @EXTCON_DISP_DP, align 4
  %118 = load %struct.cdn_dp_port*, %struct.cdn_dp_port** %11, align 8
  %119 = getelementptr inbounds %struct.cdn_dp_port, %struct.cdn_dp_port* %118, i32 0, i32 0
  %120 = call i32 @devm_extcon_register_notifier(i32 %113, i32 %116, i32 %117, %struct.TYPE_2__* %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %99
  %124 = load %struct.device*, %struct.device** %5, align 8
  %125 = call i32 @DRM_DEV_ERROR(%struct.device* %124, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %136

126:                                              ; preds = %99
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %14, align 4
  br label %93

130:                                              ; preds = %93
  %131 = load %struct.device*, %struct.device** %5, align 8
  %132 = call i32 @pm_runtime_enable(%struct.device* %131)
  %133 = load %struct.cdn_dp_device*, %struct.cdn_dp_device** %8, align 8
  %134 = getelementptr inbounds %struct.cdn_dp_device, %struct.cdn_dp_device* %133, i32 0, i32 5
  %135 = call i32 @schedule_work(i32* %134)
  store i32 0, i32* %4, align 4
  br label %143

136:                                              ; preds = %123, %90
  %137 = load %struct.drm_connector*, %struct.drm_connector** %10, align 8
  %138 = call i32 @drm_connector_cleanup(%struct.drm_connector* %137)
  br label %139

139:                                              ; preds = %136, %80
  %140 = load %struct.drm_encoder*, %struct.drm_encoder** %9, align 8
  %141 = call i32 @drm_encoder_cleanup(%struct.drm_encoder* %140)
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %139, %130, %60, %23
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.cdn_dp_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @cdn_dp_parse_dt(%struct.cdn_dp_device*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @drm_of_find_possible_crtcs(%struct.drm_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.drm_encoder*, i32*, i32, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.drm_encoder*, i32*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.drm_connector*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.drm_connector*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.drm_connector*, %struct.drm_encoder*) #1

declare dso_local i32 @devm_extcon_register_notifier(i32, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @drm_connector_cleanup(%struct.drm_connector*) #1

declare dso_local i32 @drm_encoder_cleanup(%struct.drm_encoder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
