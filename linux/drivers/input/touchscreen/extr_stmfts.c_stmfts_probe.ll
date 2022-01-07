; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_stmfts.c_stmfts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.stmfts_data = type { i32*, i64, %struct.TYPE_12__*, i32, %struct.TYPE_13__*, i32, i32, %struct.i2c_client* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@STMFTS_REGULATOR_VDD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@STMFTS_REGULATOR_AVDD = common dso_local global i64 0, align 8
@STMFTS_DEV_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@stmfts_input_open = common dso_local global i32 0, align 4
@stmfts_input_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_ORIENTATION = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"touch-key-connected\00", align 1
@EV_KEY = common dso_local global i32 0, align 4
@KEY_MENU = common dso_local global i32 0, align 4
@KEY_BACK = common dso_local global i32 0, align 4
@STMFTS_MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@stmfts_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"stmfts_irq\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"initializing ST-Microelectronics FTS...\0A\00", align 1
@stmfts_power_off = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"unable to use touchkey leds\0A\00", align 1
@stmfts_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @stmfts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmfts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stmfts_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @I2C_FUNC_I2C, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @i2c_check_functionality(i32 %10, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %266

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.stmfts_data* @devm_kzalloc(i32* %23, i32 56, i32 %24)
  store %struct.stmfts_data* %25, %struct.stmfts_data** %7, align 8
  %26 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %27 = icmp ne %struct.stmfts_data* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %266

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %34 = call i32 @i2c_set_clientdata(%struct.i2c_client* %32, %struct.stmfts_data* %33)
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %37 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %36, i32 0, i32 7
  store %struct.i2c_client* %35, %struct.i2c_client** %37, align 8
  %38 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %39 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %38, i32 0, i32 6
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %42 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %41, i32 0, i32 5
  %43 = call i32 @init_completion(i32* %42)
  %44 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %45 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %44, i32 0, i32 4
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = load i64, i64* @STMFTS_REGULATOR_VDD, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %49, align 8
  %50 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %51 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %50, i32 0, i32 4
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = load i64, i64* @STMFTS_REGULATOR_AVDD, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %55, align 8
  %56 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %57 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %56, i32 0, i32 0
  %58 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %59 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %58, i32 0, i32 4
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %60)
  %62 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %63 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %62, i32 0, i32 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = call i32 @devm_regulator_bulk_get(i32* %57, i32 %61, %struct.TYPE_13__* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %31
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %266

70:                                               ; preds = %31
  %71 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %72 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %71, i32 0, i32 0
  %73 = call %struct.TYPE_12__* @devm_input_allocate_device(i32* %72)
  %74 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %75 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %74, i32 0, i32 2
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %75, align 8
  %76 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %77 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %76, i32 0, i32 2
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = icmp ne %struct.TYPE_12__* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %266

83:                                               ; preds = %70
  %84 = load i32, i32* @STMFTS_DEV_NAME, align 4
  %85 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %86 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %85, i32 0, i32 2
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @BUS_I2C, align 4
  %90 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %91 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %90, i32 0, i32 2
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %89, i32* %94, align 4
  %95 = load i32, i32* @stmfts_input_open, align 4
  %96 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %97 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %96, i32 0, i32 2
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @stmfts_input_close, align 4
  %101 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %102 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %101, i32 0, i32 2
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 4
  %105 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %106 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %105, i32 0, i32 2
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i32, i32* @EV_ABS, align 4
  %109 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %110 = call i32 @input_set_capability(%struct.TYPE_12__* %107, i32 %108, i32 %109)
  %111 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %112 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %111, i32 0, i32 2
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = load i32, i32* @EV_ABS, align 4
  %115 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %116 = call i32 @input_set_capability(%struct.TYPE_12__* %113, i32 %114, i32 %115)
  %117 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %118 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %117, i32 0, i32 2
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %121 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %120, i32 0, i32 3
  %122 = call i32 @touchscreen_parse_properties(%struct.TYPE_12__* %119, i32 1, i32* %121)
  %123 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %124 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %124, align 8
  %126 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %127 = call i32 @input_set_abs_params(%struct.TYPE_12__* %125, i32 %126, i32 0, i32 255, i32 0, i32 0)
  %128 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %129 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %128, i32 0, i32 2
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %129, align 8
  %131 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %132 = call i32 @input_set_abs_params(%struct.TYPE_12__* %130, i32 %131, i32 0, i32 255, i32 0, i32 0)
  %133 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %134 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = load i32, i32* @ABS_MT_ORIENTATION, align 4
  %137 = call i32 @input_set_abs_params(%struct.TYPE_12__* %135, i32 %136, i32 0, i32 255, i32 0, i32 0)
  %138 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %139 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %142 = call i32 @input_set_abs_params(%struct.TYPE_12__* %140, i32 %141, i32 0, i32 255, i32 0, i32 0)
  %143 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %144 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %143, i32 0, i32 2
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %144, align 8
  %146 = load i32, i32* @ABS_DISTANCE, align 4
  %147 = call i32 @input_set_abs_params(%struct.TYPE_12__* %145, i32 %146, i32 0, i32 255, i32 0, i32 0)
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = call i64 @device_property_read_bool(i32* %149, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %151 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %152 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %151, i32 0, i32 1
  store i64 %150, i64* %152, align 8
  %153 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %154 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %83
  %158 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %159 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %158, i32 0, i32 2
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = load i32, i32* @EV_KEY, align 4
  %162 = load i32, i32* @KEY_MENU, align 4
  %163 = call i32 @input_set_capability(%struct.TYPE_12__* %160, i32 %161, i32 %162)
  %164 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %165 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %164, i32 0, i32 2
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %165, align 8
  %167 = load i32, i32* @EV_KEY, align 4
  %168 = load i32, i32* @KEY_BACK, align 4
  %169 = call i32 @input_set_capability(%struct.TYPE_12__* %166, i32 %167, i32 %168)
  br label %170

170:                                              ; preds = %157, %83
  %171 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %172 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %171, i32 0, i32 2
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %172, align 8
  %174 = load i32, i32* @STMFTS_MAX_FINGERS, align 4
  %175 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %176 = call i32 @input_mt_init_slots(%struct.TYPE_12__* %173, i32 %174, i32 %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %170
  %180 = load i32, i32* %6, align 4
  store i32 %180, i32* %3, align 4
  br label %266

181:                                              ; preds = %170
  %182 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %183 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %182, i32 0, i32 2
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %186 = call i32 @input_set_drvdata(%struct.TYPE_12__* %184, %struct.stmfts_data* %185)
  %187 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %188 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %191 = call i32 @irq_set_status_flags(i32 %189, i32 %190)
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @stmfts_irq_handler, align 4
  %198 = load i32, i32* @IRQF_ONESHOT, align 4
  %199 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %200 = call i32 @devm_request_threaded_irq(i32* %193, i32 %196, i32* null, i32 %197, i32 %198, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %struct.stmfts_data* %199)
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %181
  %204 = load i32, i32* %6, align 4
  store i32 %204, i32* %3, align 4
  br label %266

205:                                              ; preds = %181
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = call i32 @dev_dbg(i32* %207, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  %209 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %210 = call i32 @stmfts_power_on(%struct.stmfts_data* %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* %6, align 4
  store i32 %214, i32* %3, align 4
  br label %266

215:                                              ; preds = %205
  %216 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %217 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %216, i32 0, i32 0
  %218 = load i32, i32* @stmfts_power_off, align 4
  %219 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %220 = call i32 @devm_add_action_or_reset(i32* %217, i32 %218, %struct.stmfts_data* %219)
  store i32 %220, i32* %6, align 4
  %221 = load i32, i32* %6, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %215
  %224 = load i32, i32* %6, align 4
  store i32 %224, i32* %3, align 4
  br label %266

225:                                              ; preds = %215
  %226 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %227 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %226, i32 0, i32 2
  %228 = load %struct.TYPE_12__*, %struct.TYPE_12__** %227, align 8
  %229 = call i32 @input_register_device(%struct.TYPE_12__* %228)
  store i32 %229, i32* %6, align 4
  %230 = load i32, i32* %6, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %3, align 4
  br label %266

234:                                              ; preds = %225
  %235 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %236 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %251

239:                                              ; preds = %234
  %240 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %241 = call i32 @stmfts_enable_led(%struct.stmfts_data* %240)
  store i32 %241, i32* %6, align 4
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %239
  %245 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %246 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %245, i32 0, i32 0
  %247 = call i32 @dev_warn(i32* %246, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %248 = load %struct.stmfts_data*, %struct.stmfts_data** %7, align 8
  %249 = getelementptr inbounds %struct.stmfts_data, %struct.stmfts_data* %248, i32 0, i32 0
  store i32* null, i32** %249, align 8
  br label %250

250:                                              ; preds = %244, %239
  br label %251

251:                                              ; preds = %250, %234
  %252 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %253 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %252, i32 0, i32 0
  %254 = call i32 @devm_device_add_group(i32* %253, i32* @stmfts_attribute_group)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %251
  %258 = load i32, i32* %6, align 4
  store i32 %258, i32* %3, align 4
  br label %266

259:                                              ; preds = %251
  %260 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %261 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %260, i32 0, i32 0
  %262 = call i32 @pm_runtime_enable(i32* %261)
  %263 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %264 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %263, i32 0, i32 0
  %265 = call i32 @device_enable_async_suspend(i32* %264)
  store i32 0, i32* %3, align 4
  br label %266

266:                                              ; preds = %259, %257, %232, %223, %213, %203, %179, %80, %68, %28, %18
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.stmfts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.stmfts_data*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @device_property_read_bool(i32*, i8*) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.stmfts_data*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.stmfts_data*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @stmfts_power_on(%struct.stmfts_data*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.stmfts_data*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

declare dso_local i32 @stmfts_enable_led(%struct.stmfts_data*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

declare dso_local i32 @device_enable_async_suspend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
