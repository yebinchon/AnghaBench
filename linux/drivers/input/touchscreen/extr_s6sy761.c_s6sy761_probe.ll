; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_s6sy761.c_s6sy761_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.s6sy761_data = type { %struct.TYPE_12__*, i32, i32, %struct.TYPE_13__*, %struct.i2c_client* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i8* }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_I2C_BLOCK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@S6SY761_REGULATOR_VDD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@S6SY761_REGULATOR_AVDD = common dso_local global i64 0, align 8
@s6sy761_power_off = common dso_local global i32 0, align 4
@S6SY761_DEV_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@s6sy761_input_open = common dso_local global i32 0, align 4
@s6sy761_input_close = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MINOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"the axis have not been set\0A\00", align 1
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@s6sy761_irq_handler = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"s6sy761_irq\00", align 1
@s6sy761_attribute_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @s6sy761_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s6sy761_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.s6sy761_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @I2C_FUNC_I2C, align 4
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @I2C_FUNC_SMBUS_I2C_BLOCK, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @i2c_check_functionality(i32 %12, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %233

23:                                               ; preds = %2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.s6sy761_data* @devm_kzalloc(i32* %25, i32 32, i32 %26)
  store %struct.s6sy761_data* %27, %struct.s6sy761_data** %6, align 8
  %28 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %29 = icmp ne %struct.s6sy761_data* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %233

33:                                               ; preds = %23
  %34 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %35 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %36 = call i32 @i2c_set_clientdata(%struct.i2c_client* %34, %struct.s6sy761_data* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %39 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %38, i32 0, i32 4
  store %struct.i2c_client* %37, %struct.i2c_client** %39, align 8
  %40 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %41 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = load i64, i64* @S6SY761_REGULATOR_VDD, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %45, align 8
  %46 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %47 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %46, i32 0, i32 3
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %47, align 8
  %49 = load i64, i64* @S6SY761_REGULATOR_AVDD, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %51, align 8
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %52, i32 0, i32 0
  %54 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %55 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = call i32 @ARRAY_SIZE(%struct.TYPE_13__* %56)
  %58 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %59 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %58, i32 0, i32 3
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = call i32 @devm_regulator_bulk_get(i32* %53, i32 %57, %struct.TYPE_13__* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %33
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %233

66:                                               ; preds = %33
  %67 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %68 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %67, i32 0, i32 0
  %69 = load i32, i32* @s6sy761_power_off, align 4
  %70 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %71 = call i32 @devm_add_action_or_reset(i32* %68, i32 %69, %struct.s6sy761_data* %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %66
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %3, align 4
  br label %233

76:                                               ; preds = %66
  %77 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %78 = call i32 @s6sy761_hw_init(%struct.s6sy761_data* %77, i32* %7, i32* %8)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %233

83:                                               ; preds = %76
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call %struct.TYPE_12__* @devm_input_allocate_device(i32* %85)
  %87 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %88 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %87, i32 0, i32 0
  store %struct.TYPE_12__* %86, %struct.TYPE_12__** %88, align 8
  %89 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %90 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = icmp ne %struct.TYPE_12__* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %83
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %233

96:                                               ; preds = %83
  %97 = load i32, i32* @S6SY761_DEV_NAME, align 4
  %98 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %99 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 3
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* @BUS_I2C, align 4
  %103 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %104 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %103, i32 0, i32 0
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  store i32 %102, i32* %107, align 4
  %108 = load i32, i32* @s6sy761_input_open, align 4
  %109 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %110 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* @s6sy761_input_close, align 4
  %114 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %115 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  store i32 %113, i32* %117, align 4
  %118 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %119 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @input_set_abs_params(%struct.TYPE_12__* %120, i32 %121, i32 0, i32 %122, i32 0, i32 0)
  %124 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %125 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %124, i32 0, i32 0
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @input_set_abs_params(%struct.TYPE_12__* %126, i32 %127, i32 0, i32 %128, i32 0, i32 0)
  %130 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %131 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %130, i32 0, i32 0
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %134 = call i32 @input_set_abs_params(%struct.TYPE_12__* %132, i32 %133, i32 0, i32 255, i32 0, i32 0)
  %135 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %136 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %139 = call i32 @input_set_abs_params(%struct.TYPE_12__* %137, i32 %138, i32 0, i32 255, i32 0, i32 0)
  %140 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %141 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %144 = call i32 @input_set_abs_params(%struct.TYPE_12__* %142, i32 %143, i32 0, i32 255, i32 0, i32 0)
  %145 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %146 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %145, i32 0, i32 0
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %146, align 8
  %148 = load i32, i32* @ABS_MT_TOUCH_MINOR, align 4
  %149 = call i32 @input_set_abs_params(%struct.TYPE_12__* %147, i32 %148, i32 0, i32 255, i32 0, i32 0)
  %150 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %151 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %154 = call i32 @input_set_abs_params(%struct.TYPE_12__* %152, i32 %153, i32 0, i32 255, i32 0, i32 0)
  %155 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %156 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %159 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %158, i32 0, i32 2
  %160 = call i32 @touchscreen_parse_properties(%struct.TYPE_12__* %157, i32 1, i32* %159)
  %161 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %162 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %161, i32 0, i32 0
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %162, align 8
  %164 = load i32, i32* @ABS_X, align 4
  %165 = call i32 @input_abs_get_max(%struct.TYPE_12__* %163, i32 %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %96
  %168 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %169 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %168, i32 0, i32 0
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %169, align 8
  %171 = load i32, i32* @ABS_Y, align 4
  %172 = call i32 @input_abs_get_max(%struct.TYPE_12__* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %167, %96
  %175 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %176 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %175, i32 0, i32 0
  %177 = call i32 @dev_warn(i32* %176, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %167
  %179 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %180 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %179, i32 0, i32 0
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %180, align 8
  %182 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %183 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %186 = call i32 @input_mt_init_slots(%struct.TYPE_12__* %181, i32 %184, i32 %185)
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %178
  %190 = load i32, i32* %9, align 4
  store i32 %190, i32* %3, align 4
  br label %233

191:                                              ; preds = %178
  %192 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %193 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %192, i32 0, i32 0
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %193, align 8
  %195 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %196 = call i32 @input_set_drvdata(%struct.TYPE_12__* %194, %struct.s6sy761_data* %195)
  %197 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %198 = getelementptr inbounds %struct.s6sy761_data, %struct.s6sy761_data* %197, i32 0, i32 0
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = call i32 @input_register_device(%struct.TYPE_12__* %199)
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %191
  %204 = load i32, i32* %9, align 4
  store i32 %204, i32* %3, align 4
  br label %233

205:                                              ; preds = %191
  %206 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %207 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %206, i32 0, i32 0
  %208 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %209 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @s6sy761_irq_handler, align 4
  %212 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %213 = load i32, i32* @IRQF_ONESHOT, align 4
  %214 = or i32 %212, %213
  %215 = load %struct.s6sy761_data*, %struct.s6sy761_data** %6, align 8
  %216 = call i32 @devm_request_threaded_irq(i32* %207, i32 %210, i32* null, i32 %211, i32 %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), %struct.s6sy761_data* %215)
  store i32 %216, i32* %9, align 4
  %217 = load i32, i32* %9, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %205
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %3, align 4
  br label %233

221:                                              ; preds = %205
  %222 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %223 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %222, i32 0, i32 0
  %224 = call i32 @devm_device_add_group(i32* %223, i32* @s6sy761_attribute_group)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %221
  %228 = load i32, i32* %9, align 4
  store i32 %228, i32* %3, align 4
  br label %233

229:                                              ; preds = %221
  %230 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %231 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %230, i32 0, i32 0
  %232 = call i32 @pm_runtime_enable(i32* %231)
  store i32 0, i32* %3, align 4
  br label %233

233:                                              ; preds = %229, %227, %219, %203, %189, %93, %81, %74, %64, %30, %20
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.s6sy761_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.s6sy761_data*) #1

declare dso_local i32 @devm_regulator_bulk_get(i32*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_13__*) #1

declare dso_local i32 @devm_add_action_or_reset(i32*, i32, %struct.s6sy761_data*) #1

declare dso_local i32 @s6sy761_hw_init(%struct.s6sy761_data*, i32*, i32*) #1

declare dso_local %struct.TYPE_12__* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.TYPE_12__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @input_abs_get_max(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @input_mt_init_slots(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_12__*, %struct.s6sy761_data*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_12__*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.s6sy761_data*) #1

declare dso_local i32 @devm_device_add_group(i32*, i32*) #1

declare dso_local i32 @pm_runtime_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
