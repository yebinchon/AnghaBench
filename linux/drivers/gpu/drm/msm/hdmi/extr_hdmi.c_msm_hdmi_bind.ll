; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi.c_msm_hdmi_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32 }
%struct.device = type { %struct.hdmi_platform_config*, %struct.device_node* }
%struct.hdmi_platform_config = type { i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, %struct.hdmi* }
%struct.hdmi = type { i32* }
%struct.device_node = type { i32 }
%struct.drm_device = type { %struct.msm_drm_private* }
%struct.msm_drm_private = type { %struct.hdmi* }
%struct.gpio_desc = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"unknown hdmi_cfg: %pOFn\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"core_physical\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"qfprom_physical\00", align 1
@HDMI_MAX_NUM_GPIO = common dso_local global i32 0, align 4
@msm_hdmi_gpio_pdata = common dso_local global %struct.TYPE_4__* null, align 8
@GPIOD_ASIS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"qcom,hdmi-tx-%s\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"failed to get gpio: %s\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to attach an audio codec %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device*, i8*)* @msm_hdmi_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_hdmi_bind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca %struct.msm_drm_private*, align 8
  %10 = alloca %struct.hdmi_platform_config*, align 8
  %11 = alloca %struct.hdmi*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.gpio_desc*, align 8
  %17 = alloca [32 x i8], align 16
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device* %1, %struct.device** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.device*, %struct.device** %6, align 8
  %19 = call %struct.drm_device* @dev_get_drvdata(%struct.device* %18)
  store %struct.drm_device* %19, %struct.drm_device** %8, align 8
  %20 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %21 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %20, i32 0, i32 0
  %22 = load %struct.msm_drm_private*, %struct.msm_drm_private** %21, align 8
  store %struct.msm_drm_private* %22, %struct.msm_drm_private** %9, align 8
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 1
  %25 = load %struct.device_node*, %struct.device_node** %24, align 8
  store %struct.device_node* %25, %struct.device_node** %12, align 8
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i64 @of_device_get_match_data(%struct.device* %26)
  %28 = inttoptr i64 %27 to %struct.hdmi_platform_config*
  store %struct.hdmi_platform_config* %28, %struct.hdmi_platform_config** %10, align 8
  %29 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %30 = icmp ne %struct.hdmi_platform_config* %29, null
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %5, align 8
  %33 = load %struct.device_node*, %struct.device_node** %12, align 8
  %34 = call i32 @DRM_DEV_ERROR(%struct.device* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.device_node* %33)
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %176

37:                                               ; preds = %3
  %38 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %39 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %38, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8** %39, align 8
  %40 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %41 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %40, i32 0, i32 1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %41, align 8
  store i32 0, i32* %13, align 4
  br label %42

42:                                               ; preds = %145, %37
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* @HDMI_MAX_NUM_GPIO, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %148

