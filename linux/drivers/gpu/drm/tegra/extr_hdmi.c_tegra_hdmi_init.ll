; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tegra/extr_hdmi.c_tegra_hdmi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_client = type { i32, i32 }
%struct.drm_device = type { i32 }
%struct.tegra_hdmi = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__, %struct.TYPE_11__, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@tegra_hdmi_connector_funcs = common dso_local global i32 0, align 4
@DRM_MODE_CONNECTOR_HDMIA = common dso_local global i32 0, align 4
@tegra_hdmi_connector_helper_funcs = common dso_local global i32 0, align 4
@DRM_MODE_DPMS_OFF = common dso_local global i32 0, align 4
@tegra_hdmi_encoder_funcs = common dso_local global i32 0, align 4
@DRM_MODE_ENCODER_TMDS = common dso_local global i32 0, align 4
@tegra_hdmi_encoder_helper_funcs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to initialize output: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to enable HDMI regulator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to enable PLL regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to enable VDD regulator: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.host1x_client*)* @tegra_hdmi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_hdmi_init(%struct.host1x_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host1x_client*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.tegra_hdmi*, align 8
  %6 = alloca i32, align 4
  store %struct.host1x_client* %0, %struct.host1x_client** %3, align 8
  %7 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %8 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.drm_device* @dev_get_drvdata(i32 %9)
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %12 = call %struct.tegra_hdmi* @host1x_client_to_hdmi(%struct.host1x_client* %11)
  store %struct.tegra_hdmi* %12, %struct.tegra_hdmi** %5, align 8
  %13 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %14 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = load i32, i32* @DRM_MODE_CONNECTOR_HDMIA, align 4
  %24 = call i32 @drm_connector_init(%struct.drm_device* %19, %struct.TYPE_11__* %22, i32* @tegra_hdmi_connector_funcs, i32 %23)
  %25 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = call i32 @drm_connector_helper_add(%struct.TYPE_11__* %27, i32* @tegra_hdmi_connector_helper_funcs)
  %29 = load i32, i32* @DRM_MODE_DPMS_OFF, align 4
  %30 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %31 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  store i32 %29, i32* %33, align 4
  %34 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %35 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %36 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* @DRM_MODE_ENCODER_TMDS, align 4
  %39 = call i32 @drm_encoder_init(%struct.drm_device* %34, %struct.TYPE_10__* %37, i32* @tegra_hdmi_encoder_funcs, i32 %38, i32* null)
  %40 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %41 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = call i32 @drm_encoder_helper_add(%struct.TYPE_10__* %42, i32* @tegra_hdmi_encoder_helper_funcs)
  %44 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %45 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %48 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = call i32 @drm_connector_attach_encoder(%struct.TYPE_11__* %46, %struct.TYPE_10__* %49)
  %51 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %52 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = call i32 @drm_connector_register(%struct.TYPE_11__* %53)
  %55 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %56 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %56, i32 0, i32 4
  %58 = call i32 @tegra_output_init(%struct.drm_device* %55, %struct.TYPE_9__* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %1
  %62 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %63 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @dev_err(i32 %64, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %115

68:                                               ; preds = %1
  %69 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %70 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 3, i32* %72, align 4
  %73 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %74 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regulator_enable(i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.host1x_client*, %struct.host1x_client** %3, align 8
  %81 = getelementptr inbounds %struct.host1x_client, %struct.host1x_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %2, align 4
  br label %115

86:                                               ; preds = %68
  %87 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %88 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @regulator_enable(i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %95 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @dev_err(i32 %96, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %115

100:                                              ; preds = %86
  %101 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %102 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @regulator_enable(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.tegra_hdmi*, %struct.tegra_hdmi** %5, align 8
  %109 = getelementptr inbounds %struct.tegra_hdmi, %struct.tegra_hdmi* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @dev_err(i32 %110, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %115

114:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %107, %93, %79, %61
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.drm_device* @dev_get_drvdata(i32) #1

declare dso_local %struct.tegra_hdmi* @host1x_client_to_hdmi(%struct.host1x_client*) #1

declare dso_local i32 @drm_connector_init(%struct.drm_device*, %struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @drm_connector_helper_add(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @drm_encoder_init(%struct.drm_device*, %struct.TYPE_10__*, i32*, i32, i32*) #1

declare dso_local i32 @drm_encoder_helper_add(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @drm_connector_attach_encoder(%struct.TYPE_11__*, %struct.TYPE_10__*) #1

declare dso_local i32 @drm_connector_register(%struct.TYPE_11__*) #1

declare dso_local i32 @tegra_output_init(%struct.drm_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
