; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5589-keys.c_adp5589_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i16, i16, i16 }
%struct.i2c_client = type { i32, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adp5589_kpad = type { i32, i32, i64*, i32, %struct.TYPE_12__*, %struct.input_dev*, %struct.i2c_client*, %struct.TYPE_16__* }
%struct.TYPE_12__ = type { i16, i64 }
%struct.input_dev = type { i8*, i32, i32, i64*, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_15__* }
%struct.adp5589_kpad_platform_data = type { i32, i32, i32, i64, %struct.TYPE_12__*, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@const_adp5585 = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@const_adp5589 = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"no rows, cols or keymap from pdata\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid keymapsize\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid gpimap from pdata\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid gpimapsize\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid gpi pin data\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"invalid gpi row/col data\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@ADP5589_5_ID = common dso_local global i32 0, align 4
@ADP5589_5_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [20 x i8] c"adp5589-keys/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@EV_REP = common dso_local global i64 0, align 8
@KEY_MAX = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [33 x i8] c"unable to register input device\0A\00", align 1
@adp5589_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [14 x i8] c"irq %d busy?\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Rev.%d keypad, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp5589_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5589_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adp5589_kpad*, align 8
  %7 = alloca %struct.adp5589_kpad_platform_data*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call %struct.adp5589_kpad_platform_data* @dev_get_platdata(%struct.TYPE_15__* %15)
  store %struct.adp5589_kpad_platform_data* %16, %struct.adp5589_kpad_platform_data** %7, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %21 = call i32 @i2c_check_functionality(i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %483

29:                                               ; preds = %2
  %30 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %31 = icmp ne %struct.adp5589_kpad_platform_data* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %483

38:                                               ; preds = %29
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.adp5589_kpad* @kzalloc(i32 56, i32 %39)
  store %struct.adp5589_kpad* %40, %struct.adp5589_kpad** %6, align 8
  %41 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %42 = icmp ne %struct.adp5589_kpad* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %483

46:                                               ; preds = %38
  %47 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %48 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %63 [
    i32 129, label %50
    i32 130, label %53
    i32 128, label %58
  ]

50:                                               ; preds = %46
  %51 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %52 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %46, %50
  %54 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %55 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %57 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %56, i32 0, i32 7
  store %struct.TYPE_16__* @const_adp5585, %struct.TYPE_16__** %57, align 8
  br label %63

58:                                               ; preds = %46
  %59 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %60 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %62 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %61, i32 0, i32 7
  store %struct.TYPE_16__* @const_adp5589, %struct.TYPE_16__** %62, align 8
  br label %63

63:                                               ; preds = %46, %58, %53
  %64 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %65 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %68 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %67, i32 0, i32 7
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %66, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %63
  %75 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %76 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %79 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %78, i32 0, i32 7
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %77, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %87 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85, %74, %63
  %91 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %92 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %91, i32 0, i32 1
  %93 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %12, align 4
  br label %479

96:                                               ; preds = %85
  %97 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %98 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %101 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %100, i32 0, i32 7
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %99, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %96
  %107 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %108 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %107, i32 0, i32 1
  %109 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %479

112:                                              ; preds = %96
  %113 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %114 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %113, i32 0, i32 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %114, align 8
  %116 = icmp ne %struct.TYPE_12__* %115, null
  br i1 %116, label %128, label %117

117:                                              ; preds = %112
  %118 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %119 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 1
  %125 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %12, align 4
  br label %479

128:                                              ; preds = %117, %112
  %129 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %130 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %133 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %132, i32 0, i32 7
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %131, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %128
  %139 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %140 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %139, i32 0, i32 1
  %141 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %12, align 4
  br label %479

144:                                              ; preds = %128
  store i32 0, i32* %11, align 4
  br label %145

145:                                              ; preds = %208, %144
  %146 = load i32, i32* %11, align 4
  %147 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %148 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %211

151:                                              ; preds = %145
  %152 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %153 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %152, i32 0, i32 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i16, i16* %158, align 8
  store i16 %159, i16* %13, align 2
  %160 = load i16, i16* %13, align 2
  %161 = zext i16 %160 to i32
  %162 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %163 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %162, i32 0, i32 7
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 4
  %166 = load i16, i16* %165, align 4
  %167 = zext i16 %166 to i32
  %168 = icmp slt i32 %161, %167
  br i1 %168, label %179, label %169

169:                                              ; preds = %151
  %170 = load i16, i16* %13, align 2
  %171 = zext i16 %170 to i32
  %172 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %173 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %172, i32 0, i32 7
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 5
  %176 = load i16, i16* %175, align 2
  %177 = zext i16 %176 to i32
  %178 = icmp sgt i32 %171, %177
  br i1 %178, label %179, label %185

179:                                              ; preds = %169, %151
  %180 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %181 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %180, i32 0, i32 1
  %182 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %181, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32, i32* @EINVAL, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %12, align 4
  br label %479

185:                                              ; preds = %169
  %186 = load i16, i16* %13, align 2
  %187 = zext i16 %186 to i32
  %188 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %189 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %188, i32 0, i32 7
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 6
  %192 = load i16, i16* %191, align 4
  %193 = zext i16 %192 to i32
  %194 = sub nsw i32 %187, %193
  %195 = shl i32 1, %194
  %196 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %197 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %195, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %185
  %202 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %203 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %202, i32 0, i32 1
  %204 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %12, align 4
  br label %479

207:                                              ; preds = %185
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %11, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %11, align 4
  br label %145

211:                                              ; preds = %145
  %212 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %213 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %211
  %217 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %218 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %217, i32 0, i32 1
  %219 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %218, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %220 = load i32, i32* @EINVAL, align 4
  %221 = sub nsw i32 0, %220
  store i32 %221, i32* %12, align 4
  br label %479

222:                                              ; preds = %211
  %223 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %223, %struct.input_dev** %8, align 8
  %224 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %225 = icmp ne %struct.input_dev* %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %222
  %227 = load i32, i32* @ENOMEM, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %12, align 4
  br label %479

229:                                              ; preds = %222
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %232 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %231, i32 0, i32 6
  store %struct.i2c_client* %230, %struct.i2c_client** %232, align 8
  %233 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %234 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %235 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %234, i32 0, i32 5
  store %struct.input_dev* %233, %struct.input_dev** %235, align 8
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = load i32, i32* @ADP5589_5_ID, align 4
  %238 = call i32 @adp5589_read(%struct.i2c_client* %236, i32 %237)
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %12, align 4
  br label %476

243:                                              ; preds = %229
  %244 = load i32, i32* %10, align 4
  %245 = load i32, i32* @ADP5589_5_DEVICE_ID_MASK, align 4
  %246 = and i32 %244, %245
  store i32 %246, i32* %9, align 4
  %247 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %248 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %251 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %250, i32 0, i32 9
  store i32 %249, i32* %251, align 8
  %252 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %253 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %252, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %253, align 8
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %254, i32 0, i32 1
  %256 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %257 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %256, i32 0, i32 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  store %struct.TYPE_15__* %255, %struct.TYPE_15__** %258, align 8
  %259 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %260 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %261 = call i32 @input_set_drvdata(%struct.input_dev* %259, %struct.adp5589_kpad* %260)
  %262 = load i32, i32* @BUS_I2C, align 4
  %263 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %264 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %263, i32 0, i32 7
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 3
  store i32 %262, i32* %265, align 4
  %266 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %267 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %266, i32 0, i32 7
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 0
  store i32 1, i32* %268, align 4
  %269 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %270 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %269, i32 0, i32 7
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 1
  store i32 1, i32* %271, align 4
  %272 = load i32, i32* %9, align 4
  %273 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %274 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %273, i32 0, i32 7
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  store i32 %272, i32* %275, align 4
  %276 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %277 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %276, i32 0, i32 1
  store i32 8, i32* %277, align 8
  %278 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %279 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %282 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %281, i32 0, i32 2
  store i32 %280, i32* %282, align 4
  %283 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %284 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %283, i32 0, i32 2
  %285 = load i64*, i64** %284, align 8
  %286 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %287 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %286, i32 0, i32 3
  store i64* %285, i64** %287, align 8
  %288 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %289 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %288, i32 0, i32 2
  %290 = load i64*, i64** %289, align 8
  %291 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %292 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %291, i32 0, i32 5
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %295 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %298 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = mul nsw i32 %296, %299
  %301 = call i32 @memcpy(i64* %290, i32 %293, i32 %300)
  %302 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %303 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %302, i32 0, i32 4
  %304 = load %struct.TYPE_12__*, %struct.TYPE_12__** %303, align 8
  %305 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %306 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %305, i32 0, i32 4
  store %struct.TYPE_12__* %304, %struct.TYPE_12__** %306, align 8
  %307 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %308 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %307, i32 0, i32 2
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %311 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %310, i32 0, i32 3
  store i32 %309, i32* %311, align 8
  %312 = load i64, i64* @EV_KEY, align 8
  %313 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %314 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %313, i32 0, i32 5
  %315 = load i32, i32* %314, align 4
  %316 = call i32 @__set_bit(i64 %312, i32 %315)
  %317 = load %struct.adp5589_kpad_platform_data*, %struct.adp5589_kpad_platform_data** %7, align 8
  %318 = getelementptr inbounds %struct.adp5589_kpad_platform_data, %struct.adp5589_kpad_platform_data* %317, i32 0, i32 3
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %243
  %322 = load i64, i64* @EV_REP, align 8
  %323 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %324 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %323, i32 0, i32 5
  %325 = load i32, i32* %324, align 4
  %326 = call i32 @__set_bit(i64 %322, i32 %325)
  br label %327

327:                                              ; preds = %321, %243
  store i32 0, i32* %11, align 4
  br label %328

328:                                              ; preds = %357, %327
  %329 = load i32, i32* %11, align 4
  %330 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %331 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 4
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %360

334:                                              ; preds = %328
  %335 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %336 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %335, i32 0, i32 2
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @KEY_MAX, align 8
  %343 = icmp sle i64 %341, %342
  br i1 %343, label %344, label %356

344:                                              ; preds = %334
  %345 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %346 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %345, i32 0, i32 2
  %347 = load i64*, i64** %346, align 8
  %348 = load i32, i32* %11, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i64, i64* %347, i64 %349
  %351 = load i64, i64* %350, align 8
  %352 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %353 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %352, i32 0, i32 6
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @__set_bit(i64 %351, i32 %354)
  br label %356

356:                                              ; preds = %344, %334
  br label %357

357:                                              ; preds = %356
  %358 = load i32, i32* %11, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %11, align 4
  br label %328

360:                                              ; preds = %328
  %361 = load i32, i32* @KEY_RESERVED, align 4
  %362 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %363 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 8
  %365 = call i32 @__clear_bit(i32 %361, i32 %364)
  %366 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %367 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %366, i32 0, i32 3
  %368 = load i32, i32* %367, align 8
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %376

370:                                              ; preds = %360
  %371 = load i64, i64* @EV_SW, align 8
  %372 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %373 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %372, i32 0, i32 5
  %374 = load i32, i32* %373, align 4
  %375 = call i32 @__set_bit(i64 %371, i32 %374)
  br label %376

376:                                              ; preds = %370, %360
  store i32 0, i32* %11, align 4
  br label %377

377:                                              ; preds = %396, %376
  %378 = load i32, i32* %11, align 4
  %379 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %380 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 8
  %382 = icmp slt i32 %378, %381
  br i1 %382, label %383, label %399

383:                                              ; preds = %377
  %384 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %385 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %384, i32 0, i32 4
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %393 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %392, i32 0, i32 4
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @__set_bit(i64 %391, i32 %394)
  br label %396

396:                                              ; preds = %383
  %397 = load i32, i32* %11, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %11, align 4
  br label %377

399:                                              ; preds = %377
  %400 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %401 = call i32 @input_register_device(%struct.input_dev* %400)
  store i32 %401, i32* %12, align 4
  %402 = load i32, i32* %12, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %399
  %405 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %406 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %405, i32 0, i32 1
  %407 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %406, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  br label %476

408:                                              ; preds = %399
  %409 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %410 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @adp5589_irq, align 4
  %413 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %414 = load i32, i32* @IRQF_ONESHOT, align 4
  %415 = or i32 %413, %414
  %416 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %417 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %417, i32 0, i32 0
  %419 = load %struct.TYPE_11__*, %struct.TYPE_11__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 4
  %422 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %423 = call i32 @request_threaded_irq(i32 %411, i32* null, i32 %412, i32 %415, i32 %421, %struct.adp5589_kpad* %422)
  store i32 %423, i32* %12, align 4
  %424 = load i32, i32* %12, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %433

426:                                              ; preds = %408
  %427 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %428 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %427, i32 0, i32 1
  %429 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %430 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = call i32 (%struct.TYPE_15__*, i8*, ...) @dev_err(%struct.TYPE_15__* %428, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %431)
  br label %473

433:                                              ; preds = %408
  %434 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %435 = call i32 @adp5589_setup(%struct.adp5589_kpad* %434)
  store i32 %435, i32* %12, align 4
  %436 = load i32, i32* %12, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %433
  br label %467

439:                                              ; preds = %433
  %440 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %441 = getelementptr inbounds %struct.adp5589_kpad, %struct.adp5589_kpad* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %447

444:                                              ; preds = %439
  %445 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %446 = call i32 @adp5589_report_switch_state(%struct.adp5589_kpad* %445)
  br label %447

447:                                              ; preds = %444, %439
  %448 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %449 = call i32 @adp5589_gpio_add(%struct.adp5589_kpad* %448)
  store i32 %449, i32* %12, align 4
  %450 = load i32, i32* %12, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %453

452:                                              ; preds = %447
  br label %467

453:                                              ; preds = %447
  %454 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %455 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %454, i32 0, i32 1
  %456 = call i32 @device_init_wakeup(%struct.TYPE_15__* %455, i32 1)
  %457 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %458 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %459 = call i32 @i2c_set_clientdata(%struct.i2c_client* %457, %struct.adp5589_kpad* %458)
  %460 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %461 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %460, i32 0, i32 1
  %462 = load i32, i32* %9, align 4
  %463 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %464 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %463, i32 0, i32 0
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @dev_info(%struct.TYPE_15__* %461, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32 %462, i32 %465)
  store i32 0, i32* %3, align 4
  br label %483

467:                                              ; preds = %452, %438
  %468 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %469 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %472 = call i32 @free_irq(i32 %470, %struct.adp5589_kpad* %471)
  br label %473

473:                                              ; preds = %467, %426
  %474 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %475 = call i32 @input_unregister_device(%struct.input_dev* %474)
  store %struct.input_dev* null, %struct.input_dev** %8, align 8
  br label %476

476:                                              ; preds = %473, %404, %241
  %477 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %478 = call i32 @input_free_device(%struct.input_dev* %477)
  br label %479

479:                                              ; preds = %476, %226, %216, %201, %179, %138, %122, %106, %90
  %480 = load %struct.adp5589_kpad*, %struct.adp5589_kpad** %6, align 8
  %481 = call i32 @kfree(%struct.adp5589_kpad* %480)
  %482 = load i32, i32* %12, align 4
  store i32 %482, i32* %3, align 4
  br label %483

483:                                              ; preds = %479, %453, %43, %32, %23
  %484 = load i32, i32* %3, align 4
  ret i32 %484
}

declare dso_local %struct.adp5589_kpad_platform_data* @dev_get_platdata(%struct.TYPE_15__*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_15__*, i8*, ...) #1

declare dso_local %struct.adp5589_kpad* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @adp5589_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.adp5589_kpad*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.adp5589_kpad*) #1

declare dso_local i32 @adp5589_setup(%struct.adp5589_kpad*) #1

declare dso_local i32 @adp5589_report_switch_state(%struct.adp5589_kpad*) #1

declare dso_local i32 @adp5589_gpio_add(%struct.adp5589_kpad*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp5589_kpad*) #1

declare dso_local i32 @dev_info(%struct.TYPE_15__*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.adp5589_kpad*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.adp5589_kpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
