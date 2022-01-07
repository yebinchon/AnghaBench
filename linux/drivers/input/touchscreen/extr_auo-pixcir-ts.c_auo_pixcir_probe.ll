; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_auo-pixcir-ts.c_auo_pixcir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.auo_pixcir_ts_platdata = type { i32, i32, i32, i32, i32 }
%struct.auo_pixcir_ts = type { i32, %struct.input_dev*, i32, i32, i64, %struct.i2c_client*, %struct.auo_pixcir_ts_platdata* }
%struct.input_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not allocate input device\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"AUO-Pixcir touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@auo_pixcir_input_open = common dso_local global i32 0, align 4
@auo_pixcir_input_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@AUO_PIXCIR_MAX_AREA = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@GPIOF_DIR_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"auo_pixcir_ts_int\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"request of gpio %d failed, %d\0A\00", align 1
@GPIOF_DIR_OUT = common dso_local global i32 0, align 4
@GPIOF_INIT_HIGH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"auo_pixcir_ts_rst\00", align 1
@auo_pixcir_reset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"failed to register reset action, %d\0A\00", align 1
@AUO_PIXCIR_REG_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"firmware version 0x%X\0A\00", align 1
@auo_pixcir_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"irq %d requested failed, %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"could not register input device, %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @auo_pixcir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auo_pixcir_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.auo_pixcir_ts_platdata*, align 8
  %7 = alloca %struct.auo_pixcir_ts*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.auo_pixcir_ts_platdata* @dev_get_platdata(i32* %12)
  store %struct.auo_pixcir_ts_platdata* %13, %struct.auo_pixcir_ts_platdata** %6, align 8
  %14 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %15 = icmp ne %struct.auo_pixcir_ts_platdata* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call %struct.auo_pixcir_ts_platdata* @auo_pixcir_parse_dt(i32* %18)
  store %struct.auo_pixcir_ts_platdata* %19, %struct.auo_pixcir_ts_platdata** %6, align 8
  %20 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %21 = call i64 @IS_ERR(%struct.auo_pixcir_ts_platdata* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.auo_pixcir_ts_platdata* %24)
  store i32 %25, i32* %3, align 4
  br label %270

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.auo_pixcir_ts* @devm_kzalloc(i32* %29, i32 48, i32 %30)
  store %struct.auo_pixcir_ts* %31, %struct.auo_pixcir_ts** %7, align 8
  %32 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %33 = icmp ne %struct.auo_pixcir_ts* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %270

37:                                               ; preds = %27
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %38, i32 0, i32 0
  %40 = call %struct.input_dev* @devm_input_allocate_device(i32* %39)
  store %struct.input_dev* %40, %struct.input_dev** %8, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %42 = icmp ne %struct.input_dev* %41, null
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %270

