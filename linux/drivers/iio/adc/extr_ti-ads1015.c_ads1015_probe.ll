; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_18__, i32, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { %struct.TYPE_16__*, i32*, i8*, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_18__* }
%struct.ads1015_data = type { i32*, i32, i32, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ADS1015_DRV_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@ads1015_channels = common dso_local global i8* null, align 8
@ads1015_info = common dso_local global i32 0, align 4
@ads1015_data_rate = common dso_local global i32 0, align 4
@ads1115_channels = common dso_local global i8* null, align 8
@ads1115_info = common dso_local global i32 0, align 4
@ads1115_data_rate = common dso_local global i32 0, align 4
@ADS1015_CHANNELS = common dso_local global i32 0, align 4
@ads1015_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to allocate register map\0A\00", align 1
@ads1015_trigger_handler = common dso_local global i32 0, align 4
@ads1015_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@ADS1015_CFG_COMP_QUE_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_LAT_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_POL_MASK = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_DISABLE = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_QUE_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_LAT_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_POL_LOW = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_POL_SHIFT = common dso_local global i32 0, align 4
@ADS1015_CFG_COMP_POL_HIGH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ADS1015_CFG_REG = common dso_local global i32 0, align 4
@ads1015_event_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@ADS1015_CONTINUOUS = common dso_local global i32 0, align 4
@ADS1015_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to register IIO device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ads1015_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.ads1015_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = call %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_18__* %16, i32 40)
  store %struct.iio_dev* %17, %struct.iio_dev** %6, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %19 = icmp ne %struct.iio_dev* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %276

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %24)
  store %struct.ads1015_data* %25, %struct.ads1015_data** %7, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.iio_dev* %27)
  %29 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %30 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %29, i32 0, i32 5
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store %struct.TYPE_18__* %33, %struct.TYPE_18__** %36, align 8
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %42 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  store i64 %40, i64* %43, align 8
  %44 = load i32, i32* @ADS1015_DRV_NAME, align 4
  %45 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %48 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %49 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %23
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = call i64 @of_device_get_match_data(%struct.TYPE_18__* %57)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %64

60:                                               ; preds = %23
  %61 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %62 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %9, align 4
  switch i32 %65, label %92 [
    i32 131, label %66
    i32 130, label %79
  ]

66:                                               ; preds = %64
  %67 = load i8*, i8** @ads1015_channels, align 8
  %68 = bitcast i8* %67 to %struct.TYPE_16__*
  %69 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %70 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %69, i32 0, i32 0
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %70, align 8
  %71 = load i8*, i8** @ads1015_channels, align 8
  %72 = call i8* @ARRAY_SIZE(i8* %71)
  %73 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %74 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %76 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %75, i32 0, i32 1
  store i32* @ads1015_info, i32** %76, align 8
  %77 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %78 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %77, i32 0, i32 0
  store i32* @ads1015_data_rate, i32** %78, align 8
  br label %92

79:                                               ; preds = %64
  %80 = load i8*, i8** @ads1115_channels, align 8
  %81 = bitcast i8* %80 to %struct.TYPE_16__*
  %82 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %83 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %82, i32 0, i32 0
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %83, align 8
  %84 = load i8*, i8** @ads1115_channels, align 8
  %85 = call i8* @ARRAY_SIZE(i8* %84)
  %86 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %87 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %89 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %88, i32 0, i32 1
  store i32* @ads1115_info, i32** %89, align 8
  %90 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %91 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %90, i32 0, i32 0
  store i32* @ads1115_data_rate, i32** %91, align 8
  br label %92

92:                                               ; preds = %64, %79, %66
  %93 = load i32, i32* @ADS1015_CHANNELS, align 4
  %94 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %95 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %131, %92
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @ADS1015_CHANNELS, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %134

100:                                              ; preds = %96
  %101 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sub nsw i32 %110, 1
  %112 = shl i32 -1, %111
  %113 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %114 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %113, i32 0, i32 4
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  store i32 %112, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 1
  %122 = shl i32 1, %121
  %123 = sub nsw i32 %122, 1
  %124 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %125 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %124, i32 0, i32 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 1
  store i32 %123, i32* %130, align 4
  br label %131

131:                                              ; preds = %100
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %10, align 4
  br label %96

