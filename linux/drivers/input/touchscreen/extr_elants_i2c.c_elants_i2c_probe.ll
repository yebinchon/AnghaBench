; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_elants_i2c.c_elants_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_18__, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%union.i2c_smbus_data = type { i32 }
%struct.elants_data = type { i32, i32, i32, %struct.TYPE_17__*, i32, i32, i8*, i8*, i8*, %struct.i2c_client*, i32, i32 }
%struct.TYPE_17__ = type { i8*, i32, i32, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: i2c check functionality error\0A\00", align 1
@DEVICE_NAME = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"vcc33\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to get 'vcc33' regulator: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"vccio\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"Failed to get 'vccio' regulator: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to get reset gpio: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"failed to install power off action: %d\0A\00", align 1
@I2C_SMBUS_READ = common dso_local global i32 0, align 4
@I2C_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [25 x i8] c"nothing at this address\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"failed to initialize: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Failed to allocate input device\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Elan Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@MAX_CONTACT_NUM = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"failed to initialize MT slots: %d\0A\00", align 1
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@IRQF_TRIGGER_FALLING = common dso_local global i64 0, align 8
@elants_i2c_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@elants_attribute_group = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [39 x i8] c"failed to create sysfs attributes: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @elants_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elants_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %union.i2c_smbus_data, align 4
  %7 = alloca %struct.elants_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = load i32, i32* @DEVICE_NAME, align 4
  %20 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %18, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %401

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.elants_data* @devm_kzalloc(%struct.TYPE_18__* %25, i32 72, i32 %26)
  store %struct.elants_data* %27, %struct.elants_data** %7, align 8
  %28 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %29 = icmp ne %struct.elants_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %401

33:                                               ; preds = %23
  %34 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %35 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %34, i32 0, i32 11
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %38 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %37, i32 0, i32 10
  %39 = call i32 @init_completion(i32* %38)
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %42 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %41, i32 0, i32 9
  store %struct.i2c_client* %40, %struct.i2c_client** %42, align 8
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %45 = call i32 @i2c_set_clientdata(%struct.i2c_client* %43, %struct.elants_data* %44)
  %46 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %47 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %46, i32 0, i32 0
  %48 = call i8* @devm_regulator_get(%struct.TYPE_18__* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %49 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %50 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %49, i32 0, i32 8
  store i8* %48, i8** %50, align 8
  %51 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %52 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %51, i32 0, i32 8
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %33
  %57 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %58 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %57, i32 0, i32 8
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @PTR_ERR(i8* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @EPROBE_DEFER, align 4
  %63 = sub nsw i32 0, %62
  %64 = icmp ne i32 %61, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %56
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %65, %56
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %401

72:                                               ; preds = %33
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = call i8* @devm_regulator_get(%struct.TYPE_18__* %74, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %77 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %76, i32 0, i32 7
  store i8* %75, i8** %77, align 8
  %78 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %79 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %78, i32 0, i32 7
  %80 = load i8*, i8** %79, align 8
  %81 = call i64 @IS_ERR(i8* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %72
  %84 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %85 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %84, i32 0, i32 7
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @PTR_ERR(i8* %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EPROBE_DEFER, align 4
  %90 = sub nsw i32 0, %89
  %91 = icmp ne i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %83
  %93 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %94 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %93, i32 0, i32 0
  %95 = load i32, i32* %9, align 4
  %96 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %92, %83
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %401

99:                                               ; preds = %72
  %100 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %101 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %100, i32 0, i32 0
  %102 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %103 = call i8* @devm_gpiod_get(%struct.TYPE_18__* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %102)
  %104 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %105 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %104, i32 0, i32 6
  store i8* %103, i8** %105, align 8
  %106 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %107 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %106, i32 0, i32 6
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @IS_ERR(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %141

111:                                              ; preds = %99
  %112 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %113 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %112, i32 0, i32 6
  %114 = load i8*, i8** %113, align 8
  %115 = call i32 @PTR_ERR(i8* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @EPROBE_DEFER, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp eq i32 %116, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %111
  %121 = load i32, i32* %9, align 4
  store i32 %121, i32* %3, align 4
  br label %401

122:                                              ; preds = %111
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @ENOENT, align 4
  %125 = sub nsw i32 0, %124
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %138

127:                                              ; preds = %122
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @ENOSYS, align 4
  %130 = sub nsw i32 0, %129
  %131 = icmp ne i32 %128, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %134 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %133, i32 0, i32 0
  %135 = load i32, i32* %9, align 4
  %136 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %401

138:                                              ; preds = %127, %122
  %139 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %140 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %139, i32 0, i32 0
  store i32 1, i32* %140, align 8
  br label %141

141:                                              ; preds = %138, %99
  %142 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %143 = call i32 @elants_i2c_power_on(%struct.elants_data* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %401

148:                                              ; preds = %141
  %149 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %150 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %149, i32 0, i32 0
  %151 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %152 = call i32 @devm_add_action(%struct.TYPE_18__* %150, i32 (%struct.elants_data*)* @elants_i2c_power_off, %struct.elants_data* %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %148
  %156 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load i32, i32* %9, align 4
  %159 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %158)
  %160 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %161 = call i32 @elants_i2c_power_off(%struct.elants_data* %160)
  %162 = load i32, i32* %9, align 4
  store i32 %162, i32* %3, align 4
  br label %401

163:                                              ; preds = %148
  %164 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %165 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %168 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @I2C_SMBUS_READ, align 4
  %171 = load i32, i32* @I2C_SMBUS_BYTE, align 4
  %172 = call i64 @i2c_smbus_xfer(i32 %166, i32 %169, i32 0, i32 %170, i32 0, i32 %171, %union.i2c_smbus_data* %6)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %176, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %178 = load i32, i32* @ENXIO, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %401

180:                                              ; preds = %163
  %181 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %182 = call i32 @elants_i2c_initialize(%struct.elants_data* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 0
  %188 = load i32, i32* %9, align 4
  %189 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %187, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %401

191:                                              ; preds = %180
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call %struct.TYPE_17__* @devm_input_allocate_device(%struct.TYPE_18__* %193)
  %195 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %196 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %195, i32 0, i32 3
  store %struct.TYPE_17__* %194, %struct.TYPE_17__** %196, align 8
  %197 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %198 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %197, i32 0, i32 3
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %198, align 8
  %200 = icmp ne %struct.TYPE_17__* %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %191
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 0
  %204 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %203, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %3, align 4
  br label %401

207:                                              ; preds = %191
  %208 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %209 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %208, i32 0, i32 3
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i8** %211, align 8
  %212 = load i32, i32* @BUS_I2C, align 4
  %213 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %214 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %213, i32 0, i32 3
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  store i32 %212, i32* %217, align 8
  %218 = load i32, i32* @BTN_TOUCH, align 4
  %219 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %220 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %219, i32 0, i32 3
  %221 = load %struct.TYPE_17__*, %struct.TYPE_17__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @__set_bit(i32 %218, i32 %223)
  %225 = load i32, i32* @EV_ABS, align 4
  %226 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %227 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %226, i32 0, i32 3
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @__set_bit(i32 %225, i32 %230)
  %232 = load i32, i32* @EV_KEY, align 4
  %233 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %234 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %233, i32 0, i32 3
  %235 = load %struct.TYPE_17__*, %struct.TYPE_17__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @__set_bit(i32 %232, i32 %237)
  %239 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %240 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %239, i32 0, i32 3
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %240, align 8
  %242 = load i32, i32* @ABS_X, align 4
  %243 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %244 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @input_set_abs_params(%struct.TYPE_17__* %241, i32 %242, i32 0, i32 %245, i32 0, i32 0)
  %247 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %248 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %247, i32 0, i32 3
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %248, align 8
  %250 = load i32, i32* @ABS_Y, align 4
  %251 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %252 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @input_set_abs_params(%struct.TYPE_17__* %249, i32 %250, i32 0, i32 %253, i32 0, i32 0)
  %255 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %256 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %255, i32 0, i32 3
  %257 = load %struct.TYPE_17__*, %struct.TYPE_17__** %256, align 8
  %258 = load i32, i32* @ABS_PRESSURE, align 4
  %259 = call i32 @input_set_abs_params(%struct.TYPE_17__* %257, i32 %258, i32 0, i32 255, i32 0, i32 0)
  %260 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %261 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %260, i32 0, i32 3
  %262 = load %struct.TYPE_17__*, %struct.TYPE_17__** %261, align 8
  %263 = load i32, i32* @ABS_X, align 4
  %264 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %265 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %264, i32 0, i32 5
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @input_abs_set_res(%struct.TYPE_17__* %262, i32 %263, i32 %266)
  %268 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %269 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %268, i32 0, i32 3
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = load i32, i32* @ABS_Y, align 4
  %272 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %273 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @input_abs_set_res(%struct.TYPE_17__* %270, i32 %271, i32 %274)
  %276 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %277 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %276, i32 0, i32 3
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %277, align 8
  %279 = load i32, i32* @MAX_CONTACT_NUM, align 4
  %280 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %281 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %282 = or i32 %280, %281
  %283 = call i32 @input_mt_init_slots(%struct.TYPE_17__* %278, i32 %279, i32 %282)
  store i32 %283, i32* %9, align 4
  %284 = load i32, i32* %9, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %207
  %287 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %288 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %287, i32 0, i32 0
  %289 = load i32, i32* %9, align 4
  %290 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %288, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %289)
  %291 = load i32, i32* %9, align 4
  store i32 %291, i32* %3, align 4
  br label %401

292:                                              ; preds = %207
  %293 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %294 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %293, i32 0, i32 3
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %294, align 8
  %296 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %297 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %298 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @input_set_abs_params(%struct.TYPE_17__* %295, i32 %296, i32 0, i32 %299, i32 0, i32 0)
  %301 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %302 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %301, i32 0, i32 3
  %303 = load %struct.TYPE_17__*, %struct.TYPE_17__** %302, align 8
  %304 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %305 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %306 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @input_set_abs_params(%struct.TYPE_17__* %303, i32 %304, i32 0, i32 %307, i32 0, i32 0)
  %309 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %310 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %309, i32 0, i32 3
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %310, align 8
  %312 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %313 = call i32 @input_set_abs_params(%struct.TYPE_17__* %311, i32 %312, i32 0, i32 255, i32 0, i32 0)
  %314 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %315 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %314, i32 0, i32 3
  %316 = load %struct.TYPE_17__*, %struct.TYPE_17__** %315, align 8
  %317 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %318 = call i32 @input_set_abs_params(%struct.TYPE_17__* %316, i32 %317, i32 0, i32 255, i32 0, i32 0)
  %319 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %320 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %319, i32 0, i32 3
  %321 = load %struct.TYPE_17__*, %struct.TYPE_17__** %320, align 8
  %322 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %323 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %324 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @input_abs_set_res(%struct.TYPE_17__* %321, i32 %322, i32 %325)
  %327 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %328 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %327, i32 0, i32 3
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %328, align 8
  %330 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %331 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %332 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @input_abs_set_res(%struct.TYPE_17__* %329, i32 %330, i32 %333)
  %335 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %336 = getelementptr inbounds %struct.elants_data, %struct.elants_data* %335, i32 0, i32 3
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %336, align 8
  %338 = call i32 @input_register_device(%struct.TYPE_17__* %337)
  store i32 %338, i32* %9, align 4
  %339 = load i32, i32* %9, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %292
  %342 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %343 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %342, i32 0, i32 0
  %344 = load i32, i32* %9, align 4
  %345 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %343, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* %9, align 4
  store i32 %346, i32* %3, align 4
  br label %401

347:                                              ; preds = %292
  %348 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %349 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = call i64 @irq_get_trigger_type(i32 %350)
  store i64 %351, i64* %8, align 8
  %352 = load i64, i64* %8, align 8
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %356, label %354

354:                                              ; preds = %347
  %355 = load i64, i64* @IRQF_TRIGGER_FALLING, align 8
  store i64 %355, i64* %8, align 8
  br label %356

356:                                              ; preds = %354, %347
  %357 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %358 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %357, i32 0, i32 0
  %359 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %360 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @elants_i2c_irq, align 4
  %363 = load i64, i64* %8, align 8
  %364 = load i64, i64* @IRQF_ONESHOT, align 8
  %365 = or i64 %363, %364
  %366 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %367 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = load %struct.elants_data*, %struct.elants_data** %7, align 8
  %370 = call i32 @devm_request_threaded_irq(%struct.TYPE_18__* %358, i32 %361, i32* null, i32 %362, i64 %365, i32 %368, %struct.elants_data* %369)
  store i32 %370, i32* %9, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %356
  %374 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %375 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %374, i32 0, i32 0
  %376 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %375, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  %377 = load i32, i32* %9, align 4
  store i32 %377, i32* %3, align 4
  br label %401

378:                                              ; preds = %356
  %379 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %380 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %388, label %384

384:                                              ; preds = %378
  %385 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %386 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %385, i32 0, i32 0
  %387 = call i32 @device_init_wakeup(%struct.TYPE_18__* %386, i32 1)
  br label %388

388:                                              ; preds = %384, %378
  %389 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %390 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %389, i32 0, i32 0
  %391 = call i32 @devm_device_add_group(%struct.TYPE_18__* %390, i32* @elants_attribute_group)
  store i32 %391, i32* %9, align 4
  %392 = load i32, i32* %9, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %400

394:                                              ; preds = %388
  %395 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %396 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %395, i32 0, i32 0
  %397 = load i32, i32* %9, align 4
  %398 = call i32 (%struct.TYPE_18__*, i8*, ...) @dev_err(%struct.TYPE_18__* %396, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0), i32 %397)
  %399 = load i32, i32* %9, align 4
  store i32 %399, i32* %3, align 4
  br label %401

400:                                              ; preds = %388
  store i32 0, i32* %3, align 4
  br label %401

401:                                              ; preds = %400, %394, %373, %341, %286, %201, %185, %174, %155, %146, %132, %120, %97, %70, %30, %16
  %402 = load i32, i32* %3, align 4
  ret i32 %402
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_18__*, i8*, ...) #1

declare dso_local %struct.elants_data* @devm_kzalloc(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.elants_data*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @devm_gpiod_get(%struct.TYPE_18__*, i8*, i32) #1

declare dso_local i32 @elants_i2c_power_on(%struct.elants_data*) #1

declare dso_local i32 @devm_add_action(%struct.TYPE_18__*, i32 (%struct.elants_data*)*, %struct.elants_data*) #1

declare dso_local i32 @elants_i2c_power_off(%struct.elants_data*) #1

declare dso_local i64 @i2c_smbus_xfer(i32, i32, i32, i32, i32, i32, %union.i2c_smbus_data*) #1

declare dso_local i32 @elants_i2c_initialize(%struct.elants_data*) #1

declare dso_local %struct.TYPE_17__* @devm_input_allocate_device(%struct.TYPE_18__*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_17__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_17__*) #1

declare dso_local i64 @irq_get_trigger_type(i32) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_18__*, i32, i32*, i32, i64, i32, %struct.elants_data*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @devm_device_add_group(%struct.TYPE_18__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
