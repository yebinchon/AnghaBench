; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keypad_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tca6416-keypad.c_tca6416_keypad_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tca6416_keys_platform_data = type { i32, i64, %struct.TYPE_7__*, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.tca6416_keypad_chip = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s adapter not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"no platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@buttons = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tca6416_keys_work_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"tca6416-keys/input0\00", align 1
@tca6416_keys_open = common dso_local global i32 0, align 4
@tca6416_keys_close = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@tca6416_keys_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"tca6416-keypad\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Unable to claim irq %d; error %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Unable to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tca6416_keypad_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tca6416_keypad_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.tca6416_keys_platform_data*, align 8
  %7 = alloca %struct.tca6416_keypad_chip*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 3
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %16 = call i32 @i2c_check_functionality(%struct.TYPE_8__* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 3
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = call i32 @dev_driver_string(i32* %24)
  %26 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %272

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %30, i32 0, i32 0
  %32 = call %struct.tca6416_keys_platform_data* @dev_get_platdata(i32* %31)
  store %struct.tca6416_keys_platform_data* %32, %struct.tca6416_keys_platform_data** %6, align 8
  %33 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %34 = icmp ne %struct.tca6416_keys_platform_data* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %272

41:                                               ; preds = %29
  %42 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %43 = load i32, i32* @buttons, align 4
  %44 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %45 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @struct_size(%struct.tca6416_keypad_chip* %42, i32 %43, i32 %46)
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.tca6416_keypad_chip* @kzalloc(i32 %47, i32 %48)
  store %struct.tca6416_keypad_chip* %49, %struct.tca6416_keypad_chip** %7, align 8
  %50 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %50, %struct.input_dev** %8, align 8
  %51 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %52 = icmp ne %struct.tca6416_keypad_chip* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %41
  %54 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %55 = icmp ne %struct.input_dev* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %53, %41
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %266

59:                                               ; preds = %53
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %62 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %61, i32 0, i32 7
  store %struct.i2c_client* %60, %struct.i2c_client** %62, align 8
  %63 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %64 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %65 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %64, i32 0, i32 6
  store %struct.input_dev* %63, %struct.input_dev** %65, align 8
  %66 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %70 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %69, i32 0, i32 5
  store i32 %68, i32* %70, align 8
  %71 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %72 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %75 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %77 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %80 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %82 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %81, i32 0, i32 3
  %83 = load i32, i32* @tca6416_keys_work_func, align 4
  %84 = call i32 @INIT_DELAYED_WORK(i32* %82, i32 %83)
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8** %86, align 8
  %87 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %88 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %91 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %90, i32 0, i32 6
  store i32 %89, i32* %91, align 8
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  store i32* %93, i32** %96, align 8
  %97 = load i32, i32* @tca6416_keys_open, align 4
  %98 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %99 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load i32, i32* @tca6416_keys_close, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @BUS_HOST, align 4
  %104 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %105 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  store i32 %103, i32* %106, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 4
  %110 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %111 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  %113 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %114 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 256, i32* %115, align 4
  %116 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %117 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %59
  %121 = load i32, i32* @EV_REP, align 4
  %122 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %123 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @__set_bit(i32 %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %59
  store i32 0, i32* %10, align 4
  br label %127

127:                                              ; preds = %173, %126
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %130 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %176

133:                                              ; preds = %127
  %134 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %135 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %134, i32 0, i32 2
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %141 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %140, i32 0, i32 2
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = bitcast %struct.TYPE_7__* %139 to i8*
  %147 = bitcast %struct.TYPE_7__* %145 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %146, i8* align 4 %147, i64 8, i1 false)
  %148 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %149 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %148, i32 0, i32 2
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %133
  br label %160

158:                                              ; preds = %133
  %159 = load i32, i32* @EV_KEY, align 4
  br label %160

160:                                              ; preds = %158, %157
  %161 = phi i32 [ %155, %157 ], [ %159, %158 ]
  store i32 %161, i32* %11, align 4
  %162 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %165 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %164, i32 0, i32 2
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @input_set_capability(%struct.input_dev* %162, i32 %163, i32 %171)
  br label %173

173:                                              ; preds = %160
  %174 = load i32, i32* %10, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %10, align 4
  br label %127

176:                                              ; preds = %127
  %177 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %178 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %179 = call i32 @input_set_drvdata(%struct.input_dev* %177, %struct.tca6416_keypad_chip* %178)
  %180 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %181 = call i32 @tca6416_setup_registers(%struct.tca6416_keypad_chip* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  br label %266

185:                                              ; preds = %176
  %186 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %187 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %233, label %190

190:                                              ; preds = %185
  %191 = load %struct.tca6416_keys_platform_data*, %struct.tca6416_keys_platform_data** %6, align 8
  %192 = getelementptr inbounds %struct.tca6416_keys_platform_data, %struct.tca6416_keys_platform_data* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %190
  %196 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %197 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @gpio_to_irq(i32 %198)
  %200 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %201 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %208

202:                                              ; preds = %190
  %203 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %204 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %207 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 8
  br label %208

208:                                              ; preds = %202, %195
  %209 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %210 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @tca6416_keys_isr, align 4
  %213 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %214 = load i32, i32* @IRQF_ONESHOT, align 4
  %215 = or i32 %213, %214
  %216 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %217 = call i32 @request_threaded_irq(i32 %211, i32* null, i32 %212, i32 %215, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), %struct.tca6416_keypad_chip* %216)
  store i32 %217, i32* %9, align 4
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %208
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %224 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %222, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %226)
  br label %266

228:                                              ; preds = %208
  %229 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %230 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @disable_irq(i32 %231)
  br label %233

233:                                              ; preds = %228, %185
  %234 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %235 = call i32 @input_register_device(%struct.input_dev* %234)
  store i32 %235, i32* %9, align 4
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %240 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %239, i32 0, i32 0
  %241 = load i32, i32* %9, align 4
  %242 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %240, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %241)
  br label %250

