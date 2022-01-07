; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_rpr0521.c_rpr0521_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i64 }
%struct.i2c_device_id = type { i32 }
%struct.rpr0521_data = type { %struct.TYPE_8__*, i32, %struct.regmap*, %struct.i2c_client* }
%struct.TYPE_8__ = type { i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.regmap = type { i32 }
%struct.iio_dev = type { %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_7__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@rpr0521_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"regmap_init failed!\0A\00", align 1
@rpr0521_info = common dso_local global i32 0, align 4
@RPR0521_DRV_NAME = common dso_local global i32 0, align 4
@rpr0521_channels = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"rpr0521 chip init failed\0A\00", align 1
@RPR0521_SLEEP_DELAY_MS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@rpr0521_trigger_ops = common dso_local global i32 0, align 4
@rpr0521_available_scan_masks = common dso_local global i32 0, align 4
@rpr0521_drdy_irq_handler = common dso_local global i32 0, align 4
@rpr0521_drdy_irq_thread = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@RPR0521_IRQ_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"request irq %d for trigger0 failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"iio trigger register failed\0A\00", align 1
@rpr0521_trigger_consumer_store_time = common dso_local global i32 0, align 4
@rpr0521_trigger_consumer_handler = common dso_local global i32 0, align 4
@rpr0521_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @rpr0521_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpr0521_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.rpr0521_data*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %11, i32 32)
  store %struct.iio_dev* %12, %struct.iio_dev** %7, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %14 = icmp ne %struct.iio_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %213

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = call %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client* %19, i32* @rpr0521_regmap_config)
  store %struct.regmap* %20, %struct.regmap** %8, align 8
  %21 = load %struct.regmap*, %struct.regmap** %8, align 8
  %22 = call i64 @IS_ERR(%struct.regmap* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.regmap*, %struct.regmap** %8, align 8
  %29 = call i32 @PTR_ERR(%struct.regmap* %28)
  store i32 %29, i32* %3, align 4
  br label %213

30:                                               ; preds = %18
  %31 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %32 = call %struct.rpr0521_data* @iio_priv(%struct.iio_dev* %31)
  store %struct.rpr0521_data* %32, %struct.rpr0521_data** %6, align 8
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = call i32 @i2c_set_clientdata(%struct.i2c_client* %33, %struct.iio_dev* %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %38 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %37, i32 0, i32 3
  store %struct.i2c_client* %36, %struct.i2c_client** %38, align 8
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %41 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %40, i32 0, i32 2
  store %struct.regmap* %39, %struct.regmap** %41, align 8
  %42 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %43 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %42, i32 0, i32 1
  %44 = call i32 @mutex_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %48 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* %46, i32** %49, align 8
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 7
  store i32* @rpr0521_info, i32** %51, align 8
  %52 = load i32, i32* @RPR0521_DRV_NAME, align 4
  %53 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %54 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @rpr0521_channels, align 4
  %56 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %57 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @rpr0521_channels, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %61 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %63 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %64 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %66 = call i32 @rpr0521_init(%struct.rpr0521_data* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %30
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %3, align 4
  br label %213

74:                                               ; preds = %30
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 0
  %77 = call i32 @pm_runtime_set_active(i32* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %209

81:                                               ; preds = %74
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 0
  %84 = call i32 @pm_runtime_enable(i32* %83)
  %85 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %86 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %85, i32 0, i32 0
  %87 = load i32, i32* @RPR0521_SLEEP_DELAY_MS, align 4
  %88 = call i32 @pm_runtime_set_autosuspend_delay(i32* %86, i32 %87)
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %89, i32 0, i32 0
  %91 = call i32 @pm_runtime_use_autosuspend(i32* %90)
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %192

96:                                               ; preds = %81
  %97 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %98 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %102 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %105 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.TYPE_8__* @devm_iio_trigger_alloc(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %103, i32 %106)
  %108 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %109 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %108, i32 0, i32 0
  store %struct.TYPE_8__* %107, %struct.TYPE_8__** %109, align 8
  %110 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %111 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %110, i32 0, i32 0
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %96
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %9, align 4
  br label %199

117:                                              ; preds = %96
  %118 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %119 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %123 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  store i32* %121, i32** %126, align 8
  %127 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %128 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  store i32* @rpr0521_trigger_ops, i32** %130, align 8
  %131 = load i32, i32* @rpr0521_available_scan_masks, align 4
  %132 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %133 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 8
  %134 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %135 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %135, align 8
  %137 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %138 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_8__* %136, %struct.iio_dev* %137)
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 0
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* @rpr0521_drdy_irq_handler, align 4
  %145 = load i32, i32* @rpr0521_drdy_irq_thread, align 4
  %146 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %147 = load i32, i32* @IRQF_ONESHOT, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @RPR0521_IRQ_NAME, align 4
  %150 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %151 = call i32 @devm_request_threaded_irq(i32* %140, i64 %143, i32 %144, i32 %145, i32 %148, i32 %149, %struct.iio_dev* %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* %9, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %117
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %158 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i32*, i8*, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %159)
  br label %199

161:                                              ; preds = %117
  %162 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %163 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %167 = getelementptr inbounds %struct.rpr0521_data, %struct.rpr0521_data* %166, i32 0, i32 0
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = call i32 @devm_iio_trigger_register(i32* %165, %struct.TYPE_8__* %168)
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %161
  %173 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %174 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %173, i32 0, i32 0
  %175 = call i32 (i32*, i8*, ...) @dev_err(i32* %174, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %199

176:                                              ; preds = %161
  %177 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %178 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %182 = load i32, i32* @rpr0521_trigger_consumer_store_time, align 4
  %183 = load i32, i32* @rpr0521_trigger_consumer_handler, align 4
  %184 = call i32 @devm_iio_triggered_buffer_setup(i32* %180, %struct.iio_dev* %181, i32 %182, i32 %183, i32* @rpr0521_buffer_setup_ops)
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %176
  %188 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %189 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %188, i32 0, i32 0
  %190 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  br label %199

191:                                              ; preds = %176
  br label %192

192:                                              ; preds = %191, %81
  %193 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %194 = call i32 @iio_device_register(%struct.iio_dev* %193)
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* %9, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %199

198:                                              ; preds = %192
  store i32 0, i32* %3, align 4
  br label %213

199:                                              ; preds = %197, %187, %172, %154, %114
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = call i32 @pm_runtime_disable(i32* %201)
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 0
  %205 = call i32 @pm_runtime_set_suspended(i32* %204)
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = call i32 @pm_runtime_put_noidle(i32* %207)
  br label %209

209:                                              ; preds = %199, %80
  %210 = load %struct.rpr0521_data*, %struct.rpr0521_data** %6, align 8
  %211 = call i32 @rpr0521_poweroff(%struct.rpr0521_data* %210)
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %198, %69, %24, %15
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local %struct.regmap* @devm_regmap_init_i2c(%struct.i2c_client*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local %struct.rpr0521_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @rpr0521_init(%struct.rpr0521_data*) #1

declare dso_local i32 @pm_runtime_set_active(i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @pm_runtime_set_autosuspend_delay(i32*, i32) #1

declare dso_local i32 @pm_runtime_use_autosuspend(i32*) #1

declare dso_local %struct.TYPE_8__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_8__*, %struct.iio_dev*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32, i32, i32, %struct.iio_dev*) #1

declare dso_local i32 @devm_iio_trigger_register(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @devm_iio_triggered_buffer_setup(i32*, %struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @rpr0521_poweroff(%struct.rpr0521_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
