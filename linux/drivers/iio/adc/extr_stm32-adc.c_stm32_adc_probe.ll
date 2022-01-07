; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device, i32 }
%struct.device = type { i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32, i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64, %struct.device* }
%struct.stm32_adc = type { i64, %struct.TYPE_10__*, i32, i32, i32*, %struct.stm32_adc_cfg*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.stm32_adc_cfg = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@stm32_adc_iio_info = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@INDIO_HARDWARE_TRIGGERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"missing reg property\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32_adc_isr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"failed to request IRQ\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Can't get clock\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@stm32_adc_trigger_handler = common dso_local global i32 0, align 4
@stm32_adc_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"buffer setup failed\0A\00", align 1
@STM32_ADC_HW_STOP_DELAY_MS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"iio dev register failed\0A\00", align 1
@STM32_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_adc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.stm32_adc*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %267

18:                                               ; preds = %1
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.device* %20, i32 56)
  store %struct.iio_dev* %21, %struct.iio_dev** %4, align 8
  %22 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %23 = icmp ne %struct.iio_dev* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %267

27:                                               ; preds = %18
  %28 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %29 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %28)
  store %struct.stm32_adc* %29, %struct.stm32_adc** %6, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @dev_get_drvdata(i32 %33)
  %35 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %36 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 4
  %37 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %38 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %37, i32 0, i32 8
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %41 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %40, i32 0, i32 7
  %42 = call i32 @init_completion(i32* %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call %struct.TYPE_9__* @of_match_device(i32 %47, %struct.device* %48)
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.stm32_adc_cfg*
  %53 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %54 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %53, i32 0, i32 5
  store %struct.stm32_adc_cfg* %52, %struct.stm32_adc_cfg** %54, align 8
  %55 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %56 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %55, i32 0, i32 0
  %57 = call i32 @dev_name(%struct.device* %56)
  %58 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %59 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %63 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store %struct.device* %61, %struct.device** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.device, %struct.device* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %73 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %72, i32 0, i32 1
  store i32* @stm32_adc_iio_info, i32** %73, align 8
  %74 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %75 = load i32, i32* @INDIO_HARDWARE_TRIGGERED, align 4
  %76 = or i32 %74, %75
  %77 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %78 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %80 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %81 = call i32 @platform_set_drvdata(%struct.platform_device* %79, %struct.stm32_adc* %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.device, %struct.device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %87 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %86, i32 0, i32 6
  %88 = call i32 @of_property_read_u32(i64 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %27
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 @dev_err(%struct.device* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %267

97:                                               ; preds = %27
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = call i64 @platform_get_irq(%struct.platform_device* %98, i32 0)
  %100 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %101 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %103 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %97
  %107 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %108 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %2, align 4
  br label %267

111:                                              ; preds = %97
  %112 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %113 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %112, i32 0, i32 0
  %114 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %115 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @stm32_adc_isr, align 4
  %119 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %120 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %123 = call i32 @devm_request_irq(%struct.device* %113, i32 %117, i32 %118, i32 0, i32 %121, %struct.stm32_adc* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %111
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_err(%struct.device* %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %2, align 4
  br label %267

131:                                              ; preds = %111
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %132, i32 0, i32 0
  %134 = call i32* @devm_clk_get(%struct.device* %133, i32* null)
  %135 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %136 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %135, i32 0, i32 4
  store i32* %134, i32** %136, align 8
  %137 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %138 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %137, i32 0, i32 4
  %139 = load i32*, i32** %138, align 8
  %140 = call i64 @IS_ERR(i32* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %167

142:                                              ; preds = %131
  %143 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %144 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %143, i32 0, i32 4
  %145 = load i32*, i32** %144, align 8
  %146 = call i32 @PTR_ERR(i32* %145)
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @ENOENT, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %142
  %152 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %153 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %152, i32 0, i32 5
  %154 = load %struct.stm32_adc_cfg*, %struct.stm32_adc_cfg** %153, align 8
  %155 = getelementptr inbounds %struct.stm32_adc_cfg, %struct.stm32_adc_cfg* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %151
  %159 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %160 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %159, i32 0, i32 4
  store i32* null, i32** %160, align 8
  br label %166

161:                                              ; preds = %151, %142
  %162 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %163 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %162, i32 0, i32 0
  %164 = call i32 @dev_err(%struct.device* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %165 = load i32, i32* %7, align 4
  store i32 %165, i32* %2, align 4
  br label %267

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166, %131
  %168 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %169 = call i32 @stm32_adc_of_get_resolution(%struct.iio_dev* %168)
  store i32 %169, i32* %7, align 4
  %170 = load i32, i32* %7, align 4
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %267

174:                                              ; preds = %167
  %175 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %176 = call i32 @stm32_adc_chan_of_init(%struct.iio_dev* %175)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %174
  %180 = load i32, i32* %7, align 4
  store i32 %180, i32* %2, align 4
  br label %267

181:                                              ; preds = %174
  %182 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %183 = call i32 @stm32_adc_dma_request(%struct.iio_dev* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %7, align 4
  store i32 %187, i32* %2, align 4
  br label %267

188:                                              ; preds = %181
  %189 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %190 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %189, i32* @iio_pollfunc_store_time, i32* @stm32_adc_trigger_handler, i32* @stm32_adc_buffer_setup_ops)
  store i32 %190, i32* %7, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %188
  %194 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %195 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %194, i32 0, i32 0
  %196 = call i32 @dev_err(%struct.device* %195, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %240

197:                                              ; preds = %188
  %198 = load %struct.device*, %struct.device** %5, align 8
  %199 = call i32 @pm_runtime_get_noresume(%struct.device* %198)
  %200 = load %struct.device*, %struct.device** %5, align 8
  %201 = call i32 @pm_runtime_set_active(%struct.device* %200)
  %202 = load %struct.device*, %struct.device** %5, align 8
  %203 = load i32, i32* @STM32_ADC_HW_STOP_DELAY_MS, align 4
  %204 = call i32 @pm_runtime_set_autosuspend_delay(%struct.device* %202, i32 %203)
  %205 = load %struct.device*, %struct.device** %5, align 8
  %206 = call i32 @pm_runtime_use_autosuspend(%struct.device* %205)
  %207 = load %struct.device*, %struct.device** %5, align 8
  %208 = call i32 @pm_runtime_enable(%struct.device* %207)
  %209 = load %struct.device*, %struct.device** %5, align 8
  %210 = call i32 @stm32_adc_hw_start(%struct.device* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %197
  br label %231

214:                                              ; preds = %197
  %215 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %216 = call i32 @iio_device_register(%struct.iio_dev* %215)
  store i32 %216, i32* %7, align 4
  %217 = load i32, i32* %7, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %221 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %220, i32 0, i32 0
  %222 = call i32 @dev_err(%struct.device* %221, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %228

223:                                              ; preds = %214
  %224 = load %struct.device*, %struct.device** %5, align 8
  %225 = call i32 @pm_runtime_mark_last_busy(%struct.device* %224)
  %226 = load %struct.device*, %struct.device** %5, align 8
  %227 = call i32 @pm_runtime_put_autosuspend(%struct.device* %226)
  store i32 0, i32* %2, align 4
  br label %267

228:                                              ; preds = %219
  %229 = load %struct.device*, %struct.device** %5, align 8
  %230 = call i32 @stm32_adc_hw_stop(%struct.device* %229)
  br label %231

231:                                              ; preds = %228, %213
  %232 = load %struct.device*, %struct.device** %5, align 8
  %233 = call i32 @pm_runtime_disable(%struct.device* %232)
  %234 = load %struct.device*, %struct.device** %5, align 8
  %235 = call i32 @pm_runtime_set_suspended(%struct.device* %234)
  %236 = load %struct.device*, %struct.device** %5, align 8
  %237 = call i32 @pm_runtime_put_noidle(%struct.device* %236)
  %238 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %239 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %238)
  br label %240

240:                                              ; preds = %231, %193
  %241 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %242 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %241, i32 0, i32 1
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = icmp ne %struct.TYPE_10__* %243, null
  br i1 %244, label %245, label %265

245:                                              ; preds = %240
  %246 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %247 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %246, i32 0, i32 1
  %248 = load %struct.TYPE_10__*, %struct.TYPE_10__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @STM32_DMA_BUFFER_SIZE, align 4
  %254 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %255 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %258 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @dma_free_coherent(i32 %252, i32 %253, i32 %256, i32 %259)
  %261 = load %struct.stm32_adc*, %struct.stm32_adc** %6, align 8
  %262 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %261, i32 0, i32 1
  %263 = load %struct.TYPE_10__*, %struct.TYPE_10__** %262, align 8
  %264 = call i32 @dma_release_channel(%struct.TYPE_10__* %263)
  br label %265

265:                                              ; preds = %245, %240
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %2, align 4
  br label %267

267:                                              ; preds = %265, %223, %186, %179, %172, %161, %126, %106, %91, %24, %15
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.device*, i32) #1

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local %struct.TYPE_9__* @of_match_device(i32, %struct.device*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.stm32_adc*) #1

declare dso_local i32 @of_property_read_u32(i64, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i32, %struct.stm32_adc*) #1

declare dso_local i32* @devm_clk_get(%struct.device*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @stm32_adc_of_get_resolution(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_chan_of_init(%struct.iio_dev*) #1

declare dso_local i32 @stm32_adc_dma_request(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32*, i32*, i32*) #1

declare dso_local i32 @pm_runtime_get_noresume(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_active(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.device*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.device*) #1

declare dso_local i32 @pm_runtime_enable(%struct.device*) #1

declare dso_local i32 @stm32_adc_hw_start(%struct.device*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @stm32_adc_hw_stop(%struct.device*) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