243:                                              ; preds = %233
  %244 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %245 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %246 = call i32 @i2c_set_clientdata(%struct.i2c_client* %244, %struct.tca6416_keypad_chip* %245)
  %247 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %248 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %247, i32 0, i32 0
  %249 = call i32 @device_init_wakeup(i32* %248, i32 1)
  store i32 0, i32* %3, align 4
  br label %272

250:                                              ; preds = %238
  %251 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %252 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %265, label %255

255:                                              ; preds = %250
  %256 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %257 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %260 = call i32 @free_irq(i32 %258, %struct.tca6416_keypad_chip* %259)
  %261 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %262 = getelementptr inbounds %struct.tca6416_keypad_chip, %struct.tca6416_keypad_chip* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @enable_irq(i32 %263)
  br label %265

265:                                              ; preds = %255, %250
  br label %266

266:                                              ; preds = %265, %220, %184, %56
  %267 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %268 = call i32 @input_free_device(%struct.input_dev* %267)
  %269 = load %struct.tca6416_keypad_chip*, %struct.tca6416_keypad_chip** %7, align 8
  %270 = call i32 @kfree(%struct.tca6416_keypad_chip* %269)
  %271 = load i32, i32* %9, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %266, %243, %35, %18
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_driver_string(i32*) #1

declare dso_local %struct.tca6416_keys_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local %struct.tca6416_keypad_chip* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.tca6416_keypad_chip*, i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.tca6416_keypad_chip*) #1

declare dso_local i32 @tca6416_setup_registers(%struct.tca6416_keypad_chip*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.tca6416_keypad_chip*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tca6416_keypad_chip*) #1

declare dso_local i32 @device_init_wakeup(i32*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.tca6416_keypad_chip*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.tca6416_keypad_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
