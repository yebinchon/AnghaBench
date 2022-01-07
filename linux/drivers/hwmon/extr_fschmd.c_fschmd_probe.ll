; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_fschmd.c_fschmd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.fschmd_data = type { i32, i32*, i32*, i32*, i8*, %struct.TYPE_9__, i32, i32, i32*, i8*, i8*, i8*, i8*, %struct.i2c_client*, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [9 x i8] c"Poseidon\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"Hermes\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Scylla\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Heracles\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Heimdall\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Hades\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Syleus\00", align 1
@__const.fschmd_probe.names = private unnamed_addr constant [7 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)], align 16
@WATCHDOG_MINOR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fscpos = common dso_local global i32 0, align 4
@fscher = common dso_local global i32 0, align 4
@fschrc = common dso_local global i32 0, align 4
@dmi_vref = common dso_local global i32 0, align 4
@fschmd_dmi_decode = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [82 x i8] c"Couldn't get voltage scaling factors from BIOS DMI table, using builtin defaults\0A\00", align 1
@FSCHMD_REG_REVISION = common dso_local global i32 0, align 4
@FSCHMD_REG_CONTROL = common dso_local global i32 0, align 4
@FSCHMD_REG_WDOG_CONTROL = common dso_local global i32* null, align 8
@FSCHMD_REG_WDOG_STATE = common dso_local global i32* null, align 8
@FSCHMD_REG_WDOG_PRESET = common dso_local global i32* null, align 8
@dev_attr_alert_led = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FSCHMD_NO_VOLT_SENSORS = common dso_local global i32* null, align 8
@fschmd_attr = common dso_local global %struct.TYPE_12__* null, align 8
@FSCHMD_NO_TEMP_SENSORS = common dso_local global i32* null, align 8
@fschmd_temp_attr = common dso_local global %struct.TYPE_10__* null, align 8
@temp_max_show = common dso_local global i64 0, align 8
@fscsyl = common dso_local global i32 0, align 4
@FSCHMD_REG_TEMP_STATE = common dso_local global i32** null, align 8
@FSCHMD_TEMP_DISABLED = common dso_local global i32 0, align 4
@FSCHMD_NO_FAN_SENSORS = common dso_local global i32* null, align 8
@fschmd_fan_attr = common dso_local global %struct.TYPE_11__* null, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"pwm3_auto_point1_pwm\00", align 1
@FSCHMD_REG_FAN_STATE = common dso_local global i32** null, align 8
@FSCHMD_FAN_DISABLED = common dso_local global i32 0, align 4
@watchdog_data_mutex = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"watchdog%c\00", align 1
@watchdog_fops = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"Registering watchdog chardev: %d\0A\00", align 1
@watchdog_data_list = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [49 x i8] c"Registered watchdog chardev major 10, minor: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [59 x i8] c"Couldn't register watchdog chardev (due to no free minor)\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Detected FSC %s chip, revision: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @fschmd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fschmd_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.fschmd_data*, align 8
  %7 = alloca [7 x i8*], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = bitcast [7 x i8*]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([7 x i8*]* @__const.fschmd_probe.names to i8*), i64 56, i1 false)
  %13 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %14 = load i32, i32* @WATCHDOG_MINOR, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 212, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 213, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 214, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 215, i32* %18, align 4
  %19 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %20 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.fschmd_data* @kzalloc(i32 136, i32 %22)
  store %struct.fschmd_data* %23, %struct.fschmd_data** %6, align 8
  %24 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %25 = icmp ne %struct.fschmd_data* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %463

29:                                               ; preds = %2
  %30 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %31 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %32 = call i32 @i2c_set_clientdata(%struct.i2c_client* %30, %struct.fschmd_data* %31)
  %33 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %34 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %33, i32 0, i32 16
  %35 = call i32 @mutex_init(i32* %34)
  %36 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %37 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %36, i32 0, i32 15
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %40 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %39, i32 0, i32 6
  %41 = call i32 @INIT_LIST_HEAD(i32* %40)
  %42 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %43 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %42, i32 0, i32 14
  %44 = call i32 @kref_init(i32* %43)
  %45 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %46 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %47 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %46, i32 0, i32 13
  store %struct.i2c_client* %45, %struct.i2c_client** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %50 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @fscpos, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %29
  %55 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %56 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 198, i32* %58, align 4
  %59 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %60 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 178, i32* %62, align 4
  %63 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %64 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32 178, i32* %66, align 4
  br label %67

