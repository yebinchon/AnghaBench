; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_stk8ba50.c_stk8ba50_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.i2c_device_id = type { i32 }
%struct.iio_dev = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.stk8ba50_data = type { %struct.TYPE_9__*, i32, i64, i32, %struct.i2c_client* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"iio allocation failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@stk8ba50_info = common dso_local global i32 0, align 4
@STK8BA50_DRIVER_NAME = common dso_local global i32 0, align 4
@INDIO_DIRECT_MODE = common dso_local global i32 0, align 4
@stk8ba50_channels = common dso_local global i32 0, align 4
@STK8BA50_REG_SWRST = common dso_local global i32 0, align 4
@STK8BA50_RESET_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to reset sensor\0A\00", align 1
@STK8BA50_SR_1792HZ_IDX = common dso_local global i32 0, align 4
@STK8BA50_REG_INTEN2 = common dso_local global i32 0, align 4
@STK8BA50_DREADY_INT_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to set up interrupts\0A\00", align 1
@STK8BA50_REG_INTMAP2 = common dso_local global i32 0, align 4
@STK8BA50_DREADY_INT_MAP = common dso_local global i32 0, align 4
@stk8ba50_data_rdy_trig_poll = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@STK8BA50_IRQ_NAME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s-dev%d\00", align 1
@stk8ba50_trigger_ops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"iio trigger register failed\0A\00", align 1
@iio_pollfunc_store_time = common dso_local global i32 0, align 4
@stk8ba50_trigger_handler = common dso_local global i32 0, align 4
@stk8ba50_buffer_setup_ops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"iio triggered buffer setup failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"device_register failed\0A\00", align 1
@STK8BA50_MODE_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stk8ba50_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk8ba50_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.stk8ba50_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 1
  %11 = call %struct.iio_dev* @devm_iio_device_alloc(i32* %10, i32 40)
  store %struct.iio_dev* %11, %struct.iio_dev** %7, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %13 = icmp ne %struct.iio_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call i32 (i32*, i8*, ...) @dev_err(i32* %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %204

20:                                               ; preds = %2
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = call %struct.stk8ba50_data* @iio_priv(%struct.iio_dev* %21)
  store %struct.stk8ba50_data* %22, %struct.stk8ba50_data** %8, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %25 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %24, i32 0, i32 4
  store %struct.i2c_client* %23, %struct.i2c_client** %25, align 8
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = call i32 @i2c_set_clientdata(%struct.i2c_client* %26, %struct.iio_dev* %27)
  %29 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %30 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %29, i32 0, i32 3
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 1
  %34 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %35 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %34, i32 0, i32 6
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32* %33, i32** %36, align 8
  %37 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %38 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %37, i32 0, i32 5
  store i32* @stk8ba50_info, i32** %38, align 8
  %39 = load i32, i32* @STK8BA50_DRIVER_NAME, align 4
  %40 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %41 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @INDIO_DIRECT_MODE, align 4
  %43 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %44 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* @stk8ba50_channels, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @stk8ba50_channels, align 4
  %49 = call i32 @ARRAY_SIZE(i32 %48)
  %50 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %51 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = load i32, i32* @STK8BA50_REG_SWRST, align 4
  %54 = load i32, i32* @STK8BA50_RESET_CMD, align 4
  %55 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %52, i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %20
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 1
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %199

62:                                               ; preds = %20
  %63 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %64 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @STK8BA50_SR_1792HZ_IDX, align 4
  %66 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %67 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = load i32, i32* @STK8BA50_REG_INTEN2, align 4
  %70 = load i32, i32* @STK8BA50_DREADY_INT_MASK, align 4
  %71 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %68, i32 %69, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %62
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %75, i32 0, i32 1
  %77 = call i32 (i32*, i8*, ...) @dev_err(i32* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %199

78:                                               ; preds = %62
  %79 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %80 = load i32, i32* @STK8BA50_REG_INTMAP2, align 4
  %81 = load i32, i32* @STK8BA50_DREADY_INT_MAP, align 4
  %82 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 1
  %88 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %199

89:                                               ; preds = %78
  %90 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %91 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %163

94:                                               ; preds = %89
  %95 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %96 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %95, i32 0, i32 1
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @stk8ba50_data_rdy_trig_poll, align 4
  %101 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %102 = load i32, i32* @IRQF_ONESHOT, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @STK8BA50_IRQ_NAME, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %106 = call i32 @devm_request_threaded_irq(i32* %96, i64 %99, i32 %100, i32* null, i32 %103, i32 %104, %struct.iio_dev* %105)
  store i32 %106, i32* %6, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %94
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %110, i32 0, i32 1
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32*, i8*, ...) @dev_err(i32* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i64 %114)
  br label %199

116:                                              ; preds = %94
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %117, i32 0, i32 1
  %119 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %120 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %123 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call %struct.TYPE_9__* @devm_iio_trigger_alloc(i32* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %121, i32 %124)
  %126 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %127 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %126, i32 0, i32 0
  store %struct.TYPE_9__* %125, %struct.TYPE_9__** %127, align 8
  %128 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %129 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %128, i32 0, i32 0
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = icmp ne %struct.TYPE_9__* %130, null
  br i1 %131, label %135, label %132

132:                                              ; preds = %116
  %133 = load i32, i32* @ENOMEM, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %6, align 4
  br label %199

135:                                              ; preds = %116
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 1
  %138 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %139 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %138, i32 0, i32 0
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32* %137, i32** %142, align 8
  %143 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %144 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %143, i32 0, i32 0
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i32* @stk8ba50_trigger_ops, i32** %146, align 8
  %147 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %148 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %147, i32 0, i32 0
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %151 = call i32 @iio_trigger_set_drvdata(%struct.TYPE_9__* %149, %struct.iio_dev* %150)
  %152 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %153 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %153, align 8
  %155 = call i32 @iio_trigger_register(%struct.TYPE_9__* %154)
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* %6, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %135
  %159 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %160 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %159, i32 0, i32 1
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %160, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %199

162:                                              ; preds = %135
  br label %163

163:                                              ; preds = %162, %89
  %164 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %165 = load i32, i32* @iio_pollfunc_store_time, align 4
  %166 = load i32, i32* @stk8ba50_trigger_handler, align 4
  %167 = call i32 @iio_triggered_buffer_setup(%struct.iio_dev* %164, i32 %165, i32 %166, i32* @stk8ba50_buffer_setup_ops)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %172 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %171, i32 0, i32 1
  %173 = call i32 (i32*, i8*, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %188

174:                                              ; preds = %163
  %175 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %176 = call i32 @iio_device_register(%struct.iio_dev* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %174
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 1
  %182 = call i32 (i32*, i8*, ...) @dev_err(i32* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %185

183:                                              ; preds = %174
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %204

185:                                              ; preds = %179
  %186 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %187 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %186)
  br label %188

188:                                              ; preds = %185, %170
  %189 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %190 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %189, i32 0, i32 0
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %190, align 8
  %192 = icmp ne %struct.TYPE_9__* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %195 = getelementptr inbounds %struct.stk8ba50_data, %struct.stk8ba50_data* %194, i32 0, i32 0
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %195, align 8
  %197 = call i32 @iio_trigger_unregister(%struct.TYPE_9__* %196)
  br label %198

198:                                              ; preds = %193, %188
  br label %199

199:                                              ; preds = %198, %158, %132, %109, %85, %74, %58
  %200 = load %struct.stk8ba50_data*, %struct.stk8ba50_data** %8, align 8
  %201 = load i32, i32* @STK8BA50_MODE_SUSPEND, align 4
  %202 = call i32 @stk8ba50_set_power(%struct.stk8ba50_data* %200, i32 %201)
  %203 = load i32, i32* %6, align 4
  store i32 %203, i32* %3, align 4
  br label %204

204:                                              ; preds = %199, %183, %14
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.iio_dev* @devm_iio_device_alloc(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.stk8ba50_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.iio_dev*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i64, i32, i32*, i32, i32, %struct.iio_dev*) #1

declare dso_local %struct.TYPE_9__* @devm_iio_trigger_alloc(i32*, i8*, i32, i32) #1

declare dso_local i32 @iio_trigger_set_drvdata(%struct.TYPE_9__*, %struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_register(%struct.TYPE_9__*) #1

declare dso_local i32 @iio_triggered_buffer_setup(%struct.iio_dev*, i32, i32, i32*) #1

declare dso_local i32 @iio_device_register(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(%struct.TYPE_9__*) #1

declare dso_local i32 @stk8ba50_set_power(%struct.stk8ba50_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
