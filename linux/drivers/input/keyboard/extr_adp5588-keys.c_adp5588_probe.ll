; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_adp5588-keys.c_adp5588_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.adp5588_kpad = type { i64*, i32, i32, %struct.TYPE_12__*, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.TYPE_12__ = type { i16, i64 }
%struct.input_dev = type { i8*, i32, i32, i64*, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.adp5588_kpad_platform_data = type { i16, i16, i32, i32, i64, %struct.TYPE_12__*, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"SMBUS Byte Data not Supported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"no platform data?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"no rows, cols or keymap from pdata\0A\00", align 1
@ADP5588_KEYMAPSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"invalid keymapsize\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"invalid gpimap from pdata\0A\00", align 1
@ADP5588_GPIMAPSIZE_MAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid gpimapsize\0A\00", align 1
@GPI_PIN_BASE = common dso_local global i16 0, align 2
@GPI_PIN_END = common dso_local global i16 0, align 2
@.str.6 = private unnamed_addr constant [22 x i8] c"invalid gpi pin data\0A\00", align 1
@GPI_PIN_ROW_END = common dso_local global i16 0, align 2
@GPI_PIN_ROW_BASE = common dso_local global i16 0, align 2
@.str.7 = private unnamed_addr constant [22 x i8] c"invalid gpi row data\0A\00", align 1
@GPI_PIN_COL_BASE = common dso_local global i16 0, align 2
@.str.8 = private unnamed_addr constant [22 x i8] c"invalid gpi col data\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"no IRQ?\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adp5588_work = common dso_local global i32 0, align 4
@DEV_ID = common dso_local global i32 0, align 4
@ADP5588_DEVICE_ID_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"adp5588-keys/input0\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i64 0, align 8
@EV_REP = common dso_local global i64 0, align 8
@KEY_MAX = common dso_local global i64 0, align 8
@KEY_RESERVED = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"unable to register input device\0A\00", align 1
@adp5588_irq = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"irq %d busy?\0A\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"Rev.%d keypad, irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @adp5588_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5588_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.adp5588_kpad*, align 8
  %7 = alloca %struct.adp5588_kpad_platform_data*, align 8
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
  %16 = call %struct.adp5588_kpad_platform_data* @dev_get_platdata(%struct.TYPE_13__* %15)
  store %struct.adp5588_kpad_platform_data* %16, %struct.adp5588_kpad_platform_data** %7, align 8
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
  %26 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %469

29:                                               ; preds = %2
  %30 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %31 = icmp ne %struct.adp5588_kpad_platform_data* %30, null
  br i1 %31, label %38, label %32

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 1
  %35 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %469

38:                                               ; preds = %29
  %39 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %40 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %39, i32 0, i32 0
  %41 = load i16, i16* %40, align 8
  %42 = icmp ne i16 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %45 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %44, i32 0, i32 1
  %46 = load i16, i16* %45, align 2
  %47 = icmp ne i16 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %50 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48, %43, %38
  %54 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 1
  %56 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %469

59:                                               ; preds = %48
  %60 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %61 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @ADP5588_KEYMAPSIZE, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %67 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %66, i32 0, i32 1
  %68 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %469

71:                                               ; preds = %59
  %72 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %73 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %72, i32 0, i32 5
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = icmp ne %struct.TYPE_12__* %74, null
  br i1 %75, label %87, label %76

76:                                               ; preds = %71
  %77 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %78 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %82, i32 0, i32 1
  %84 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %469

87:                                               ; preds = %76, %71
  %88 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %89 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ADP5588_GPIMAPSIZE_MAX, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %95 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %94, i32 0, i32 1
  %96 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %95, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %469

99:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %177, %99
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %103 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %180

106:                                              ; preds = %100
  %107 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %108 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %107, i32 0, i32 5
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i16, i16* %113, align 8
  store i16 %114, i16* %13, align 2
  %115 = load i16, i16* %13, align 2
  %116 = zext i16 %115 to i32
  %117 = load i16, i16* @GPI_PIN_BASE, align 2
  %118 = zext i16 %117 to i32
  %119 = icmp slt i32 %116, %118
  br i1 %119, label %126, label %120

120:                                              ; preds = %106
  %121 = load i16, i16* %13, align 2
  %122 = zext i16 %121 to i32
  %123 = load i16, i16* @GPI_PIN_END, align 2
  %124 = zext i16 %123 to i32
  %125 = icmp sgt i32 %122, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120, %106
  %127 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %128 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %127, i32 0, i32 1
  %129 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %3, align 4
  br label %469

132:                                              ; preds = %120
  %133 = load i16, i16* %13, align 2
  %134 = zext i16 %133 to i32
  %135 = load i16, i16* @GPI_PIN_ROW_END, align 2
  %136 = zext i16 %135 to i32
  %137 = icmp sle i32 %134, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %132
  %139 = load i16, i16* %13, align 2
  %140 = zext i16 %139 to i32
  %141 = load i16, i16* @GPI_PIN_ROW_BASE, align 2
  %142 = zext i16 %141 to i32
  %143 = sub nsw i32 %140, %142
  %144 = add nsw i32 %143, 1
  %145 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %146 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %145, i32 0, i32 0
  %147 = load i16, i16* %146, align 8
  %148 = zext i16 %147 to i32
  %149 = icmp sle i32 %144, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %138
  %151 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %152 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %151, i32 0, i32 1
  %153 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %152, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %469

156:                                              ; preds = %138
  br label %176

157:                                              ; preds = %132
  %158 = load i16, i16* %13, align 2
  %159 = zext i16 %158 to i32
  %160 = load i16, i16* @GPI_PIN_COL_BASE, align 2
  %161 = zext i16 %160 to i32
  %162 = sub nsw i32 %159, %161
  %163 = add nsw i32 %162, 1
  %164 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %165 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %164, i32 0, i32 1
  %166 = load i16, i16* %165, align 2
  %167 = zext i16 %166 to i32
  %168 = icmp sle i32 %163, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %157
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 1
  %172 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %173 = load i32, i32* @EINVAL, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %469

175:                                              ; preds = %157
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %11, align 4
  br label %100

180:                                              ; preds = %100
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %191, label %185

185:                                              ; preds = %180
  %186 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %187 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %186, i32 0, i32 1
  %188 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %187, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %189 = load i32, i32* @EINVAL, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %469

191:                                              ; preds = %180
  %192 = load i32, i32* @GFP_KERNEL, align 4
  %193 = call %struct.adp5588_kpad* @kzalloc(i32 48, i32 %192)
  store %struct.adp5588_kpad* %193, %struct.adp5588_kpad** %6, align 8
  %194 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %194, %struct.input_dev** %8, align 8
  %195 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %196 = icmp ne %struct.adp5588_kpad* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %191
  %198 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %199 = icmp ne %struct.input_dev* %198, null
  br i1 %199, label %203, label %200

200:                                              ; preds = %197, %191
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %12, align 4
  br label %463

203:                                              ; preds = %197
  %204 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %205 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %206 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %205, i32 0, i32 6
  store %struct.i2c_client* %204, %struct.i2c_client** %206, align 8
  %207 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %208 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %209 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %208, i32 0, i32 5
  store %struct.input_dev* %207, %struct.input_dev** %209, align 8
  %210 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %211 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %210, i32 0, i32 2
  %212 = load i32, i32* @adp5588_work, align 4
  %213 = call i32 @INIT_DELAYED_WORK(i32* %211, i32 %212)
  %214 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %215 = load i32, i32* @DEV_ID, align 4
  %216 = call i32 @adp5588_read(%struct.i2c_client* %214, i32 %215)
  store i32 %216, i32* %10, align 4
  %217 = load i32, i32* %10, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %203
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %12, align 4
  br label %463

221:                                              ; preds = %203
  %222 = load i32, i32* %10, align 4
  %223 = load i32, i32* @ADP5588_DEVICE_ID_MASK, align 4
  %224 = and i32 %222, %223
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = call i64 @WA_DELAYED_READOUT_REVID(i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %232

228:                                              ; preds = %221
  %229 = call i32 @msecs_to_jiffies(i32 30)
  %230 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %231 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %230, i32 0, i32 4
  store i32 %229, i32* %231, align 8
  br label %232

232:                                              ; preds = %228, %221
  %233 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %234 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %237 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %236, i32 0, i32 9
  store i32 %235, i32* %237, align 8
  %238 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %239 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %238, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8** %239, align 8
  %240 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %241 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %240, i32 0, i32 1
  %242 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %243 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %242, i32 0, i32 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  store %struct.TYPE_13__* %241, %struct.TYPE_13__** %244, align 8
  %245 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %246 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %247 = call i32 @input_set_drvdata(%struct.input_dev* %245, %struct.adp5588_kpad* %246)
  %248 = load i32, i32* @BUS_I2C, align 4
  %249 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %250 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %249, i32 0, i32 7
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  store i32 %248, i32* %251, align 4
  %252 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %253 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  store i32 1, i32* %254, align 4
  %255 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %256 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %255, i32 0, i32 7
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 1
  store i32 1, i32* %257, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %260 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %259, i32 0, i32 7
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 2
  store i32 %258, i32* %261, align 4
  %262 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %263 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %262, i32 0, i32 1
  store i32 8, i32* %263, align 8
  %264 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %265 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %268 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %267, i32 0, i32 2
  store i32 %266, i32* %268, align 4
  %269 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %270 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %269, i32 0, i32 0
  %271 = load i64*, i64** %270, align 8
  %272 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %273 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %272, i32 0, i32 3
  store i64* %271, i64** %273, align 8
  %274 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %275 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %274, i32 0, i32 0
  %276 = load i64*, i64** %275, align 8
  %277 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %278 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %277, i32 0, i32 6
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %281 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %284 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = mul nsw i32 %282, %285
  %287 = call i32 @memcpy(i64* %276, i32 %279, i32 %286)
  %288 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %289 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %288, i32 0, i32 5
  %290 = load %struct.TYPE_12__*, %struct.TYPE_12__** %289, align 8
  %291 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %292 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %291, i32 0, i32 3
  store %struct.TYPE_12__* %290, %struct.TYPE_12__** %292, align 8
  %293 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %294 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %297 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %296, i32 0, i32 1
  store i32 %295, i32* %297, align 8
  %298 = load i64, i64* @EV_KEY, align 8
  %299 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %300 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %299, i32 0, i32 5
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @__set_bit(i64 %298, i32 %301)
  %303 = load %struct.adp5588_kpad_platform_data*, %struct.adp5588_kpad_platform_data** %7, align 8
  %304 = getelementptr inbounds %struct.adp5588_kpad_platform_data, %struct.adp5588_kpad_platform_data* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %232
  %308 = load i64, i64* @EV_REP, align 8
  %309 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %310 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %309, i32 0, i32 5
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @__set_bit(i64 %308, i32 %311)
  br label %313

313:                                              ; preds = %307, %232
  store i32 0, i32* %11, align 4
  br label %314

314:                                              ; preds = %343, %313
  %315 = load i32, i32* %11, align 4
  %316 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %317 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %316, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp slt i32 %315, %318
  br i1 %319, label %320, label %346

320:                                              ; preds = %314
  %321 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %322 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %321, i32 0, i32 0
  %323 = load i64*, i64** %322, align 8
  %324 = load i32, i32* %11, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i64, i64* %323, i64 %325
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @KEY_MAX, align 8
  %329 = icmp sle i64 %327, %328
  br i1 %329, label %330, label %342

330:                                              ; preds = %320
  %331 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %332 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %331, i32 0, i32 0
  %333 = load i64*, i64** %332, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i64, i64* %333, i64 %335
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %339 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %338, i32 0, i32 6
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @__set_bit(i64 %337, i32 %340)
  br label %342

342:                                              ; preds = %330, %320
  br label %343

343:                                              ; preds = %342
  %344 = load i32, i32* %11, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %11, align 4
  br label %314

346:                                              ; preds = %314
  %347 = load i32, i32* @KEY_RESERVED, align 4
  %348 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %349 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %348, i32 0, i32 6
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @__clear_bit(i32 %347, i32 %350)
  %352 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %353 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %362

356:                                              ; preds = %346
  %357 = load i64, i64* @EV_SW, align 8
  %358 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %359 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @__set_bit(i64 %357, i32 %360)
  br label %362

362:                                              ; preds = %356, %346
  store i32 0, i32* %11, align 4
  br label %363

363:                                              ; preds = %382, %362
  %364 = load i32, i32* %11, align 4
  %365 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %366 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = icmp slt i32 %364, %367
  br i1 %368, label %369, label %385

369:                                              ; preds = %363
  %370 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %371 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %370, i32 0, i32 3
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %371, align 8
  %373 = load i32, i32* %11, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %379 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %378, i32 0, i32 4
  %380 = load i32, i32* %379, align 8
  %381 = call i32 @__set_bit(i64 %377, i32 %380)
  br label %382

382:                                              ; preds = %369
  %383 = load i32, i32* %11, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %11, align 4
  br label %363

385:                                              ; preds = %363
  %386 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %387 = call i32 @input_register_device(%struct.input_dev* %386)
  store i32 %387, i32* %12, align 4
  %388 = load i32, i32* %12, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %394

390:                                              ; preds = %385
  %391 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %392 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %391, i32 0, i32 1
  %393 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %392, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %463

394:                                              ; preds = %385
  %395 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %396 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* @adp5588_irq, align 4
  %399 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %400 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %401 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %401, i32 0, i32 0
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %407 = call i32 @request_irq(i32 %397, i32 %398, i32 %399, i32 %405, %struct.adp5588_kpad* %406)
  store i32 %407, i32* %12, align 4
  %408 = load i32, i32* %12, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %417

410:                                              ; preds = %394
  %411 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %412 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %411, i32 0, i32 1
  %413 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %414 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = call i32 (%struct.TYPE_13__*, i8*, ...) @dev_err(%struct.TYPE_13__* %412, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %415)
  br label %460

417:                                              ; preds = %394
  %418 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %419 = call i32 @adp5588_setup(%struct.i2c_client* %418)
  store i32 %419, i32* %12, align 4
  %420 = load i32, i32* %12, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %417
  br label %451

423:                                              ; preds = %417
  %424 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %425 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 8
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %423
  %429 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %430 = call i32 @adp5588_report_switch_state(%struct.adp5588_kpad* %429)
  br label %431

431:                                              ; preds = %428, %423
  %432 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %433 = call i32 @adp5588_gpio_add(%struct.adp5588_kpad* %432)
  store i32 %433, i32* %12, align 4
  %434 = load i32, i32* %12, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %431
  br label %451

437:                                              ; preds = %431
  %438 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %439 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %438, i32 0, i32 1
  %440 = call i32 @device_init_wakeup(%struct.TYPE_13__* %439, i32 1)
  %441 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %442 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %443 = call i32 @i2c_set_clientdata(%struct.i2c_client* %441, %struct.adp5588_kpad* %442)
  %444 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %445 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %444, i32 0, i32 1
  %446 = load i32, i32* %9, align 4
  %447 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %448 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @dev_info(%struct.TYPE_13__* %445, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %446, i32 %449)
  store i32 0, i32* %3, align 4
  br label %469

451:                                              ; preds = %436, %422
  %452 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %453 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %456 = call i32 @free_irq(i32 %454, %struct.adp5588_kpad* %455)
  %457 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %458 = getelementptr inbounds %struct.adp5588_kpad, %struct.adp5588_kpad* %457, i32 0, i32 2
  %459 = call i32 @cancel_delayed_work_sync(i32* %458)
  br label %460

460:                                              ; preds = %451, %410
  %461 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %462 = call i32 @input_unregister_device(%struct.input_dev* %461)
  store %struct.input_dev* null, %struct.input_dev** %8, align 8
  br label %463

463:                                              ; preds = %460, %390, %219, %200
  %464 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %465 = call i32 @input_free_device(%struct.input_dev* %464)
  %466 = load %struct.adp5588_kpad*, %struct.adp5588_kpad** %6, align 8
  %467 = call i32 @kfree(%struct.adp5588_kpad* %466)
  %468 = load i32, i32* %12, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %463, %437, %185, %169, %150, %126, %93, %81, %65, %53, %32, %23
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local %struct.adp5588_kpad_platform_data* @dev_get_platdata(%struct.TYPE_13__*) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_13__*, i8*, ...) #1

declare dso_local %struct.adp5588_kpad* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @adp5588_read(%struct.i2c_client*, i32) #1

declare dso_local i64 @WA_DELAYED_READOUT_REVID(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.adp5588_kpad*) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.adp5588_kpad*) #1

declare dso_local i32 @adp5588_setup(%struct.i2c_client*) #1

declare dso_local i32 @adp5588_report_switch_state(%struct.adp5588_kpad*) #1

declare dso_local i32 @adp5588_gpio_add(%struct.adp5588_kpad*) #1

declare dso_local i32 @device_init_wakeup(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.adp5588_kpad*) #1

declare dso_local i32 @dev_info(%struct.TYPE_13__*, i8*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.adp5588_kpad*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @input_unregister_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.adp5588_kpad*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
