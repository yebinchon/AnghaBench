; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_hdmi.c_hdmi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.hdmi_audio_infoframe = type { i32, i32, i32, i32 }
%struct.hdmi_context = type { %struct.TYPE_7__*, i64, %struct.TYPE_6__*, i32*, %struct.TYPE_5__, i8*, %struct.TYPE_8__*, i8*, i32, i32, i8*, i32, %struct.device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.hdmi_audio_infoframe }
%struct.TYPE_8__ = type { i64 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"hdmi_resources_init failed\0A\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@hdmi_hotplug_work_func = common dso_local global i32 0, align 4
@hdmi_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"hdmi\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register hdmi interrupt\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"samsung,sysreg-phandle\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"sysreg regmap lookup failed.\0A\00", align 1
@HDMI_AUDIO_CODING_TYPE_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_SIZE_STREAM = common dso_local global i32 0, align 4
@HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM = common dso_local global i32 0, align 4
@hdmi_component_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @hdmi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.hdmi_audio_infoframe*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hdmi_context*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.hdmi_context* @devm_kzalloc(%struct.device* %11, i32 112, i32 %12)
  store %struct.hdmi_context* %13, %struct.hdmi_context** %6, align 8
  %14 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %15 = icmp ne %struct.hdmi_context* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %232

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.TYPE_8__* @of_device_get_match_data(%struct.device* %20)
  %22 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %23 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %22, i32 0, i32 6
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %26 = call i32 @platform_set_drvdata(%struct.platform_device* %24, %struct.hdmi_context* %25)
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %29 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %28, i32 0, i32 12
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %31 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %30, i32 0, i32 11
  %32 = call i32 @mutex_init(i32* %31)
  %33 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %34 = call i32 @hdmi_resources_init(%struct.hdmi_context* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %19
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @EPROBE_DEFER, align 4
  %40 = sub nsw i32 0, %39
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @DRM_DEV_ERROR(%struct.device* %43, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %2, align 4
  br label %232

47:                                               ; preds = %19
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = load i32, i32* @IORESOURCE_MEM, align 4
  %50 = call %struct.resource* @platform_get_resource(%struct.platform_device* %48, i32 %49, i32 0)
  store %struct.resource* %50, %struct.resource** %7, align 8
  %51 = load %struct.device*, %struct.device** %5, align 8
  %52 = load %struct.resource*, %struct.resource** %7, align 8
  %53 = call i8* @devm_ioremap_resource(%struct.device* %51, %struct.resource* %52)
  %54 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %55 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %54, i32 0, i32 10
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %57 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %56, i32 0, i32 10
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %47
  %62 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %63 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %62, i32 0, i32 10
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @PTR_ERR(i8* %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %232

67:                                               ; preds = %47
  %68 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %69 = call i32 @hdmi_get_ddc_adapter(%struct.hdmi_context* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %232

74:                                               ; preds = %67
  %75 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %76 = call i32 @hdmi_get_phy_io(%struct.hdmi_context* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %225

80:                                               ; preds = %74
  %81 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %82 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %81, i32 0, i32 9
  %83 = load i32, i32* @hdmi_hotplug_work_func, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* %82, i32 %83)
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %87 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %86, i32 0, i32 8
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @hdmi_irq_thread, align 4
  %90 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %91 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @IRQF_ONESHOT, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %96 = call i32 @devm_request_threaded_irq(%struct.device* %85, i32 %88, i32* null, i32 %89, i32 %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.hdmi_context* %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %80
  %100 = load %struct.device*, %struct.device** %5, align 8
  %101 = call i32 @DRM_DEV_ERROR(%struct.device* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %203

102:                                              ; preds = %80
  %103 = load %struct.device*, %struct.device** %5, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @syscon_regmap_lookup_by_phandle(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %107 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %108 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %107, i32 0, i32 7
  store i8* %106, i8** %108, align 8
  %109 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %110 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %109, i32 0, i32 7
  %111 = load i8*, i8** %110, align 8
  %112 = call i64 @IS_ERR(i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %102
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @DRM_DEV_ERROR(%struct.device* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %8, align 4
  br label %203

119:                                              ; preds = %102
  %120 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %121 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %120, i32 0, i32 6
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %144

126:                                              ; preds = %119
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = getelementptr inbounds %struct.device, %struct.device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @syscon_regmap_lookup_by_phandle(i32 %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %131 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %132 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %131, i32 0, i32 5
  store i8* %130, i8** %132, align 8
  %133 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %134 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %133, i32 0, i32 5
  %135 = load i8*, i8** %134, align 8
  %136 = call i64 @IS_ERR(i8* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %126
  %139 = load %struct.device*, %struct.device** %5, align 8
  %140 = call i32 @DRM_DEV_ERROR(%struct.device* %139, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %141 = load i32, i32* @EPROBE_DEFER, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  br label %203

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143, %119
  %145 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %146 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %145, i32 0, i32 0
  %147 = call i32* @cec_notifier_get(%struct.device* %146)
  %148 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %149 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %151 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %157

154:                                              ; preds = %144
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %8, align 4
  br label %203

157:                                              ; preds = %144
  %158 = load %struct.device*, %struct.device** %5, align 8
  %159 = call i32 @pm_runtime_enable(%struct.device* %158)
  %160 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %161 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  store %struct.hdmi_audio_infoframe* %162, %struct.hdmi_audio_infoframe** %4, align 8
  %163 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %164 = call i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe* %163)
  %165 = load i32, i32* @HDMI_AUDIO_CODING_TYPE_STREAM, align 4
  %166 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %167 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %166, i32 0, i32 3
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* @HDMI_AUDIO_SAMPLE_SIZE_STREAM, align 4
  %169 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %170 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @HDMI_AUDIO_SAMPLE_FREQUENCY_STREAM, align 4
  %172 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %173 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load %struct.hdmi_audio_infoframe*, %struct.hdmi_audio_infoframe** %4, align 8
  %175 = getelementptr inbounds %struct.hdmi_audio_infoframe, %struct.hdmi_audio_infoframe* %174, i32 0, i32 0
  store i32 2, i32* %175, align 4
  %176 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %177 = call i32 @hdmi_register_audio_device(%struct.hdmi_context* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %157
  br label %196

181:                                              ; preds = %157
  %182 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %183 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %182, i32 0, i32 0
  %184 = call i32 @component_add(%struct.device* %183, i32* @hdmi_component_ops)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  br label %190

188:                                              ; preds = %181
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %2, align 4
  br label %232

190:                                              ; preds = %187
  %191 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %192 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @platform_device_unregister(i32 %194)
  br label %196

196:                                              ; preds = %190, %180
  %197 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %198 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @cec_notifier_put(i32* %199)
  %201 = load %struct.device*, %struct.device** %5, align 8
  %202 = call i32 @pm_runtime_disable(%struct.device* %201)
  br label %203

203:                                              ; preds = %196, %154, %138, %114, %99
  %204 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %205 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %204, i32 0, i32 2
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = icmp ne %struct.TYPE_6__* %206, null
  br i1 %207, label %208, label %214

208:                                              ; preds = %203
  %209 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %210 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %209, i32 0, i32 2
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = call i32 @put_device(i32* %212)
  br label %214

214:                                              ; preds = %208, %203
  %215 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %216 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %224

219:                                              ; preds = %214
  %220 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %221 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @iounmap(i64 %222)
  br label %224

224:                                              ; preds = %219, %214
  br label %225

225:                                              ; preds = %224, %79
  %226 = load %struct.hdmi_context*, %struct.hdmi_context** %6, align 8
  %227 = getelementptr inbounds %struct.hdmi_context, %struct.hdmi_context* %226, i32 0, i32 0
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 0
  %230 = call i32 @put_device(i32* %229)
  %231 = load i32, i32* %8, align 4
  store i32 %231, i32* %2, align 4
  br label %232

232:                                              ; preds = %225, %188, %72, %61, %45, %16
  %233 = load i32, i32* %2, align 4
  ret i32 %233
}

declare dso_local %struct.hdmi_context* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.TYPE_8__* @of_device_get_match_data(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.hdmi_context*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @hdmi_resources_init(%struct.hdmi_context*) #1

declare dso_local i32 @DRM_DEV_ERROR(%struct.device*, i8*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @hdmi_get_ddc_adapter(%struct.hdmi_context*) #1

declare dso_local i32 @hdmi_get_phy_io(%struct.hdmi_context*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i8*, %struct.hdmi_context*) #1

declare dso_local i8* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i32* @cec_notifier_get(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @hdmi_audio_infoframe_init(%struct.hdmi_audio_infoframe*) #1

declare dso_local i32 @hdmi_register_audio_device(%struct.hdmi_context*) #1

declare dso_local i32 @component_add(%struct.device*, i32*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

declare dso_local i32 @cec_notifier_put(i32*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
