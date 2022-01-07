; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_mcs_touchkey.c_mcs_touchkey_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.mcs_platform_data = type { i32, i32 (i32)*, i32 (...)*, i32*, i64, i32 }
%struct.mcs_touchkey_data = type { i32*, i32 (i32)*, %struct.TYPE_8__, %struct.input_dev*, %struct.i2c_client* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.input_dev = type { i8*, i32*, i32, i32, i64, i32*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"no platform data defined\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@keycodes = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MCS5000_TOUCHKEY = common dso_local global i64 0, align 8
@MCS5000_TOUCHKEY_STATUS = common dso_local global i32 0, align 4
@MCS5000_TOUCHKEY_STATUS_PRESS = common dso_local global i32 0, align 4
@MCS5000_TOUCHKEY_BASE_VAL = common dso_local global i32 0, align 4
@MCS5000_TOUCHKEY_FW = common dso_local global i32 0, align 4
@MCS5080_TOUCHKEY_STATUS = common dso_local global i32 0, align 4
@MCS5080_TOUCHKEY_STATUS_PRESS = common dso_local global i32 0, align 4
@MCS5080_TOUCHKEY_BASE_VAL = common dso_local global i32 0, align 4
@MCS5080_TOUCHKEY_FW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"i2c read error[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Firmware version: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"MELFAS MCS Touchkey\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@mcs_touchkey_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mcs_touchkey_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs_touchkey_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mcs_platform_data*, align 8
  %7 = alloca %struct.mcs_touchkey_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 1
  %17 = call %struct.mcs_platform_data* @dev_get_platdata(%struct.TYPE_12__* %16)
  store %struct.mcs_platform_data* %17, %struct.mcs_platform_data** %6, align 8
  %18 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %19 = icmp ne %struct.mcs_platform_data* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %22 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %21, i32 0, i32 1
  %23 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %266

26:                                               ; preds = %2
  %27 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %28 = load i32, i32* @keycodes, align 4
  %29 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @struct_size(%struct.mcs_touchkey_data* %27, i32 %28, i64 %32)
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.mcs_touchkey_data* @kzalloc(i32 %33, i32 %34)
  store %struct.mcs_touchkey_data* %35, %struct.mcs_touchkey_data** %7, align 8
  %36 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %36, %struct.input_dev** %8, align 8
  %37 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %38 = icmp ne %struct.mcs_touchkey_data* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %41 = icmp ne %struct.input_dev* %40, null
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 1
  %45 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %11, align 4
  br label %260

48:                                               ; preds = %39
  %49 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %50 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %51 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %50, i32 0, i32 4
  store %struct.i2c_client* %49, %struct.i2c_client** %51, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %53 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %54 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %53, i32 0, i32 3
  store %struct.input_dev* %52, %struct.input_dev** %54, align 8
  %55 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %56 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MCS5000_TOUCHKEY, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %48
  %61 = load i32, i32* @MCS5000_TOUCHKEY_STATUS, align 4
  %62 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %63 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @MCS5000_TOUCHKEY_STATUS_PRESS, align 4
  %66 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %67 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @MCS5000_TOUCHKEY_BASE_VAL, align 4
  %70 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %71 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @MCS5000_TOUCHKEY_FW, align 4
  store i32 %73, i32* %9, align 4
  br label %91

74:                                               ; preds = %48
  %75 = load i32, i32* @MCS5080_TOUCHKEY_STATUS, align 4
  %76 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %77 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* @MCS5080_TOUCHKEY_STATUS_PRESS, align 4
  %80 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %81 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 8
  %83 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %84 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @MCS5080_TOUCHKEY_BASE_VAL, align 4
  %87 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %88 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @MCS5080_TOUCHKEY_FW, align 4
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %74, %60
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %11, align 4
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %99, i32 0, i32 1
  %101 = load i32, i32* %11, align 4
  %102 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %260

103:                                              ; preds = %91
  %104 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %105 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %104, i32 0, i32 1
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @dev_info(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %109 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %108, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i8** %109, align 8
  %110 = load i32, i32* @BUS_I2C, align 4
  %111 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %112 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %111, i32 0, i32 7
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 8
  %114 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %115 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %114, i32 0, i32 1
  %116 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %117 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  store %struct.TYPE_12__* %115, %struct.TYPE_12__** %118, align 8
  %119 = load i32, i32* @EV_KEY, align 4
  %120 = call i32 @BIT_MASK(i32 %119)
  %121 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %122 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  store i32 %120, i32* %124, align 4
  %125 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %126 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %138, label %129

129:                                              ; preds = %103
  %130 = load i32, i32* @EV_REP, align 4
  %131 = call i32 @BIT_MASK(i32 %130)
  %132 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %133 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %132, i32 0, i32 5
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %131
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %129, %103
  %139 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %140 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %143 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %142, i32 0, i32 1
  store i32* %141, i32** %143, align 8
  %144 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %145 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %144, i32 0, i32 2
  store i32 4, i32* %145, align 8
  %146 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %147 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  %150 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %151 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %150, i32 0, i32 4
  store i64 %149, i64* %151, align 8
  store i32 0, i32* %12, align 4
  br label %152

152:                                              ; preds = %187, %138
  %153 = load i32, i32* %12, align 4
  %154 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %155 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %158, label %190

158:                                              ; preds = %152
  %159 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %160 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @MCS_KEY_VAL(i32 %165)
  store i32 %166, i32* %13, align 4
  %167 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %168 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %12, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @MCS_KEY_CODE(i32 %173)
  store i32 %174, i32* %14, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %177 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %175, i32* %181, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %184 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @__set_bit(i32 %182, i32 %185)
  br label %187

187:                                              ; preds = %158
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %12, align 4
  br label %152

190:                                              ; preds = %152
  %191 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %192 = load i32, i32* @EV_MSC, align 4
  %193 = load i32, i32* @MSC_SCAN, align 4
  %194 = call i32 @input_set_capability(%struct.input_dev* %191, i32 %192, i32 %193)
  %195 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %196 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %197 = call i32 @input_set_drvdata(%struct.input_dev* %195, %struct.mcs_touchkey_data* %196)
  %198 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %199 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %198, i32 0, i32 2
  %200 = load i32 (...)*, i32 (...)** %199, align 8
  %201 = icmp ne i32 (...)* %200, null
  br i1 %201, label %202, label %207

202:                                              ; preds = %190
  %203 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %204 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %203, i32 0, i32 2
  %205 = load i32 (...)*, i32 (...)** %204, align 8
  %206 = call i32 (...) %205()
  br label %207

207:                                              ; preds = %202, %190
  %208 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %209 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %208, i32 0, i32 1
  %210 = load i32 (i32)*, i32 (i32)** %209, align 8
  %211 = icmp ne i32 (i32)* %210, null
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.mcs_platform_data*, %struct.mcs_platform_data** %6, align 8
  %214 = getelementptr inbounds %struct.mcs_platform_data, %struct.mcs_platform_data* %213, i32 0, i32 1
  %215 = load i32 (i32)*, i32 (i32)** %214, align 8
  %216 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %217 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %216, i32 0, i32 1
  store i32 (i32)* %215, i32 (i32)** %217, align 8
  %218 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %219 = getelementptr inbounds %struct.mcs_touchkey_data, %struct.mcs_touchkey_data* %218, i32 0, i32 1
  %220 = load i32 (i32)*, i32 (i32)** %219, align 8
  %221 = call i32 %220(i32 1)
  br label %222

222:                                              ; preds = %212, %207
  %223 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %224 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @mcs_touchkey_interrupt, align 4
  %227 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %228 = load i32, i32* @IRQF_ONESHOT, align 4
  %229 = or i32 %227, %228
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %237 = call i32 @request_threaded_irq(i32 %225, i32* null, i32 %226, i32 %229, i32 %235, %struct.mcs_touchkey_data* %236)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %222
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 1
  %243 = call i32 (%struct.TYPE_12__*, i8*, ...) @dev_err(%struct.TYPE_12__* %242, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %260

244:                                              ; preds = %222
  %245 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %246 = call i32 @input_register_device(%struct.input_dev* %245)
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %244
  br label %254

250:                                              ; preds = %244
  %251 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %252 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %253 = call i32 @i2c_set_clientdata(%struct.i2c_client* %251, %struct.mcs_touchkey_data* %252)
  store i32 0, i32* %3, align 4
  br label %266

254:                                              ; preds = %249
  %255 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %256 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %259 = call i32 @free_irq(i32 %257, %struct.mcs_touchkey_data* %258)
  br label %260

260:                                              ; preds = %254, %240, %97, %42
  %261 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %262 = call i32 @input_free_device(%struct.input_dev* %261)
  %263 = load %struct.mcs_touchkey_data*, %struct.mcs_touchkey_data** %7, align 8
  %264 = call i32 @kfree(%struct.mcs_touchkey_data* %263)
  %265 = load i32, i32* %11, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %260, %250, %20
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.mcs_platform_data* @dev_get_platdata(%struct.TYPE_12__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local %struct.mcs_touchkey_data* @kzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.mcs_touchkey_data*, i32, i64) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @MCS_KEY_VAL(i32) #1

declare dso_local i32 @MCS_KEY_CODE(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.mcs_touchkey_data*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.mcs_touchkey_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mcs_touchkey_data*) #1

declare dso_local i32 @free_irq(i32, %struct.mcs_touchkey_data*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.mcs_touchkey_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