67:                                               ; preds = %54, %29
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @fscher, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @fschrc, align 4
  %74 = icmp uge i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @dmi_vref, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i32, i32* @fschmd_dmi_decode, align 4
  %80 = call i32 @dmi_walk(i32 %79, i32* null)
  %81 = load i32, i32* @dmi_vref, align 4
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call i32 @dev_warn(i32* %85, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.7, i64 0, i64 0))
  store i32 33, i32* @dmi_vref, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %88

88:                                               ; preds = %87, %75, %71
  %89 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %90 = load i32, i32* @FSCHMD_REG_REVISION, align 4
  %91 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %89, i32 %90)
  %92 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %93 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = load i32, i32* @FSCHMD_REG_CONTROL, align 4
  %96 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %94, i32 %95)
  %97 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %98 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %97, i32 0, i32 12
  store i8* %96, i8** %98, align 8
  %99 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %100 = load i32*, i32** @FSCHMD_REG_WDOG_CONTROL, align 8
  %101 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %102 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %99, i32 %106)
  %108 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %109 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  %110 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %111 = load i32*, i32** @FSCHMD_REG_WDOG_STATE, align 8
  %112 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %113 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %111, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %110, i32 %117)
  %119 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %120 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %119, i32 0, i32 10
  store i8* %118, i8** %120, align 8
  %121 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %122 = load i32*, i32** @FSCHMD_REG_WDOG_PRESET, align 8
  %123 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %124 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %122, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %121, i32 %128)
  %130 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %131 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %130, i32 0, i32 9
  store i8* %129, i8** %131, align 8
  %132 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %133 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %132, i32 0, i32 0
  %134 = call i32 @device_create_file(i32* %133, %struct.TYPE_13__* @dev_attr_alert_led)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %88
  br label %459

138:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %139

139:                                              ; preds = %162, %138
  %140 = load i32, i32* %9, align 4
  %141 = load i32*, i32** @FSCHMD_NO_VOLT_SENSORS, align 8
  %142 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %143 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %141, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %140, %147
  br i1 %148, label %149, label %165