46:                                               ; preds = %42
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msm_hdmi_gpio_pdata, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %15, align 8
  %53 = load %struct.device*, %struct.device** %5, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i32, i32* @GPIOD_ASIS, align 4
  %56 = call %struct.hdmi* @devm_gpiod_get_optional(%struct.device* %53, i8* %54, i32 %55)
  %57 = bitcast %struct.hdmi* %56 to %struct.gpio_desc*
  store %struct.gpio_desc* %57, %struct.gpio_desc** %16, align 8
  %58 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %59 = bitcast %struct.gpio_desc* %58 to %struct.hdmi*
  %60 = call i64 @IS_ERR(%struct.hdmi* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %46
  %63 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %64 = bitcast %struct.gpio_desc* %63 to %struct.hdmi*
  %65 = call i32 @PTR_ERR(%struct.hdmi* %64)
  store i32 %65, i32* %4, align 4
  br label %176

66:                                               ; preds = %46
  %67 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %68 = icmp ne %struct.gpio_desc* %67, null
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  %70 = load i8*, i8** %15, align 8
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %72 = call i64 @sscanf(i8* %70, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.device*, %struct.device** %5, align 8
  %76 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i64 0, i64 0
  %77 = load i32, i32* @GPIOD_ASIS, align 4
  %78 = call %struct.hdmi* @devm_gpiod_get_optional(%struct.device* %75, i8* %76, i32 %77)
  %79 = bitcast %struct.hdmi* %78 to %struct.gpio_desc*
  store %struct.gpio_desc* %79, %struct.gpio_desc** %16, align 8
  br label %80

80:                                               ; preds = %74, %69
  %81 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %82 = bitcast %struct.gpio_desc* %81 to %struct.hdmi*
  %83 = call i64 @IS_ERR(%struct.hdmi* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %87 = bitcast %struct.gpio_desc* %86 to %struct.hdmi*
  %88 = call i32 @PTR_ERR(%struct.hdmi* %87)
  store i32 %88, i32* %4, align 4
  br label %176

89:                                               ; preds = %80
  %90 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %91 = icmp ne %struct.gpio_desc* %90, null
  br i1 %91, label %95, label %92

92:                                               ; preds = %89
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %93)
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %66
  %97 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %98 = bitcast %struct.gpio_desc* %97 to %struct.hdmi*
  %99 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %100 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %99, i32 0, i32 2
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store %struct.hdmi* %98, %struct.hdmi** %105, align 8
  %106 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %107 = icmp ne %struct.gpio_desc* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %96
  %109 = load %struct.gpio_desc*, %struct.gpio_desc** %16, align 8
  %110 = bitcast %struct.gpio_desc* %109 to %struct.hdmi*
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msm_hdmi_gpio_pdata, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @gpiod_set_consumer_name(%struct.hdmi* %110, i32 %116)
  br label %118

118:                                              ; preds = %108, %96
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msm_hdmi_gpio_pdata, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %126 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %125, i32 0, i32 2
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 1
  store i32 %124, i32* %131, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @msm_hdmi_gpio_pdata, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %139 = getelementptr inbounds %struct.hdmi_platform_config, %struct.hdmi_platform_config* %138, i32 0, i32 2
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %139, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  store i32 %137, i32* %144, align 8
  br label %145

145:                                              ; preds = %118
  %146 = load i32, i32* %13, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %13, align 4
  br label %42

148:                                              ; preds = %42
  %149 = load %struct.hdmi_platform_config*, %struct.hdmi_platform_config** %10, align 8
  %150 = load %struct.device*, %struct.device** %5, align 8
  %151 = getelementptr inbounds %struct.device, %struct.device* %150, i32 0, i32 0
  store %struct.hdmi_platform_config* %149, %struct.hdmi_platform_config** %151, align 8
  %152 = load %struct.device*, %struct.device** %5, align 8
  %153 = call i32 @to_platform_device(%struct.device* %152)
  %154 = call %struct.hdmi* @msm_hdmi_init(i32 %153)
  store %struct.hdmi* %154, %struct.hdmi** %11, align 8
  %155 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  %156 = call i64 @IS_ERR(%struct.hdmi* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %148
  %159 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  %160 = call i32 @PTR_ERR(%struct.hdmi* %159)
  store i32 %160, i32* %4, align 4
  br label %176

161:                                              ; preds = %148
  %162 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  %163 = load %struct.msm_drm_private*, %struct.msm_drm_private** %9, align 8
  %164 = getelementptr inbounds %struct.msm_drm_private, %struct.msm_drm_private* %163, i32 0, i32 0
  store %struct.hdmi* %162, %struct.hdmi** %164, align 8
  %165 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  %166 = load %struct.device*, %struct.device** %5, align 8
  %167 = call i32 @msm_hdmi_register_audio_driver(%struct.hdmi* %165, %struct.device* %166)
  store i32 %167, i32* %14, align 4
  %168 = load i32, i32* %14, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %161
  %171 = load i32, i32* %14, align 4
  %172 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  %173 = load %struct.hdmi*, %struct.hdmi** %11, align 8
  %174 = getelementptr inbounds %struct.hdmi, %struct.hdmi* %173, i32 0, i32 0
  store i32* null, i32** %174, align 8
  br label %175

175:                                              ; preds = %170, %161
  store i32 0, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %158, %85, %62, %31
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local %struct.drm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local %struct.hdmi* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hdmi*) #1

declare dso_local i32 @PTR_ERR(%struct.hdmi*) #1

declare dso_local i64 @sscanf(i8*, i8*, i8*) #1

declare dso_local i32 @DBG(i8*, i8*) #1

declare dso_local i32 @gpiod_set_consumer_name(%struct.hdmi*, i32) #1

declare dso_local %struct.hdmi* @msm_hdmi_init(i32) #1

declare dso_local i32 @to_platform_device(%struct.device*) #1

declare dso_local i32 @msm_hdmi_register_audio_driver(%struct.hdmi*, %struct.device*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
