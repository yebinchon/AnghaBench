; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21013_ts.c_bu21013_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.bu21013_ts = type { i64, i64, i32, %struct.TYPE_4__, %struct.input_dev*, i8*, i8*, %struct.i2c_client* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.input_dev = type { %struct.input_absinfo*, %struct.TYPE_3__, i32 }
%struct.input_absinfo = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"i2c smbus byte data not supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"No IRQ set up\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"rohm,flip-x\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"rohm,flip-y\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"device memory alloc failed\0A\00", align 1
@DRIVER_TP = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"rohm,touch-max-x\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"rohm,touch-max-y\00", align 1
@ABS_MT_POSITION_X = common dso_local global i64 0, align 8
@ABS_MT_POSITION_Y = common dso_local global i64 0, align 8
@MAX_FINGERS = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_TRACK = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"failed to initialize MT slots\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"regulator_get failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"regulator enable failed\0A\00", align 1
@bu21013_power_off = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [37 x i8] c"failed to install power off handler\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"failed to get CS GPIO\0A\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"BU21013 CS\00", align 1
@bu21013_disable_chip = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [40 x i8] c"failed to install chip disable handler\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"touch\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"failed to get INT GPIO\0A\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"BU21013 INT\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"error in bu21013 config\0A\00", align 1
@bu21013_gpio_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [23 x i8] c"request irq %d failed\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bu21013_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21013_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bu21013_ts*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca %struct.input_absinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %16 = call i32 @i2c_check_functionality(i32 %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %337

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %337

35:                                               ; preds = %24
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.bu21013_ts* @devm_kzalloc(i32* %37, i32 64, i32 %38)
  store %struct.bu21013_ts* %39, %struct.bu21013_ts** %6, align 8
  %40 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %41 = icmp ne %struct.bu21013_ts* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %337

45:                                               ; preds = %35
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %48 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %47, i32 0, i32 7
  store %struct.i2c_client* %46, %struct.i2c_client** %48, align 8
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = call i8* @device_property_read_bool(i32* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %53 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = call i8* @device_property_read_bool(i32* %55, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %58 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = call %struct.input_dev* @devm_input_allocate_device(i32* %60)
  store %struct.input_dev* %61, %struct.input_dev** %7, align 8
  %62 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %63 = icmp ne %struct.input_dev* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %45
  %65 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %337

70:                                               ; preds = %45
  %71 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %72 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %73 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %72, i32 0, i32 4
  store %struct.input_dev* %71, %struct.input_dev** %73, align 8
  %74 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %75 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %76 = call i32 @input_set_drvdata(%struct.input_dev* %74, %struct.bu21013_ts* %75)
  %77 = load i32, i32* @DRIVER_TP, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @BUS_I2C, align 4
  %81 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call i32 @device_property_read_u32(i32* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %9)
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 0
  %89 = call i32 @device_property_read_u32(i32* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %10)
  %90 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %91 = load i64, i64* @ABS_MT_POSITION_X, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @input_set_abs_params(%struct.input_dev* %90, i64 %91, i32 0, i32 %92, i32 0, i32 0)
  %94 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %95 = load i64, i64* @ABS_MT_POSITION_Y, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @input_set_abs_params(%struct.input_dev* %94, i64 %95, i32 0, i32 %96, i32 0, i32 0)
  %98 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %99 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %100 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %99, i32 0, i32 3
  %101 = call i32 @touchscreen_parse_properties(%struct.input_dev* %98, i32 1, %struct.TYPE_4__* %100)
  %102 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %103 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %129, label %107

107:                                              ; preds = %70
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = call i8* @device_property_read_bool(i32* %109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 0
  %115 = load %struct.input_absinfo*, %struct.input_absinfo** %114, align 8
  %116 = load i64, i64* @ABS_MT_POSITION_X, align 8
  %117 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %115, i64 %116
  store %struct.input_absinfo* %117, %struct.input_absinfo** %8, align 8
  %118 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %119 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %122 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = sub nsw i64 %124, %120
  %126 = trunc i64 %125 to i32
  store i32 %126, i32* %122, align 8
  %127 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %128 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %112, %107, %70
  %130 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %131 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %157, label %135

135:                                              ; preds = %129
  %136 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %137 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %136, i32 0, i32 0
  %138 = call i8* @device_property_read_bool(i32* %137, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %142 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %141, i32 0, i32 0
  %143 = load %struct.input_absinfo*, %struct.input_absinfo** %142, align 8
  %144 = load i64, i64* @ABS_MT_POSITION_Y, align 8
  %145 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %143, i64 %144
  store %struct.input_absinfo* %145, %struct.input_absinfo** %8, align 8
  %146 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %147 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %150 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sext i32 %151 to i64
  %153 = sub nsw i64 %152, %148
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %150, align 8
  %155 = load %struct.input_absinfo*, %struct.input_absinfo** %8, align 8
  %156 = getelementptr inbounds %struct.input_absinfo, %struct.input_absinfo* %155, i32 0, i32 0
  store i64 0, i64* %156, align 8
  br label %157

157:                                              ; preds = %140, %135, %129
  %158 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %159 = load i32, i32* @MAX_FINGERS, align 4
  %160 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %161 = load i32, i32* @INPUT_MT_TRACK, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @input_mt_init_slots(%struct.input_dev* %158, i32 %159, i32 %164)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %157
  %169 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %170 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %169, i32 0, i32 0
  %171 = call i32 (i32*, i8*, ...) @dev_err(i32* %170, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %172 = load i32, i32* %11, align 4
  store i32 %172, i32* %3, align 4
  br label %337

173:                                              ; preds = %157
  %174 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %175 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %174, i32 0, i32 0
  %176 = call i32 @devm_regulator_get(i32* %175, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %177 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %178 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  %179 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %180 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = call i64 @IS_ERR(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %173
  %185 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %186 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %185, i32 0, i32 0
  %187 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %188 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %189 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @PTR_ERR(i32 %190)
  store i32 %191, i32* %3, align 4
  br label %337

192:                                              ; preds = %173
  %193 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %194 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @regulator_enable(i32 %195)
  store i32 %196, i32* %11, align 4
  %197 = load i32, i32* %11, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %192
  %200 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %201 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %200, i32 0, i32 0
  %202 = call i32 (i32*, i8*, ...) @dev_err(i32* %201, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i64 0, i64 0))
  %203 = load i32, i32* %11, align 4
  store i32 %203, i32* %3, align 4
  br label %337

204:                                              ; preds = %192
  %205 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %206 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %205, i32 0, i32 0
  %207 = load i32, i32* @bu21013_power_off, align 4
  %208 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %209 = call i32 @devm_add_action_or_reset(i32* %206, i32 %207, %struct.bu21013_ts* %208)
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* %11, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %204
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = call i32 (i32*, i8*, ...) @dev_err(i32* %214, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.11, i64 0, i64 0))
  %216 = load i32, i32* %11, align 4
  store i32 %216, i32* %3, align 4
  br label %337

217:                                              ; preds = %204
  %218 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %219 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %218, i32 0, i32 0
  %220 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %221 = call i64 @devm_gpiod_get(i32* %219, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 %220)
  %222 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %223 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %225 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @PTR_ERR_OR_ZERO(i64 %226)
  store i32 %227, i32* %11, align 4
  %228 = load i32, i32* %11, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %241

230:                                              ; preds = %217
  %231 = load i32, i32* %11, align 4
  %232 = load i32, i32* @EPROBE_DEFER, align 4
  %233 = sub nsw i32 0, %232
  %234 = icmp ne i32 %231, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %230
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %236, i32 0, i32 0
  %238 = call i32 (i32*, i8*, ...) @dev_err(i32* %237, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %239

239:                                              ; preds = %235, %230
  %240 = load i32, i32* %11, align 4
  store i32 %240, i32* %3, align 4
  br label %337

241:                                              ; preds = %217
  %242 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %243 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @gpiod_set_consumer_name(i64 %244, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %246 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %247 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %246, i32 0, i32 0
  %248 = load i32, i32* @bu21013_disable_chip, align 4
  %249 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %250 = call i32 @devm_add_action_or_reset(i32* %247, i32 %248, %struct.bu21013_ts* %249)
  store i32 %250, i32* %11, align 4
  %251 = load i32, i32* %11, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %241
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %254, i32 0, i32 0
  %256 = call i32 (i32*, i8*, ...) @dev_err(i32* %255, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %257 = load i32, i32* %11, align 4
  store i32 %257, i32* %3, align 4
  br label %337

258:                                              ; preds = %241
  %259 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %260 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %259, i32 0, i32 0
  %261 = load i32, i32* @GPIOD_IN, align 4
  %262 = call i64 @devm_gpiod_get_optional(i32* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i32 %261)
  %263 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %264 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %263, i32 0, i32 0
  store i64 %262, i64* %264, align 8
  %265 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %266 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = call i32 @PTR_ERR_OR_ZERO(i64 %267)
  store i32 %268, i32* %11, align 4
  %269 = load i32, i32* %11, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %282

271:                                              ; preds = %258
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* @EPROBE_DEFER, align 4
  %274 = sub nsw i32 0, %273
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %280

276:                                              ; preds = %271
  %277 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %278 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %277, i32 0, i32 0
  %279 = call i32 (i32*, i8*, ...) @dev_err(i32* %278, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  br label %280

280:                                              ; preds = %276, %271
  %281 = load i32, i32* %11, align 4
  store i32 %281, i32* %3, align 4
  br label %337

282:                                              ; preds = %258
  %283 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %284 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282
  %288 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %289 = getelementptr inbounds %struct.bu21013_ts, %struct.bu21013_ts* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = call i32 @gpiod_set_consumer_name(i64 %290, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  br label %292

292:                                              ; preds = %287, %282
  %293 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %294 = call i32 @bu21013_init_chip(%struct.bu21013_ts* %293)
  store i32 %294, i32* %11, align 4
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %292
  %298 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %299 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %298, i32 0, i32 0
  %300 = call i32 (i32*, i8*, ...) @dev_err(i32* %299, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  %301 = load i32, i32* %11, align 4
  store i32 %301, i32* %3, align 4
  br label %337

302:                                              ; preds = %292
  %303 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %304 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %303, i32 0, i32 0
  %305 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %306 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @bu21013_gpio_irq, align 4
  %309 = load i32, i32* @IRQF_ONESHOT, align 4
  %310 = load i32, i32* @DRIVER_TP, align 4
  %311 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %312 = call i32 @devm_request_threaded_irq(i32* %304, i32 %307, i32* null, i32 %308, i32 %309, i32 %310, %struct.bu21013_ts* %311)
  store i32 %312, i32* %11, align 4
  %313 = load i32, i32* %11, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %323

315:                                              ; preds = %302
  %316 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %317 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %316, i32 0, i32 0
  %318 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %319 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = call i32 (i32*, i8*, ...) @dev_err(i32* %317, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %11, align 4
  store i32 %322, i32* %3, align 4
  br label %337

323:                                              ; preds = %302
  %324 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %325 = call i32 @input_register_device(%struct.input_dev* %324)
  store i32 %325, i32* %11, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %333

328:                                              ; preds = %323
  %329 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %330 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %329, i32 0, i32 0
  %331 = call i32 (i32*, i8*, ...) @dev_err(i32* %330, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %332 = load i32, i32* %11, align 4
  store i32 %332, i32* %3, align 4
  br label %337

333:                                              ; preds = %323
  %334 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %335 = load %struct.bu21013_ts*, %struct.bu21013_ts** %6, align 8
  %336 = call i32 @i2c_set_clientdata(%struct.i2c_client* %334, %struct.bu21013_ts* %335)
  store i32 0, i32* %3, align 4
  br label %337

337:                                              ; preds = %333, %328, %315, %297, %280, %253, %239, %212, %199, %184, %168, %64, %42, %29, %18
  %338 = load i32, i32* %3, align 4
  ret i32 %338
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.bu21013_ts* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @device_property_read_bool(i32*, i8*) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bu21013_ts*) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.bu21013_ts*) #1

declare dso_local i64 @devm_gpiod_get(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i64) #1

declare dso_local i32 @gpiod_set_consumer_name(i64, i8*) #1

declare dso_local i64 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local i32 @bu21013_init_chip(%struct.bu21013_ts*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.bu21013_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bu21013_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