134:                                              ; preds = %96
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = call i32 @ads1015_get_channels_config(%struct.i2c_client* %135)
  %137 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %138 = call i32 @devm_regmap_init_i2c(%struct.i2c_client* %137, i32* @ads1015_regmap_config)
  %139 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %140 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 8
  %141 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %142 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @IS_ERR(i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %134
  %147 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %148 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %147, i32 0, i32 0
  %149 = call i32 @dev_err(%struct.TYPE_18__* %148, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %151 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @PTR_ERR(i32 %152)
  store i32 %153, i32* %3, align 4
  br label %276

154:                                              ; preds = %134
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %158 = load i32, i32* @ads1015_trigger_handler, align 4
  %159 = call i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_18__* %156, %struct.iio_dev* %157, i32* null, i32 %158, i32* @ads1015_buffer_setup_ops)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %154
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 0
  %165 = call i32 @dev_err(%struct.TYPE_18__* %164, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* %8, align 4
  store i32 %166, i32* %3, align 4
  br label %276

167:                                              ; preds = %154
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %237

172:                                              ; preds = %167
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @irq_get_irq_data(i64 %175)
  %177 = call i64 @irqd_get_trigger_type(i32 %176)
  store i64 %177, i64* %12, align 8
  %178 = load i32, i32* @ADS1015_CFG_COMP_QUE_MASK, align 4
  %179 = load i32, i32* @ADS1015_CFG_COMP_LAT_MASK, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @ADS1015_CFG_COMP_POL_MASK, align 4
  %182 = or i32 %180, %181
  store i32 %182, i32* %13, align 4
  %183 = load i32, i32* @ADS1015_CFG_COMP_DISABLE, align 4
  %184 = load i32, i32* @ADS1015_CFG_COMP_QUE_SHIFT, align 4
  %185 = shl i32 %183, %184
  %186 = load i32, i32* @ADS1015_CFG_COMP_LAT_SHIFT, align 4
  %187 = shl i32 1, %186
  %188 = or i32 %185, %187
  store i32 %188, i32* %14, align 4
  %189 = load i64, i64* %12, align 8
  switch i64 %189, label %202 [
    i64 128, label %190
    i64 129, label %196
  ]

190:                                              ; preds = %172
  %191 = load i32, i32* @ADS1015_CFG_COMP_POL_LOW, align 4
  %192 = load i32, i32* @ADS1015_CFG_COMP_POL_SHIFT, align 4
  %193 = shl i32 %191, %192
  %194 = load i32, i32* %14, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %14, align 4
  br label %205

196:                                              ; preds = %172
  %197 = load i32, i32* @ADS1015_CFG_COMP_POL_HIGH, align 4
  %198 = load i32, i32* @ADS1015_CFG_COMP_POL_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = load i32, i32* %14, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %14, align 4
  br label %205

202:                                              ; preds = %172
  %203 = load i32, i32* @EINVAL, align 4
  %204 = sub nsw i32 0, %203
  store i32 %204, i32* %3, align 4
  br label %276

205:                                              ; preds = %196, %190
  %206 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %207 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @ADS1015_CFG_REG, align 4
  %210 = load i32, i32* %13, align 4
  %211 = load i32, i32* %14, align 4
  %212 = call i32 @regmap_update_bits(i32 %208, i32 %209, i32 %210, i32 %211)
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %8, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %205
  %216 = load i32, i32* %8, align 4
  store i32 %216, i32* %3, align 4
  br label %276

217:                                              ; preds = %205
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %221 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = load i32, i32* @ads1015_event_handler, align 4
  %224 = load i64, i64* %12, align 8
  %225 = load i64, i64* @IRQF_ONESHOT, align 8
  %226 = or i64 %224, %225
  %227 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %228 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %231 = call i32 @devm_request_threaded_irq(%struct.TYPE_18__* %219, i64 %222, i32* null, i32 %223, i64 %226, i32 %229, %struct.iio_dev* %230)
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %217
  %235 = load i32, i32* %8, align 4
  store i32 %235, i32* %3, align 4
  br label %276

236:                                              ; preds = %217
  br label %237

237:                                              ; preds = %236, %167
  %238 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %239 = load i32, i32* @ADS1015_CONTINUOUS, align 4
  %240 = call i32 @ads1015_set_conv_mode(%struct.ads1015_data* %238, i32 %239)
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %8, align 4
  store i32 %244, i32* %3, align 4
  br label %276

245:                                              ; preds = %237
  %246 = load %struct.ads1015_data*, %struct.ads1015_data** %7, align 8
  %247 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %246, i32 0, i32 2
  store i32 1, i32* %247, align 4
  %248 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %249 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %248, i32 0, i32 0
  %250 = call i32 @pm_runtime_set_active(%struct.TYPE_18__* %249)
  store i32 %250, i32* %8, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %245
  %254 = load i32, i32* %8, align 4
  store i32 %254, i32* %3, align 4
  br label %276

255:                                              ; preds = %245
  %256 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %257 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %256, i32 0, i32 0
  %258 = load i32, i32* @ADS1015_SLEEP_DELAY_MS, align 4
  %259 = call i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__* %257, i32 %258)
  %260 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %261 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %260, i32 0, i32 0
  %262 = call i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__* %261)
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 0
  %265 = call i32 @pm_runtime_enable(%struct.TYPE_18__* %264)
  %266 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %267 = call i32 @iio_device_register(%struct.iio_dev* %266)
  store i32 %267, i32* %8, align 4
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %255
  %271 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %272 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %271, i32 0, i32 0
  %273 = call i32 @dev_err(%struct.TYPE_18__* %272, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %274 = load i32, i32* %8, align 4
  store i32 %274, i32* %3, align 4
  br label %276

275:                                              ; preds = %255
  store i32 0, i32* %3, align 4
  br label %276

276:                                              ; preds = %275, %270, %253, %243, %234, %215, %202, %162, %146, %20
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_18__*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @ads1015_get_channels_config(%struct.i2c_client*) #1

declare dso_local i32 @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(%struct.TYPE_18__*, %struct.iio_dev*, i32*, i32, i32*) #1

declare dso_local i64 @irqd_get_trigger_type(i32) #1

declare dso_local i32 @irq_get_irq_data(i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_18__*, i64, i32*, i32, i64, i32, %struct.iio_dev*) #1

declare dso_local i32 @ads1015_set_conv_mode(%struct.ads1015_data*, i32) #1

declare dso_local i32 @pm_runtime_set_active(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(%struct.TYPE_18__*) #1

declare dso_local i32 @pm_runtime_enable(%struct.TYPE_18__*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