49:                                               ; preds = %37
  %50 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %51 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %52 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %51, i32 0, i32 6
  store %struct.auo_pixcir_ts_platdata* %50, %struct.auo_pixcir_ts_platdata** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %55 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %54, i32 0, i32 5
  store %struct.i2c_client* %53, %struct.i2c_client** %55, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %57 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %58 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %57, i32 0, i32 1
  store %struct.input_dev* %56, %struct.input_dev** %58, align 8
  %59 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %60 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %62 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  %63 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %64 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %63, i32 0, i32 3
  %65 = call i32 @init_waitqueue_head(i32* %64)
  %66 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %67 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %70 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %69, i32 0, i32 0
  %71 = call i8* @dev_name(i32* %70)
  %72 = call i32 @snprintf(i32 %68, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %74 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %73, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i8** %74, align 8
  %75 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %76 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 6
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @BUS_I2C, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 5
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @auo_pixcir_input_open, align 4
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @auo_pixcir_input_close, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 3
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @EV_ABS, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @__set_bit(i32 %90, i32 %93)
  %95 = load i32, i32* @EV_KEY, align 4
  %96 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %97 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @__set_bit(i32 %95, i32 %98)
  %100 = load i32, i32* @BTN_TOUCH, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @__set_bit(i32 %100, i32 %103)
  %105 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %106 = load i32, i32* @ABS_X, align 4
  %107 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %108 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_set_abs_params(%struct.input_dev* %105, i32 %106, i32 0, i32 %109, i32 0, i32 0)
  %111 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %112 = load i32, i32* @ABS_Y, align 4
  %113 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %114 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @input_set_abs_params(%struct.input_dev* %111, i32 %112, i32 0, i32 %115, i32 0, i32 0)
  %117 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %118 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %119 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %120 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @input_set_abs_params(%struct.input_dev* %117, i32 %118, i32 0, i32 %121, i32 0, i32 0)
  %123 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %124 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %125 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %126 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @input_set_abs_params(%struct.input_dev* %123, i32 %124, i32 0, i32 %127, i32 0, i32 0)
  %129 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %130 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %131 = load i32, i32* @AUO_PIXCIR_MAX_AREA, align 4
  %132 = call i32 @input_set_abs_params(%struct.input_dev* %129, i32 %130, i32 0, i32 %131, i32 0, i32 0)
  %133 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %134 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %135 = load i32, i32* @AUO_PIXCIR_MAX_AREA, align 4
  %136 = call i32 @input_set_abs_params(%struct.input_dev* %133, i32 %134, i32 0, i32 %135, i32 0, i32 0)
  %137 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %138 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %139 = call i32 @input_set_abs_params(%struct.input_dev* %137, i32 %138, i32 0, i32 1, i32 0, i32 0)
  %140 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %141 = getelementptr inbounds %struct.auo_pixcir_ts, %struct.auo_pixcir_ts* %140, i32 0, i32 1
  %142 = load %struct.input_dev*, %struct.input_dev** %141, align 8
  %143 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %144 = call i32 @input_set_drvdata(%struct.input_dev* %142, %struct.auo_pixcir_ts* %143)
  %145 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %146 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %145, i32 0, i32 0
  %147 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %148 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GPIOF_DIR_IN, align 4
  %151 = call i32 @devm_gpio_request_one(i32* %146, i32 %149, i32 %150, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %10, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %49
  %155 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %156 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %155, i32 0, i32 0
  %157 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %158 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 (i32*, i8*, ...) @dev_err(i32* %156, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %3, align 4
  br label %270

163:                                              ; preds = %49
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 0
  %166 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %167 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @GPIOF_DIR_OUT, align 4
  %170 = load i32, i32* @GPIOF_INIT_HIGH, align 4
  %171 = or i32 %169, %170
  %172 = call i32 @devm_gpio_request_one(i32* %165, i32 %168, i32 %171, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %163
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %179 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %10, align 4
  %182 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %180, i32 %181)
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %3, align 4
  br label %270

184:                                              ; preds = %163
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = load i32, i32* @auo_pixcir_reset, align 4
  %188 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %189 = call i32 @devm_add_action_or_reset(i32* %186, i32 %187, %struct.auo_pixcir_ts* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %184
  %193 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %194 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %193, i32 0, i32 0
  %195 = load i32, i32* %10, align 4
  %196 = call i32 (i32*, i8*, ...) @dev_err(i32* %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %10, align 4
  store i32 %197, i32* %3, align 4
  br label %270

198:                                              ; preds = %184
  %199 = call i32 @msleep(i32 200)
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = load i32, i32* @AUO_PIXCIR_REG_VERSION, align 4
  %202 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %200, i32 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %198
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %10, align 4
  %207 = load i32, i32* %10, align 4
  store i32 %207, i32* %3, align 4
  br label %270

208:                                              ; preds = %198
  %209 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %210 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %209, i32 0, i32 0
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @dev_info(i32* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %211)
  %213 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %214 = load %struct.auo_pixcir_ts_platdata*, %struct.auo_pixcir_ts_platdata** %6, align 8
  %215 = getelementptr inbounds %struct.auo_pixcir_ts_platdata, %struct.auo_pixcir_ts_platdata* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @auo_pixcir_int_config(%struct.auo_pixcir_ts* %213, i32 %216)
  store i32 %217, i32* %10, align 4
  %218 = load i32, i32* %10, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %208
  %221 = load i32, i32* %10, align 4
  store i32 %221, i32* %3, align 4
  br label %270

222:                                              ; preds = %208
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %223, i32 0, i32 0
  %225 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %226 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @auo_pixcir_interrupt, align 4
  %229 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %230 = load i32, i32* @IRQF_ONESHOT, align 4
  %231 = or i32 %229, %230
  %232 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %233 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %236 = call i32 @devm_request_threaded_irq(i32* %224, i32 %227, i32* null, i32 %228, i32 %231, i8* %234, %struct.auo_pixcir_ts* %235)
  store i32 %236, i32* %10, align 4
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %248

239:                                              ; preds = %222
  %240 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %241 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %240, i32 0, i32 0
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (i32*, i8*, ...) @dev_err(i32* %241, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32 %244, i32 %245)
  %247 = load i32, i32* %10, align 4
  store i32 %247, i32* %3, align 4
  br label %270

248:                                              ; preds = %222
  %249 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %250 = call i32 @auo_pixcir_stop(%struct.auo_pixcir_ts* %249)
  store i32 %250, i32* %10, align 4
  %251 = load i32, i32* %10, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

253:                                              ; preds = %248
  %254 = load i32, i32* %10, align 4
  store i32 %254, i32* %3, align 4
  br label %270

255:                                              ; preds = %248
  %256 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %257 = call i32 @input_register_device(%struct.input_dev* %256)
  store i32 %257, i32* %10, align 4
  %258 = load i32, i32* %10, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %255
  %261 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %262 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %261, i32 0, i32 0
  %263 = load i32, i32* %10, align 4
  %264 = call i32 (i32*, i8*, ...) @dev_err(i32* %262, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %263)
  %265 = load i32, i32* %10, align 4
  store i32 %265, i32* %3, align 4
  br label %270

266:                                              ; preds = %255
  %267 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %268 = load %struct.auo_pixcir_ts*, %struct.auo_pixcir_ts** %7, align 8
  %269 = call i32 @i2c_set_clientdata(%struct.i2c_client* %267, %struct.auo_pixcir_ts* %268)
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %266, %260, %253, %239, %220, %205, %192, %175, %154, %43, %34, %23
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local %struct.auo_pixcir_ts_platdata* @dev_get_platdata(i32*) #1

declare dso_local %struct.auo_pixcir_ts_platdata* @auo_pixcir_parse_dt(i32*) #1

declare dso_local i64 @IS_ERR(%struct.auo_pixcir_ts_platdata*) #1

declare dso_local i32 @PTR_ERR(%struct.auo_pixcir_ts_platdata*) #1

declare dso_local %struct.auo_pixcir_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.auo_pixcir_ts*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.auo_pixcir_ts*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @auo_pixcir_int_config(%struct.auo_pixcir_ts*, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.auo_pixcir_ts*) #1

declare dso_local i32 @auo_pixcir_stop(%struct.auo_pixcir_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.auo_pixcir_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
