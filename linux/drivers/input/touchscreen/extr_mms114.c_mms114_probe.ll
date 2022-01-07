; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mms114.c_mms114_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.mms114_data = type { i32, %struct.input_dev*, i8*, i8*, i8*, i8*, %struct.TYPE_6__, %struct.i2c_client* }
%struct.input_dev = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@I2C_FUNC_PROTOCOL_MANGLING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Need i2c bus that supports protocol mangling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@MMS114_MAX_AREA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"missing X/Y size properties, trying legacy bindings\0A\00", align 1
@TYPE_MMS114 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"MELFAS MMS%d Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@mms114_input_open = common dso_local global i32 0, align 4
@mms114_input_close = common dso_local global i32 0, align 4
@MMS114_MAX_TOUCH = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"Unable to get the Core regulator (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Unable to get the IO regulator (%d)\0A\00", align 1
@mms114_interrupt = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mms114_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mms114_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mms114_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_PROTOCOL_MANGLING, align 4
  %14 = call i32 @i2c_check_functionality(i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @dev_err(i32* %18, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %270

22:                                               ; preds = %2
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mms114_data* @devm_kzalloc(i32* %24, i32 64, i32 %25)
  store %struct.mms114_data* %26, %struct.mms114_data** %6, align 8
  %27 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call %struct.input_dev* @devm_input_allocate_device(i32* %28)
  store %struct.input_dev* %29, %struct.input_dev** %7, align 8
  %30 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %31 = icmp ne %struct.mms114_data* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %34 = icmp ne %struct.input_dev* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32, %22
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %270

41:                                               ; preds = %32
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %44 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %43, i32 0, i32 7
  store %struct.i2c_client* %42, %struct.i2c_client** %44, align 8
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %47 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %46, i32 0, i32 1
  store %struct.input_dev* %45, %struct.input_dev** %47, align 8
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %48, i32 0, i32 0
  %50 = call i8* @of_device_get_match_data(i32* %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %270

56:                                               ; preds = %41
  %57 = load i8*, i8** %8, align 8
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %60 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %62 = load i32, i32* @EV_ABS, align 4
  %63 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %64 = call i32 @input_set_capability(%struct.input_dev* %61, i32 %62, i32 %63)
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = load i32, i32* @EV_ABS, align 4
  %67 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %68 = call i32 @input_set_capability(%struct.input_dev* %65, i32 %66, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %71 = call i32 @input_set_abs_params(%struct.input_dev* %69, i32 %70, i32 0, i32 255, i32 0, i32 0)
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %74 = load i32, i32* @MMS114_MAX_AREA, align 4
  %75 = call i32 @input_set_abs_params(%struct.input_dev* %72, i32 %73, i32 0, i32 %74, i32 0, i32 0)
  %76 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %77 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %78 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %77, i32 0, i32 6
  %79 = call i32 @touchscreen_parse_properties(%struct.input_dev* %76, i32 1, %struct.TYPE_6__* %78)
  %80 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %81 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %56
  %86 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %87 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %86, i32 0, i32 6
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %116, label %91

91:                                               ; preds = %85, %56
  %92 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %93 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %92, i32 0, i32 0
  %94 = call i32 @dev_dbg(i32* %93, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %95 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %96 = call i32 @mms114_parse_legacy_bindings(%struct.mms114_data* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* %9, align 4
  store i32 %100, i32* %3, align 4
  br label %270

101:                                              ; preds = %91
  %102 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %103 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %104 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %105 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @input_set_abs_params(%struct.input_dev* %102, i32 %103, i32 0, i32 %107, i32 0, i32 0)
  %109 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %110 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %111 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %112 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %111, i32 0, i32 6
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @input_set_abs_params(%struct.input_dev* %109, i32 %110, i32 0, i32 %114, i32 0, i32 0)
  br label %116

116:                                              ; preds = %101, %85
  %117 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %118 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @TYPE_MMS114, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %126 = call i8* @input_abs_get_fuzz(%struct.input_dev* %124, i32 %125)
  %127 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %128 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %127, i32 0, i32 5
  store i8* %126, i8** %128, align 8
  %129 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %130 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %131 = call i8* @input_abs_get_fuzz(%struct.input_dev* %129, i32 %130)
  %132 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %133 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  %134 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %135 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %136 = call i32 @input_abs_set_fuzz(%struct.input_dev* %134, i32 %135, i32 0)
  %137 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %138 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %139 = call i32 @input_abs_set_fuzz(%struct.input_dev* %137, i32 %138, i32 0)
  %140 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %141 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %142 = call i32 @input_abs_set_fuzz(%struct.input_dev* %140, i32 %141, i32 0)
  br label %143

143:                                              ; preds = %123, %116
  %144 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %145 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %144, i32 0, i32 0
  %146 = load i32, i32* @GFP_KERNEL, align 4
  %147 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %148 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = call i32 @devm_kasprintf(i32* %145, i32 %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  %152 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %153 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %155 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %143
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %270

161:                                              ; preds = %143
  %162 = load i32, i32* @BUS_I2C, align 4
  %163 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %164 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %169 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  store i32* %167, i32** %170, align 8
  %171 = load i32, i32* @mms114_input_open, align 4
  %172 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %173 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %172, i32 0, i32 1
  store i32 %171, i32* %173, align 4
  %174 = load i32, i32* @mms114_input_close, align 4
  %175 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %176 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %178 = load i32, i32* @MMS114_MAX_TOUCH, align 4
  %179 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %180 = call i32 @input_mt_init_slots(%struct.input_dev* %177, i32 %178, i32 %179)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %161
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %3, align 4
  br label %270

185:                                              ; preds = %161
  %186 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %187 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %188 = call i32 @input_set_drvdata(%struct.input_dev* %186, %struct.mms114_data* %187)
  %189 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %190 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %191 = call i32 @i2c_set_clientdata(%struct.i2c_client* %189, %struct.mms114_data* %190)
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = call i8* @devm_regulator_get(i32* %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %195 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %196 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %195, i32 0, i32 3
  store i8* %194, i8** %196, align 8
  %197 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %198 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %197, i32 0, i32 3
  %199 = load i8*, i8** %198, align 8
  %200 = call i64 @IS_ERR(i8* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %185
  %203 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %204 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %203, i32 0, i32 3
  %205 = load i8*, i8** %204, align 8
  %206 = call i32 @PTR_ERR(i8* %205)
  store i32 %206, i32* %9, align 4
  %207 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %208 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %207, i32 0, i32 0
  %209 = load i32, i32* %9, align 4
  %210 = call i32 (i32*, i8*, ...) @dev_err(i32* %208, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %209)
  %211 = load i32, i32* %9, align 4
  store i32 %211, i32* %3, align 4
  br label %270

212:                                              ; preds = %185
  %213 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %214 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %213, i32 0, i32 0
  %215 = call i8* @devm_regulator_get(i32* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %216 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %217 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %219 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %218, i32 0, i32 2
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @IS_ERR(i8* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %212
  %224 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %225 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %224, i32 0, i32 2
  %226 = load i8*, i8** %225, align 8
  %227 = call i32 @PTR_ERR(i8* %226)
  store i32 %227, i32* %9, align 4
  %228 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %229 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %228, i32 0, i32 0
  %230 = load i32, i32* %9, align 4
  %231 = call i32 (i32*, i8*, ...) @dev_err(i32* %229, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %230)
  %232 = load i32, i32* %9, align 4
  store i32 %232, i32* %3, align 4
  br label %270

233:                                              ; preds = %212
  %234 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %235 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %234, i32 0, i32 0
  %236 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %237 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @mms114_interrupt, align 4
  %240 = load i32, i32* @IRQF_ONESHOT, align 4
  %241 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %242 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %241, i32 0, i32 0
  %243 = call i32 @dev_name(i32* %242)
  %244 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %245 = call i32 @devm_request_threaded_irq(i32* %235, i32 %238, i32* null, i32 %239, i32 %240, i32 %243, %struct.mms114_data* %244)
  store i32 %245, i32* %9, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %233
  %249 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %250 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %249, i32 0, i32 0
  %251 = call i32 (i32*, i8*, ...) @dev_err(i32* %250, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0))
  %252 = load i32, i32* %9, align 4
  store i32 %252, i32* %3, align 4
  br label %270

253:                                              ; preds = %233
  %254 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %255 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @disable_irq(i32 %256)
  %258 = load %struct.mms114_data*, %struct.mms114_data** %6, align 8
  %259 = getelementptr inbounds %struct.mms114_data, %struct.mms114_data* %258, i32 0, i32 1
  %260 = load %struct.input_dev*, %struct.input_dev** %259, align 8
  %261 = call i32 @input_register_device(%struct.input_dev* %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %253
  %265 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %266 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %265, i32 0, i32 0
  %267 = call i32 (i32*, i8*, ...) @dev_err(i32* %266, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  %268 = load i32, i32* %9, align 4
  store i32 %268, i32* %3, align 4
  br label %270

269:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %264, %248, %223, %202, %183, %158, %99, %53, %35, %16
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.mms114_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i8* @of_device_get_match_data(i32*) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mms114_parse_legacy_bindings(%struct.mms114_data*) #1

declare dso_local i8* @input_abs_get_fuzz(%struct.input_dev*, i32) #1

declare dso_local i32 @input_abs_set_fuzz(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @devm_kasprintf(i32*, i32, i8*, i64) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.mms114_data*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.mms114_data*) #1

declare dso_local i8* @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.mms114_data*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
