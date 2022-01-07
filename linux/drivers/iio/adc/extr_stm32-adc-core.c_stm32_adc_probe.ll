; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_4__*, %struct.device_node* }
%struct.TYPE_4__ = type { i32 }
%struct.device_node = type { i32 }
%struct.stm32_adc_priv = type { %struct.stm32_adc_priv_cfg*, %struct.TYPE_5__, i32*, i32*, i32*, i32* }
%struct.stm32_adc_priv_cfg = type { i32 (%struct.platform_device.0*, %struct.stm32_adc_priv.1*)* }
%struct.platform_device.0 = type opaque
%struct.stm32_adc_priv.1 = type opaque
%struct.TYPE_5__ = type { i32, i32, i32* }
%struct.resource = type { i32 }
%struct.TYPE_6__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"vdda\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"vdda get failed, %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"vref get failed, %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"Can't get 'adc' clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Can't get 'bus' clock\0A\00", align 1
@STM32_ADC_CORE_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"vref get voltage failed, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"vref+=%dmV\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"failed to populate DT children\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.stm32_adc_priv*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 1
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 1
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  %19 = icmp ne %struct.device_node* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %287

23:                                               ; preds = %1
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.stm32_adc_priv* @devm_kzalloc(%struct.device* %25, i32 56, i32 %26)
  store %struct.stm32_adc_priv* %27, %struct.stm32_adc_priv** %4, align 8
  %28 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %29 = icmp ne %struct.stm32_adc_priv* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %287

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %36 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %35, i32 0, i32 1
  %37 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.TYPE_5__* %36)
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call %struct.TYPE_6__* @of_match_device(i32 %42, %struct.device* %43)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.stm32_adc_priv_cfg*
  %48 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %49 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %48, i32 0, i32 0
  store %struct.stm32_adc_priv_cfg* %47, %struct.stm32_adc_priv_cfg** %49, align 8
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %7, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %7, align 8
  %56 = call i32* @devm_ioremap_resource(%struct.device* %54, %struct.resource* %55)
  %57 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %58 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i32* %56, i32** %59, align 8
  %60 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %61 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = call i64 @IS_ERR(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %33
  %67 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %68 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %2, align 4
  br label %287

72:                                               ; preds = %33
  %73 = load %struct.resource*, %struct.resource** %7, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %77 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %79, i32 0, i32 0
  %81 = call i8* @devm_regulator_get(%struct.device* %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %84 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %83, i32 0, i32 5
  store i32* %82, i32** %84, align 8
  %85 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %86 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %85, i32 0, i32 5
  %87 = load i32*, i32** %86, align 8
  %88 = call i64 @IS_ERR(i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %72
  %91 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %92 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @EPROBE_DEFER, align 4
  %97 = sub nsw i32 0, %96
  %98 = icmp ne i32 %95, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %90
  %100 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %101 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %100, i32 0, i32 0
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %99, %90
  %105 = load i32, i32* %8, align 4
  store i32 %105, i32* %2, align 4
  br label %287

106:                                              ; preds = %72
  %107 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %108 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %107, i32 0, i32 0
  %109 = call i8* @devm_regulator_get(%struct.device* %108, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %110 = bitcast i8* %109 to i32*
  %111 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %112 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %111, i32 0, i32 2
  store i32* %110, i32** %112, align 8
  %113 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %114 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @IS_ERR(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %106
  %119 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %120 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @PTR_ERR(i32* %121)
  store i32 %122, i32* %8, align 4
  %123 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %124 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %123, i32 0, i32 0
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %124, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %8, align 4
  store i32 %127, i32* %2, align 4
  br label %287

128:                                              ; preds = %106
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = call i8* @devm_clk_get(%struct.device* %130, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %132 = bitcast i8* %131 to i32*
  %133 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %134 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %133, i32 0, i32 4
  store i32* %132, i32** %134, align 8
  %135 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %136 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %135, i32 0, i32 4
  %137 = load i32*, i32** %136, align 8
  %138 = call i64 @IS_ERR(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %128
  %141 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %142 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @PTR_ERR(i32* %143)
  store i32 %144, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @ENOENT, align 4
  %147 = sub nsw i32 0, %146
  %148 = icmp ne i32 %145, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %151 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %150, i32 0, i32 0
  %152 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %151, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %153 = load i32, i32* %8, align 4
  store i32 %153, i32* %2, align 4
  br label %287

154:                                              ; preds = %140
  %155 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %156 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %155, i32 0, i32 4
  store i32* null, i32** %156, align 8
  br label %157

157:                                              ; preds = %154, %128
  %158 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %159 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %158, i32 0, i32 0
  %160 = call i8* @devm_clk_get(%struct.device* %159, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %161 = bitcast i8* %160 to i32*
  %162 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %163 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %162, i32 0, i32 3
  store i32* %161, i32** %163, align 8
  %164 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %165 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = call i64 @IS_ERR(i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %157
  %170 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %171 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @PTR_ERR(i32* %172)
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* @ENOENT, align 4
  %176 = sub nsw i32 0, %175
  %177 = icmp ne i32 %174, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %180 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %179, i32 0, i32 0
  %181 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %2, align 4
  br label %287

183:                                              ; preds = %169
  %184 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %185 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %184, i32 0, i32 3
  store i32* null, i32** %185, align 8
  br label %186

186:                                              ; preds = %183, %157
  %187 = load %struct.device*, %struct.device** %5, align 8
  %188 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %189 = call i32 @stm32_adc_core_switches_probe(%struct.device* %187, %struct.stm32_adc_priv* %188)
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %2, align 4
  br label %287

194:                                              ; preds = %186
  %195 = load %struct.device*, %struct.device** %5, align 8
  %196 = call i32 @pm_runtime_get_noresume(%struct.device* %195)
  %197 = load %struct.device*, %struct.device** %5, align 8
  %198 = call i32 @pm_runtime_set_active(%struct.device* %197)
  %199 = load %struct.device*, %struct.device** %5, align 8
  %200 = load i32, i32* @STM32_ADC_CORE_SLEEP_DELAY_MS, align 4
  %201 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %199, i32 %200)
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = call i32 @pm_runtime_use_autosuspend(%struct.device* %202)
  %204 = load %struct.device*, %struct.device** %5, align 8
  %205 = call i32 @pm_runtime_enable(%struct.device* %204)
  %206 = load %struct.device*, %struct.device** %5, align 8
  %207 = call i32 @stm32_adc_core_hw_start(%struct.device* %206)
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* %8, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %194
  br label %279

211:                                              ; preds = %194
  %212 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %213 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %212, i32 0, i32 2
  %214 = load i32*, i32** %213, align 8
  %215 = call i32 @regulator_get_voltage(i32* %214)
  store i32 %215, i32* %8, align 4
  %216 = load i32, i32* %8, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %211
  %219 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %220 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %219, i32 0, i32 0
  %221 = load i32, i32* %8, align 4
  %222 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %220, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %221)
  br label %276

223:                                              ; preds = %211
  %224 = load i32, i32* %8, align 4
  %225 = sdiv i32 %224, 1000
  %226 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %227 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 8
  %229 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %230 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %229, i32 0, i32 0
  %231 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %232 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = call i32 @dev_dbg(%struct.device* %230, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %234)
  %236 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %237 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %236, i32 0, i32 0
  %238 = load %struct.stm32_adc_priv_cfg*, %struct.stm32_adc_priv_cfg** %237, align 8
  %239 = getelementptr inbounds %struct.stm32_adc_priv_cfg, %struct.stm32_adc_priv_cfg* %238, i32 0, i32 0
  %240 = load i32 (%struct.platform_device.0*, %struct.stm32_adc_priv.1*)*, i32 (%struct.platform_device.0*, %struct.stm32_adc_priv.1*)** %239, align 8
  %241 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %242 = bitcast %struct.platform_device* %241 to %struct.platform_device.0*
  %243 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %244 = bitcast %struct.stm32_adc_priv* %243 to %struct.stm32_adc_priv.1*
  %245 = call i32 %240(%struct.platform_device.0* %242, %struct.stm32_adc_priv.1* %244)
  store i32 %245, i32* %8, align 4
  %246 = load i32, i32* %8, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %223
  br label %276

249:                                              ; preds = %223
  %250 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %251 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %252 = call i32 @stm32_adc_irq_probe(%struct.platform_device* %250, %struct.stm32_adc_priv* %251)
  store i32 %252, i32* %8, align 4
  %253 = load i32, i32* %8, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %249
  br label %276

256:                                              ; preds = %249
  %257 = load %struct.device_node*, %struct.device_node** %6, align 8
  %258 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %259 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %258, i32 0, i32 0
  %260 = call i32 @of_platform_populate(%struct.device_node* %257, i32* null, i32* null, %struct.device* %259)
  store i32 %260, i32* %8, align 4
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %256
  %264 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %265 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %264, i32 0, i32 0
  %266 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %265, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %272

267:                                              ; preds = %256
  %268 = load %struct.device*, %struct.device** %5, align 8
  %269 = call i32 @pm_runtime_mark_last_busy(%struct.device* %268)
  %270 = load %struct.device*, %struct.device** %5, align 8
  %271 = call i32 @pm_runtime_put_autosuspend(%struct.device* %270)
  store i32 0, i32* %2, align 4
  br label %287

272:                                              ; preds = %263
  %273 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %274 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %4, align 8
  %275 = call i32 @stm32_adc_irq_remove(%struct.platform_device* %273, %struct.stm32_adc_priv* %274)
  br label %276

276:                                              ; preds = %272, %255, %248, %218
  %277 = load %struct.device*, %struct.device** %5, align 8
  %278 = call i32 @stm32_adc_core_hw_stop(%struct.device* %277)
  br label %279

279:                                              ; preds = %276, %210
  %280 = load %struct.device*, %struct.device** %5, align 8
  %281 = call i32 @pm_runtime_disable(%struct.device* %280)
  %282 = load %struct.device*, %struct.device** %5, align 8
  %283 = call i32 @pm_runtime_set_suspended(%struct.device* %282)
  %284 = load %struct.device*, %struct.device** %5, align 8
  %285 = call i32 @pm_runtime_put_noidle(%struct.device* %284)
  %286 = load i32, i32* %8, align 4
  store i32 %286, i32* %2, align 4
  br label %287

287:                                              ; preds = %279, %267, %192, %178, %149, %118, %104, %66, %30, %20
  %288 = load i32, i32* %2, align 4
  ret i32 %288
}

declare dso_local %struct.stm32_adc_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_6__* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @devm_regulator_get(%struct.device*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i32 @stm32_adc_core_switches_probe(%struct.device*, %struct.stm32_adc_priv*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @stm32_adc_core_hw_start(%struct.device*) #1

declare dso_local i32 @regulator_get_voltage(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @stm32_adc_irq_probe(%struct.platform_device*, %struct.stm32_adc_priv*) #1

declare dso_local i32 @of_platform_populate(%struct.device_node*, i32*, i32*, %struct.device*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @stm32_adc_irq_remove(%struct.platform_device*, %struct.stm32_adc_priv*) #1

declare dso_local i32 @stm32_adc_core_hw_stop(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