149:                                              ; preds = %139
  %150 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %151 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** @fschmd_attr, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = call i32 @device_create_file(i32* %151, %struct.TYPE_13__* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %149
  br label %459

161:                                              ; preds = %149
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %9, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %9, align 4
  br label %139

165:                                              ; preds = %139
  store i32 0, i32* %9, align 4
  br label %166

166:                                              ; preds = %250, %165
  %167 = load i32, i32* %9, align 4
  %168 = load i32*, i32** @FSCHMD_NO_TEMP_SENSORS, align 8
  %169 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %170 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %174, 4
  %176 = icmp slt i32 %167, %175
  br i1 %176, label %177, label %253

177:                                              ; preds = %166
  %178 = load i32, i32* %11, align 4
  %179 = load i32, i32* @fscpos, align 4
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %192

181:                                              ; preds = %177
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fschmd_temp_attr, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @temp_max_show, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %181
  br label %250

192:                                              ; preds = %181, %177
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @fscsyl, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %237

196:                                              ; preds = %192
  %197 = load i32, i32* %9, align 4
  %198 = srem i32 %197, 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %223

200:                                              ; preds = %196
  %201 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %202 = load i32**, i32*** @FSCHMD_REG_TEMP_STATE, align 8
  %203 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %204 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %202, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sdiv i32 %209, 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %201, i32 %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %217 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sdiv i32 %219, 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %218, i64 %221
  store i32 %215, i32* %222, align 4
  br label %223

223:                                              ; preds = %200, %196
  %224 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %225 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %224, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sdiv i32 %227, 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %226, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @FSCHMD_TEMP_DISABLED, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %236

235:                                              ; preds = %223
  br label %250

236:                                              ; preds = %223
  br label %237

237:                                              ; preds = %236, %192
  %238 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %239 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %238, i32 0, i32 0
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** @fschmd_temp_attr, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = call i32 @device_create_file(i32* %239, %struct.TYPE_13__* %244)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %237
  br label %459

249:                                              ; preds = %237
  br label %250

250:                                              ; preds = %249, %235, %191
  %251 = load i32, i32* %9, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %9, align 4
  br label %166

253:                                              ; preds = %166
  store i32 0, i32* %9, align 4
  br label %254

254:                                              ; preds = %339, %253
  %255 = load i32, i32* %9, align 4
  %256 = load i32*, i32** @FSCHMD_NO_FAN_SENSORS, align 8
  %257 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %258 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = load i32, i32* %261, align 4
  %263 = mul nsw i32 %262, 5
  %264 = icmp slt i32 %255, %263
  br i1 %264, label %265, label %342

265:                                              ; preds = %254
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @fscpos, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %281

269:                                              ; preds = %265
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fschmd_fan_attr, align 8
  %271 = load i32, i32* %9, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @strcmp(i32 %277, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %281, label %280

280:                                              ; preds = %269
  br label %339

281:                                              ; preds = %269, %265
  %282 = load i32, i32* %11, align 4
  %283 = load i32, i32* @fscsyl, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %326

285:                                              ; preds = %281
  %286 = load i32, i32* %9, align 4
  %287 = srem i32 %286, 5
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %312

289:                                              ; preds = %285
  %290 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %291 = load i32**, i32*** @FSCHMD_REG_FAN_STATE, align 8
  %292 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %293 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32*, i32** %291, i64 %295
  %297 = load i32*, i32** %296, align 8
  %298 = load i32, i32* %9, align 4
  %299 = sdiv i32 %298, 5
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %297, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @i2c_smbus_read_byte_data(%struct.i2c_client* %290, i32 %302)
  %304 = ptrtoint i8* %303 to i32
  %305 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %306 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %305, i32 0, i32 3
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sdiv i32 %308, 5
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %307, i64 %310
  store i32 %304, i32* %311, align 4
  br label %312

312:                                              ; preds = %289, %285
  %313 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %314 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i32, i32* %9, align 4
  %317 = sdiv i32 %316, 5
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* @FSCHMD_FAN_DISABLED, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %312
  br label %339

325:                                              ; preds = %312
  br label %326

326:                                              ; preds = %325, %281
  %327 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %328 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %327, i32 0, i32 0
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fschmd_fan_attr, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %332, i32 0, i32 0
  %334 = call i32 @device_create_file(i32* %328, %struct.TYPE_13__* %333)
  store i32 %334, i32* %10, align 4
  %335 = load i32, i32* %10, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %326
  br label %459

338:                                              ; preds = %326
  br label %339

339:                                              ; preds = %338, %324, %280
  %340 = load i32, i32* %9, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %9, align 4
  br label %254

342:                                              ; preds = %254
  %343 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %344 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %343, i32 0, i32 0
  %345 = call i32* @hwmon_device_register(i32* %344)
  %346 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %347 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %346, i32 0, i32 8
  store i32* %345, i32** %347, align 8
  %348 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %349 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %348, i32 0, i32 8
  %350 = load i32*, i32** %349, align 8
  %351 = call i64 @IS_ERR(i32* %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %342
  %354 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %355 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %354, i32 0, i32 8
  %356 = load i32*, i32** %355, align 8
  %357 = call i32 @PTR_ERR(i32* %356)
  store i32 %357, i32* %10, align 4
  %358 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %359 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %358, i32 0, i32 8
  store i32* null, i32** %359, align 8
  br label %459

360:                                              ; preds = %342
  %361 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  store i32 0, i32* %9, align 4
  br label %362

362:                                              ; preds = %429, %360
  %363 = load i32, i32* %9, align 4
  %364 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %365 = call i32 @ARRAY_SIZE(i32* %364)
  %366 = icmp slt i32 %363, %365
  br i1 %366, label %367, label %432

367:                                              ; preds = %362
  %368 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %369 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %368, i32 0, i32 7
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %9, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %373, label %374

373:                                              ; preds = %367
  br label %377

374:                                              ; preds = %367
  %375 = load i32, i32* %9, align 4
  %376 = add nsw i32 48, %375
  br label %377

377:                                              ; preds = %374, %373
  %378 = phi i32 [ 0, %373 ], [ %376, %374 ]
  %379 = trunc i32 %378 to i8
  %380 = call i32 @snprintf(i32 %370, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8 signext %379)
  %381 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %382 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %381, i32 0, i32 7
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %385 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %384, i32 0, i32 5
  %386 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %385, i32 0, i32 2
  store i32 %383, i32* %386, align 8
  %387 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %388 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %387, i32 0, i32 5
  %389 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %388, i32 0, i32 1
  store i32* @watchdog_fops, i32** %389, align 8
  %390 = load i32, i32* %9, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %395 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i32 0, i32 0
  store i32 %393, i32* %396, align 8
  %397 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %398 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %397, i32 0, i32 5
  %399 = call i32 @misc_register(%struct.TYPE_9__* %398)
  store i32 %399, i32* %10, align 4
  %400 = load i32, i32* %10, align 4
  %401 = load i32, i32* @EBUSY, align 4
  %402 = sub nsw i32 0, %401
  %403 = icmp eq i32 %400, %402
  br i1 %403, label %404, label %405

404:                                              ; preds = %377
  br label %429

405:                                              ; preds = %377
  %406 = load i32, i32* %10, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %416

408:                                              ; preds = %405
  %409 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %410 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %410, i32 0, i32 0
  store i32 0, i32* %411, align 8
  %412 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %413 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %412, i32 0, i32 0
  %414 = load i32, i32* %10, align 4
  %415 = call i32 @dev_err(i32* %413, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %414)
  br label %432

416:                                              ; preds = %405
  %417 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %418 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %417, i32 0, i32 6
  %419 = call i32 @list_add(i32* %418, i32* @watchdog_data_list)
  %420 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %421 = call i32 @watchdog_set_timeout(%struct.fschmd_data* %420, i32 60)
  %422 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %423 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %422, i32 0, i32 0
  %424 = load i32, i32* %9, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %425
  %427 = load i32, i32* %426, align 4
  %428 = call i32 (i32*, i8*, ...) @dev_info(i32* %423, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i64 0, i64 0), i32 %427)
  br label %432

429:                                              ; preds = %404
  %430 = load i32, i32* %9, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %9, align 4
  br label %362

432:                                              ; preds = %416, %408, %362
  %433 = load i32, i32* %9, align 4
  %434 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %435 = call i32 @ARRAY_SIZE(i32* %434)
  %436 = icmp eq i32 %433, %435
  br i1 %436, label %437, label %444

437:                                              ; preds = %432
  %438 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %439 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 0
  store i32 0, i32* %440, align 8
  %441 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %442 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %441, i32 0, i32 0
  %443 = call i32 @dev_warn(i32* %442, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.12, i64 0, i64 0))
  br label %444

444:                                              ; preds = %437, %432
  %445 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  %446 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %447 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %446, i32 0, i32 0
  %448 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %449 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds [7 x i8*], [7 x i8*]* %7, i64 0, i64 %451
  %453 = load i8*, i8** %452, align 8
  %454 = load %struct.fschmd_data*, %struct.fschmd_data** %6, align 8
  %455 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %454, i32 0, i32 4
  %456 = load i8*, i8** %455, align 8
  %457 = ptrtoint i8* %456 to i32
  %458 = call i32 (i32*, i8*, ...) @dev_info(i32* %447, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* %453, i32 %457)
  store i32 0, i32* %3, align 4
  br label %463

459:                                              ; preds = %353, %337, %248, %160, %137
  %460 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %461 = call i32 @fschmd_remove(%struct.i2c_client* %460)
  %462 = load i32, i32* %10, align 4
  store i32 %462, i32* %3, align 4
  br label %463

463:                                              ; preds = %459, %444, %26
  %464 = load i32, i32* %3, align 4
  ret i32 %464
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.fschmd_data* @kzalloc(i32, i32) #2

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.fschmd_data*) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @kref_init(i32*) #2

declare dso_local i32 @dmi_walk(i32, i32*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i8* @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #2

declare dso_local i32 @device_create_file(i32*, %struct.TYPE_13__*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32* @hwmon_device_register(i32*) #2

declare dso_local i64 @IS_ERR(i32*) #2

declare dso_local i32 @PTR_ERR(i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8 signext) #2

declare dso_local i32 @misc_register(%struct.TYPE_9__*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @watchdog_set_timeout(%struct.fschmd_data*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, ...) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @fschmd_remove(%struct.i2c_client*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
