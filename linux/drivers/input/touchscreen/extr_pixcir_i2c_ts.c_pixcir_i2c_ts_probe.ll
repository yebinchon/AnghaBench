; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_i2c_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_i2c_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, %struct.device }
%struct.device = type { i64 }
%struct.i2c_device_id = type { i32 }
%struct.pixcir_ts_platform_data = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.pixcir_i2c_ts_data = type { i64, i8*, i8*, i8*, i8*, %struct.TYPE_6__*, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"platform data not defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Invalid max_fingers in chip data\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@pixcir_input_open = common dso_local global i32 0, align 4
@pixcir_input_close = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Touchscreen size is not specified\0A\00", align 1
@PIXCIR_MAX_SLOTS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"Limiting maximum fingers to %d\0A\00", align 1
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"Error initializing Multi-Touch slots\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"attb\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"Failed to request ATTB gpio: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to request RESET gpio: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"wake\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"Failed to get wake gpio: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"Failed to get enable gpio: %d\0A\00", align 1
@pixcir_ts_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@PIXCIR_POWER_IDLE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [25 x i8] c"Failed to set IDLE mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @pixcir_i2c_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixcir_i2c_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.pixcir_ts_platform_data*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.pixcir_i2c_ts_data*, align 8
  %9 = alloca %struct.input_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 2
  %13 = call %struct.pixcir_ts_platform_data* @dev_get_platdata(%struct.device* %12)
  store %struct.pixcir_ts_platform_data* %13, %struct.pixcir_ts_platform_data** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  store %struct.device* %15, %struct.device** %7, align 8
  %16 = load %struct.device*, %struct.device** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.pixcir_i2c_ts_data* @devm_kzalloc(%struct.device* %16, i32 72, i32 %17)
  store %struct.pixcir_i2c_ts_data* %18, %struct.pixcir_i2c_ts_data** %8, align 8
  %19 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %20 = icmp ne %struct.pixcir_i2c_ts_data* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %335

24:                                               ; preds = %2
  %25 = load %struct.pixcir_ts_platform_data*, %struct.pixcir_ts_platform_data** %6, align 8
  %26 = icmp ne %struct.pixcir_ts_platform_data* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.pixcir_ts_platform_data*, %struct.pixcir_ts_platform_data** %6, align 8
  %29 = getelementptr inbounds %struct.pixcir_ts_platform_data, %struct.pixcir_ts_platform_data* %28, i32 0, i32 2
  %30 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %31 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %30, i32 0, i32 5
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %31, align 8
  br label %52

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %7, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.device*, %struct.device** %7, align 8
  %39 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %40 = call i32 @pixcir_parse_dt(%struct.device* %38, %struct.pixcir_i2c_ts_data* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %3, align 4
  br label %335

45:                                               ; preds = %37
  br label %51

46:                                               ; preds = %32
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %335

51:                                               ; preds = %45
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %54 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %53, i32 0, i32 5
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %52
  %60 = load %struct.device*, %struct.device** %7, align 8
  %61 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %335

64:                                               ; preds = %52
  %65 = load %struct.device*, %struct.device** %7, align 8
  %66 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %65)
  store %struct.input_dev* %66, %struct.input_dev** %9, align 8
  %67 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %68 = icmp ne %struct.input_dev* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.device*, %struct.device** %7, align 8
  %71 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %335

74:                                               ; preds = %64
  %75 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %76 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %77 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %76, i32 0, i32 8
  store %struct.i2c_client* %75, %struct.i2c_client** %77, align 8
  %78 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %79 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %80 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %79, i32 0, i32 7
  store %struct.input_dev* %78, %struct.input_dev** %80, align 8
  %81 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %82 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @BUS_I2C, align 4
  %87 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %88 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load i32, i32* @pixcir_input_open, align 4
  %91 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %92 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @pixcir_input_close, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load %struct.device*, %struct.device** %7, align 8
  %97 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %98 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store %struct.device* %96, %struct.device** %99, align 8
  %100 = load %struct.pixcir_ts_platform_data*, %struct.pixcir_ts_platform_data** %6, align 8
  %101 = icmp ne %struct.pixcir_ts_platform_data* %100, null
  br i1 %101, label %102, label %115

102:                                              ; preds = %74
  %103 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %104 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %105 = load %struct.pixcir_ts_platform_data*, %struct.pixcir_ts_platform_data** %6, align 8
  %106 = getelementptr inbounds %struct.pixcir_ts_platform_data, %struct.pixcir_ts_platform_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %103, i32 %104, i32 0, i32 %107, i32 0, i32 0)
  %109 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %110 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %111 = load %struct.pixcir_ts_platform_data*, %struct.pixcir_ts_platform_data** %6, align 8
  %112 = getelementptr inbounds %struct.pixcir_ts_platform_data, %struct.pixcir_ts_platform_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @input_set_abs_params(%struct.input_dev* %109, i32 %110, i32 0, i32 %113, i32 0, i32 0)
  br label %143

