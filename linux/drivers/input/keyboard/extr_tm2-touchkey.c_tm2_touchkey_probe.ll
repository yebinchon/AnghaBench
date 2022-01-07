; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tm2-touchkey.c_tm2_touchkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tm2-touchkey.c_tm2_touchkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i8*, i32 }
%struct.i2c_client = type { %struct.TYPE_26__, i32, i32 }
%struct.TYPE_26__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.tm2_touchkey_data = type { i32, %struct.TYPE_23__, %struct.TYPE_25__*, %struct.TYPE_27__*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, %struct.i2c_client* }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_23__*, i8*)*, i8*, i8*, i8* }
%struct.TYPE_25__ = type { i64 }
%struct.TYPE_27__ = type { %struct.TYPE_22__, i8* }
%struct.TYPE_22__ = type { i32 }

@I2C_FUNC_SMBUS_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"incompatible I2C adapter\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"vcc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to get regulators: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"linux,keycodes\00", align 1
@KEY_PHONE = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@KEY_BACK = common dso_local global %struct.TYPE_24__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [31 x i8] c"failed to power up device: %d\0A\00", align 1
@tm2_touchkey_power_disable = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [40 x i8] c"failed to install poweroff handler: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@TM2_TOUCHKEY_DEV_NAME = common dso_local global i8* null, align 8
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@tm2_touchkey_irq_handler = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [36 x i8] c"failed to request threaded irq: %d\0A\00", align 1
@LED_ON = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to register touchkey led: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @tm2_touchkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_touchkey_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.tm2_touchkey_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @I2C_FUNC_SMBUS_BYTE, align 4
  %18 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @i2c_check_functionality(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %268

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.tm2_touchkey_data* @devm_kzalloc(%struct.TYPE_26__* %30, i32 88, i32 %31)
  store %struct.tm2_touchkey_data* %32, %struct.tm2_touchkey_data** %7, align 8
  %33 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %34 = icmp ne %struct.tm2_touchkey_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %268

38:                                               ; preds = %28
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %41 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %40, i32 0, i32 7
  store %struct.i2c_client* %39, %struct.i2c_client** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %44 = call i32 @i2c_set_clientdata(%struct.i2c_client* %42, %struct.tm2_touchkey_data* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %45, i32 0, i32 0
  %47 = call %struct.TYPE_25__* @of_device_get_match_data(%struct.TYPE_26__* %46)
  %48 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %49 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %48, i32 0, i32 2
  store %struct.TYPE_25__* %47, %struct.TYPE_25__** %49, align 8
  %50 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %51 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %50, i32 0, i32 5
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %54, align 8
  %55 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %56 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %55, i32 0, i32 5
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i64 1
  %59 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %58, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %59, align 8
  %60 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %63 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %62, i32 0, i32 5
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.TYPE_24__* %64)
  %66 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %67 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %66, i32 0, i32 5
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %67, align 8
  %69 = call i32 @devm_regulator_bulk_get(%struct.TYPE_26__* %61, i32 %65, %struct.TYPE_24__* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %38
  %73 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %74 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %73, i32 0, i32 0
  %75 = load i32, i32* %8, align 4
  %76 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %3, align 4
  br label %268

78:                                               ; preds = %38
  %79 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %80 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %79, i32 0, i32 5
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %81, i64 1
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %86 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.device_node*, %struct.device_node** %6, align 8
  %88 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %89 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %88, i32 0, i32 4
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %89, align 8
  %91 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %92 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %91, i32 0, i32 4
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %92, align 8
  %94 = call i32 @ARRAY_SIZE(%struct.TYPE_24__* %93)
  %95 = call i32 @of_property_read_variable_u32_array(%struct.device_node* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %90, i32 0, i32 %94)
  %96 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %97 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %99 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %78
  %103 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %104 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %103, i32 0, i32 4
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i64 0
  %107 = bitcast %struct.TYPE_24__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 bitcast (%struct.TYPE_24__* @KEY_PHONE to i8*), i64 16, i1 false)
  %108 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %109 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %108, i32 0, i32 4
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i64 1
  %112 = bitcast %struct.TYPE_24__* %111 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %112, i8* align 8 bitcast (%struct.TYPE_24__* @KEY_BACK to i8*), i64 16, i1 false)
  %113 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %114 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  br label %115