115:                                              ; preds = %74
  %116 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %117 = load i32, i32* @EV_ABS, align 4
  %118 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %119 = call i32 @input_set_capability(%struct.input_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %121 = load i32, i32* @EV_ABS, align 4
  %122 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %123 = call i32 @input_set_capability(%struct.input_dev* %120, i32 %121, i32 %122)
  %124 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %125 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %126 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %125, i32 0, i32 6
  %127 = call i32 @touchscreen_parse_properties(%struct.input_dev* %124, i32 1, i32* %126)
  %128 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %129 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %130 = call i32 @input_abs_get_max(%struct.input_dev* %128, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %134 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %135 = call i32 @input_abs_get_max(%struct.input_dev* %133, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %142, label %137

137:                                              ; preds = %132, %115
  %138 = load %struct.device*, %struct.device** %7, align 8
  %139 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @EINVAL, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %335

142:                                              ; preds = %132
  br label %143

143:                                              ; preds = %142, %102
  %144 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %145 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %144, i32 0, i32 5
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %150 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %152 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @PIXCIR_MAX_SLOTS, align 8
  %155 = icmp sgt i64 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %143
  %157 = load i64, i64* @PIXCIR_MAX_SLOTS, align 8
  %158 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %159 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.device*, %struct.device** %7, align 8
  %161 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %162 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = call i32 @dev_info(%struct.device* %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %163)
  br label %165

165:                                              ; preds = %156, %143
  %166 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %167 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %168 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %171 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @input_mt_init_slots(%struct.input_dev* %166, i64 %169, i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %165
  %177 = load %struct.device*, %struct.device** %7, align 8
  %178 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %179 = load i32, i32* %10, align 4
  store i32 %179, i32* %3, align 4
  br label %335

180:                                              ; preds = %165
  %181 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %182 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %183 = call i32 @input_set_drvdata(%struct.input_dev* %181, %struct.pixcir_i2c_ts_data* %182)
  %184 = load %struct.device*, %struct.device** %7, align 8
  %185 = load i32, i32* @GPIOD_IN, align 4
  %186 = call i8* @devm_gpiod_get(%struct.device* %184, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  %187 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %188 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %187, i32 0, i32 4
  store i8* %186, i8** %188, align 8
  %189 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %190 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %189, i32 0, i32 4
  %191 = load i8*, i8** %190, align 8
  %192 = call i64 @IS_ERR(i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %180
  %195 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %196 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %195, i32 0, i32 4
  %197 = load i8*, i8** %196, align 8
  %198 = call i32 @PTR_ERR(i8* %197)
  store i32 %198, i32* %10, align 4
  %199 = load %struct.device*, %struct.device** %7, align 8
  %200 = load i32, i32* %10, align 4
  %201 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %199, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %3, align 4
  br label %335

203:                                              ; preds = %180
  %204 = load %struct.device*, %struct.device** %7, align 8
  %205 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %206 = call i8* @devm_gpiod_get_optional(%struct.device* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %205)
  %207 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %208 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %207, i32 0, i32 3
  store i8* %206, i8** %208, align 8
  %209 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %210 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @IS_ERR(i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %203
  %215 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %216 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %215, i32 0, i32 3
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @PTR_ERR(i8* %217)
  store i32 %218, i32* %10, align 4
  %219 = load %struct.device*, %struct.device** %7, align 8
  %220 = load i32, i32* %10, align 4
  %221 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %219, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %220)
  %222 = load i32, i32* %10, align 4
  store i32 %222, i32* %3, align 4
  br label %335

223:                                              ; preds = %203
  %224 = load %struct.device*, %struct.device** %7, align 8
  %225 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %226 = call i8* @devm_gpiod_get_optional(%struct.device* %224, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %225)
  %227 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %228 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %227, i32 0, i32 2
  store i8* %226, i8** %228, align 8
  %229 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %230 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %229, i32 0, i32 2
  %231 = load i8*, i8** %230, align 8
  %232 = call i64 @IS_ERR(i8* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %223
  %235 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %236 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %235, i32 0, i32 2
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @PTR_ERR(i8* %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @EPROBE_DEFER, align 4
  %241 = sub nsw i32 0, %240
  %242 = icmp ne i32 %239, %241
  br i1 %242, label %243, label %247

243:                                              ; preds = %234
  %244 = load %struct.device*, %struct.device** %7, align 8
  %245 = load i32, i32* %10, align 4
  %246 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %244, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %245)
  br label %247

247:                                              ; preds = %243, %234
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %3, align 4
  br label %335

249:                                              ; preds = %223
  %250 = load %struct.device*, %struct.device** %7, align 8
  %251 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %252 = call i8* @devm_gpiod_get_optional(%struct.device* %250, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %251)
  %253 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %254 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %253, i32 0, i32 1
  store i8* %252, i8** %254, align 8
  %255 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %256 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %255, i32 0, i32 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i64 @IS_ERR(i8* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %275

260:                                              ; preds = %249
  %261 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %262 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %261, i32 0, i32 1
  %263 = load i8*, i8** %262, align 8
  %264 = call i32 @PTR_ERR(i8* %263)
  store i32 %264, i32* %10, align 4
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* @EPROBE_DEFER, align 4
  %267 = sub nsw i32 0, %266
  %268 = icmp ne i32 %265, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %260
  %270 = load %struct.device*, %struct.device** %7, align 8
  %271 = load i32, i32* %10, align 4
  %272 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %269, %260
  %274 = load i32, i32* %10, align 4
  store i32 %274, i32* %3, align 4
  br label %335

275:                                              ; preds = %249
  %276 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %277 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %276, i32 0, i32 1
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %282

280:                                              ; preds = %275
  %281 = call i32 @msleep(i32 100)
  br label %282

282:                                              ; preds = %280, %275
  %283 = load %struct.device*, %struct.device** %7, align 8
  %284 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %285 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @pixcir_ts_isr, align 4
  %288 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %289 = load i32, i32* @IRQF_ONESHOT, align 4
  %290 = or i32 %288, %289
  %291 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %292 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %295 = call i32 @devm_request_threaded_irq(%struct.device* %283, i32 %286, i32* null, i32 %287, i32 %290, i32 %293, %struct.pixcir_i2c_ts_data* %294)
  store i32 %295, i32* %10, align 4
  %296 = load i32, i32* %10, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %282
  %299 = load %struct.device*, %struct.device** %7, align 8
  %300 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %301 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %299, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %302)
  %304 = load i32, i32* %10, align 4
  store i32 %304, i32* %3, align 4
  br label %335

305:                                              ; preds = %282
  %306 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %307 = call i32 @pixcir_reset(%struct.pixcir_i2c_ts_data* %306)
  %308 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %309 = load i32, i32* @PIXCIR_POWER_IDLE, align 4
  %310 = call i32 @pixcir_set_power_mode(%struct.pixcir_i2c_ts_data* %308, i32 %309)
  store i32 %310, i32* %10, align 4
  %311 = load i32, i32* %10, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %305
  %314 = load %struct.device*, %struct.device** %7, align 8
  %315 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %314, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %316 = load i32, i32* %10, align 4
  store i32 %316, i32* %3, align 4
  br label %335

317:                                              ; preds = %305
  %318 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %319 = call i32 @pixcir_stop(%struct.pixcir_i2c_ts_data* %318)
  store i32 %319, i32* %10, align 4
  %320 = load i32, i32* %10, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %317
  %323 = load i32, i32* %10, align 4
  store i32 %323, i32* %3, align 4
  br label %335

324:                                              ; preds = %317
  %325 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  %326 = call i32 @input_register_device(%struct.input_dev* %325)
  store i32 %326, i32* %10, align 4
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %331

329:                                              ; preds = %324
  %330 = load i32, i32* %10, align 4
  store i32 %330, i32* %3, align 4
  br label %335

331:                                              ; preds = %324
  %332 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %333 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %8, align 8
  %334 = call i32 @i2c_set_clientdata(%struct.i2c_client* %332, %struct.pixcir_i2c_ts_data* %333)
  store i32 0, i32* %3, align 4
  br label %335

335:                                              ; preds = %331, %329, %322, %313, %298, %273, %247, %214, %194, %176, %137, %69, %59, %46, %43, %21
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local %struct.pixcir_ts_platform_data* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.pixcir_i2c_ts_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @pixcir_parse_dt(%struct.device*, %struct.pixcir_i2c_ts_data*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_abs_get_max(%struct.input_dev*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.pixcir_i2c_ts_data*) #1

declare dso_local i8* @devm_gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32*, i32, i32, i32, %struct.pixcir_i2c_ts_data*) #1

declare dso_local i32 @pixcir_reset(%struct.pixcir_i2c_ts_data*) #1

declare dso_local i32 @pixcir_set_power_mode(%struct.pixcir_i2c_ts_data*, i32) #1

declare dso_local i32 @pixcir_stop(%struct.pixcir_i2c_ts_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.pixcir_i2c_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