115:                                              ; preds = %102, %78
  %116 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %117 = call i32 @tm2_touchkey_power_enable(%struct.tm2_touchkey_data* %116)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %121, i32 0, i32 0
  %123 = load i32, i32* %8, align 4
  %124 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %122, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %3, align 4
  br label %268

126:                                              ; preds = %115
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 0
  %129 = load i32, i32* @tm2_touchkey_power_disable, align 4
  %130 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %131 = call i32 @devm_add_action_or_reset(%struct.TYPE_26__* %128, i32 %129, %struct.tm2_touchkey_data* %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %126
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %135, i32 0, i32 0
  %137 = load i32, i32* %8, align 4
  %138 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %3, align 4
  br label %268

140:                                              ; preds = %126
  %141 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %142 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %141, i32 0, i32 0
  %143 = call %struct.TYPE_27__* @devm_input_allocate_device(%struct.TYPE_26__* %142)
  %144 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %145 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %144, i32 0, i32 3
  store %struct.TYPE_27__* %143, %struct.TYPE_27__** %145, align 8
  %146 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %147 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %146, i32 0, i32 3
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %147, align 8
  %149 = icmp ne %struct.TYPE_27__* %148, null
  br i1 %149, label %156, label %150

150:                                              ; preds = %140
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 0
  %153 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %268

156:                                              ; preds = %140
  %157 = load i8*, i8** @TM2_TOUCHKEY_DEV_NAME, align 8
  %158 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %159 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %158, i32 0, i32 3
  %160 = load %struct.TYPE_27__*, %struct.TYPE_27__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = load i32, i32* @BUS_I2C, align 4
  %163 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %164 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %163, i32 0, i32 3
  %165 = load %struct.TYPE_27__*, %struct.TYPE_27__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  store i32 %162, i32* %167, align 8
  store i32 0, i32* %9, align 4
  br label %168

168:                                              ; preds = %191, %156
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %171 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %194

174:                                              ; preds = %168
  %175 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %176 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %175, i32 0, i32 3
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %176, align 8
  %178 = load i32, i32* @EV_KEY, align 4
  %179 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %180 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %179, i32 0, i32 4
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i64 %183
  %185 = bitcast %struct.TYPE_24__* %184 to { i8*, i32 }*
  %186 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %185, i32 0, i32 0
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %185, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @input_set_capability(%struct.TYPE_27__* %177, i32 %178, i8* %187, i32 %189)
  br label %191

191:                                              ; preds = %174
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %168

194:                                              ; preds = %168
  %195 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %196 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %195, i32 0, i32 3
  %197 = load %struct.TYPE_27__*, %struct.TYPE_27__** %196, align 8
  %198 = call i32 @input_register_device(%struct.TYPE_27__* %197)
  store i32 %198, i32* %8, align 4
  %199 = load i32, i32* %8, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %194
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 0
  %204 = load i32, i32* %8, align 4
  %205 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %203, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* %8, align 4
  store i32 %206, i32* %3, align 4
  br label %268

207:                                              ; preds = %194
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 0
  %210 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %211 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @tm2_touchkey_irq_handler, align 4
  %214 = load i32, i32* @IRQF_ONESHOT, align 4
  %215 = load i8*, i8** @TM2_TOUCHKEY_DEV_NAME, align 8
  %216 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %217 = call i32 @devm_request_threaded_irq(%struct.TYPE_26__* %209, i32 %212, i32* null, i32 %213, i32 %214, i8* %215, %struct.tm2_touchkey_data* %216)
  store i32 %217, i32* %8, align 4
  %218 = load i32, i32* %8, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %207
  %221 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %222 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %221, i32 0, i32 0
  %223 = load i32, i32* %8, align 4
  %224 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %222, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %8, align 4
  store i32 %225, i32* %3, align 4
  br label %268

226:                                              ; preds = %207
  %227 = load i8*, i8** @TM2_TOUCHKEY_DEV_NAME, align 8
  %228 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %229 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 3
  store i8* %227, i8** %230, align 8
  %231 = load i8*, i8** @LED_ON, align 8
  %232 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %233 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %233, i32 0, i32 2
  store i8* %231, i8** %234, align 8
  %235 = load i8*, i8** @LED_ON, align 8
  %236 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %237 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 1
  store i8* %235, i8** %238, align 8
  %239 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %240 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %240, i32 0, i32 0
  store i32 (%struct.TYPE_23__*, i8*)* @tm2_touchkey_led_brightness_set, i32 (%struct.TYPE_23__*, i8*)** %241, align 8
  %242 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %243 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %242, i32 0, i32 0
  %244 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %245 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %244, i32 0, i32 1
  %246 = call i32 @devm_led_classdev_register(%struct.TYPE_26__* %243, %struct.TYPE_23__* %245)
  store i32 %246, i32* %8, align 4
  %247 = load i32, i32* %8, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %226
  %250 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %251 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %250, i32 0, i32 0
  %252 = load i32, i32* %8, align 4
  %253 = call i32 (%struct.TYPE_26__*, i8*, ...) @dev_err(%struct.TYPE_26__* %251, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* %8, align 4
  store i32 %254, i32* %3, align 4
  br label %268

255:                                              ; preds = %226
  %256 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %257 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %256, i32 0, i32 2
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %267

262:                                              ; preds = %255
  %263 = load %struct.tm2_touchkey_data*, %struct.tm2_touchkey_data** %7, align 8
  %264 = getelementptr inbounds %struct.tm2_touchkey_data, %struct.tm2_touchkey_data* %263, i32 0, i32 1
  %265 = load i8*, i8** @LED_ON, align 8
  %266 = call i32 @tm2_touchkey_led_brightness_set(%struct.TYPE_23__* %264, i8* %265)
  br label %267

267:                                              ; preds = %262, %255
  store i32 0, i32* %3, align 4
  br label %268

268:                                              ; preds = %267, %249, %220, %201, %150, %134, %120, %72, %35, %22
  %269 = load i32, i32* %3, align 4
  ret i32 %269
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_26__*, i8*, ...) #1

declare dso_local %struct.tm2_touchkey_data* @devm_kzalloc(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.tm2_touchkey_data*) #1

declare dso_local %struct.TYPE_25__* @of_device_get_match_data(%struct.TYPE_26__*) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.TYPE_26__*, i32, %struct.TYPE_24__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_24__*) #1

declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, %struct.TYPE_24__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tm2_touchkey_power_enable(%struct.tm2_touchkey_data*) #1

declare dso_local i32 @devm_add_action_or_reset(%struct.TYPE_26__*, i32, %struct.tm2_touchkey_data*) #1

declare dso_local %struct.TYPE_27__* @devm_input_allocate_device(%struct.TYPE_26__*) #1

declare dso_local i32 @input_set_capability(%struct.TYPE_27__*, i32, i8*, i32) #1

declare dso_local i32 @input_register_device(%struct.TYPE_27__*) #1

declare dso_local i32 @devm_request_threaded_irq(%struct.TYPE_26__*, i32, i32*, i32, i32, i8*, %struct.tm2_touchkey_data*) #1

declare dso_local i32 @tm2_touchkey_led_brightness_set(%struct.TYPE_23__*, i8*) #1

declare dso_local i32 @devm_led_classdev_register(%struct.TYPE_26__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
