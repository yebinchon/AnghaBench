; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.bu21029_ts_data = type { i32, i32, %struct.input_dev*, %struct.i2c_client*, i32, i32, i32 }
%struct.input_dev = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@I2C_FUNC_SMBUS_WRITE_BYTE = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WRITE_BYTE_DATA = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_READ_I2C_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"i2c functionality support is not sufficient\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"rohm,x-plate-ohms\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"invalid 'x-plate-ohms' supplied: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to acquire 'vdd' supply: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_HIGH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to acquire 'reset' gpio: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"unable to allocate input device\0A\00", align 1
@bu21029_touch_release = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@BUS_I2C = common dso_local global i32 0, align 4
@bu21029_start_chip = common dso_local global i32 0, align 4
@bu21029_stop_chip = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@IRQ_NOAUTOEN = common dso_local global i32 0, align 4
@bu21029_touch_soft_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"unable to request touch irq: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"unable to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @bu21029_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bu21029_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.bu21029_ts_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE, align 4
  %13 = load i32, i32* @I2C_FUNC_SMBUS_WRITE_BYTE_DATA, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I2C_FUNC_SMBUS_READ_I2C_BLOCK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @i2c_check_functionality(i32 %11, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %201

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.bu21029_ts_data* @devm_kzalloc(i32* %27, i32 40, i32 %28)
  store %struct.bu21029_ts_data* %29, %struct.bu21029_ts_data** %6, align 8
  %30 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %31 = icmp ne %struct.bu21029_ts_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %201

35:                                               ; preds = %25
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %36, i32 0, i32 0
  %38 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %39 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %38, i32 0, i32 6
  %40 = call i32 @device_property_read_u32(i32* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %201

49:                                               ; preds = %35
  %50 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %51 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %50, i32 0, i32 0
  %52 = call i32 @devm_regulator_get(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %54 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %56 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %49
  %61 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %62 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @EPROBE_DEFER, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp ne i32 %65, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %8, align 4
  %73 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %69, %60
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %201

76:                                               ; preds = %49
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 0
  %79 = load i32, i32* @GPIOD_OUT_HIGH, align 4
  %80 = call i32 @devm_gpiod_get_optional(i32* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  %81 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %82 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %84 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @IS_ERR(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %76
  %89 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %90 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @EPROBE_DEFER, align 4
  %95 = sub nsw i32 0, %94
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %98, i32 0, i32 0
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32*, i8*, ...) @dev_err(i32* %99, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %88
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %3, align 4
  br label %201

104:                                              ; preds = %76
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 0
  %107 = call %struct.input_dev* @devm_input_allocate_device(i32* %106)
  store %struct.input_dev* %107, %struct.input_dev** %7, align 8
  %108 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %109 = icmp ne %struct.input_dev* %108, null
  br i1 %109, label %116, label %110

110:                                              ; preds = %104
  %111 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %3, align 4
  br label %201

116:                                              ; preds = %104
  %117 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %118 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %119 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %118, i32 0, i32 3
  store %struct.i2c_client* %117, %struct.i2c_client** %119, align 8
  %120 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %121 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %122 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %121, i32 0, i32 2
  store %struct.input_dev* %120, %struct.input_dev** %122, align 8
  %123 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %124 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %123, i32 0, i32 1
  %125 = load i32, i32* @bu21029_touch_release, align 4
  %126 = call i32 @timer_setup(i32* %124, i32 %125, i32 0)
  %127 = load i32, i32* @DRIVER_NAME, align 4
  %128 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %129 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @BUS_I2C, align 4
  %131 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %132 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* @bu21029_start_chip, align 4
  %135 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %136 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @bu21029_stop_chip, align 4
  %138 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %139 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %141 = load i32, i32* @EV_KEY, align 4
  %142 = load i32, i32* @BTN_TOUCH, align 4
  %143 = call i32 @input_set_capability(%struct.input_dev* %140, i32 %141, i32 %142)
  %144 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %145 = load i32, i32* @ABS_X, align 4
  %146 = load i32, i32* @MAX_12BIT, align 4
  %147 = call i32 @input_set_abs_params(%struct.input_dev* %144, i32 %145, i32 0, i32 %146, i32 0, i32 0)
  %148 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %149 = load i32, i32* @ABS_Y, align 4
  %150 = load i32, i32* @MAX_12BIT, align 4
  %151 = call i32 @input_set_abs_params(%struct.input_dev* %148, i32 %149, i32 0, i32 %150, i32 0, i32 0)
  %152 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %153 = load i32, i32* @ABS_PRESSURE, align 4
  %154 = load i32, i32* @MAX_12BIT, align 4
  %155 = call i32 @input_set_abs_params(%struct.input_dev* %152, i32 %153, i32 0, i32 %154, i32 0, i32 0)
  %156 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %157 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %158 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %157, i32 0, i32 0
  %159 = call i32 @touchscreen_parse_properties(%struct.input_dev* %156, i32 0, i32* %158)
  %160 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %161 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %162 = call i32 @input_set_drvdata(%struct.input_dev* %160, %struct.bu21029_ts_data* %161)
  %163 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %164 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IRQ_NOAUTOEN, align 4
  %167 = call i32 @irq_set_status_flags(i32 %165, i32 %166)
  %168 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %169 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %168, i32 0, i32 0
  %170 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %171 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @bu21029_touch_soft_irq, align 4
  %174 = load i32, i32* @IRQF_ONESHOT, align 4
  %175 = load i32, i32* @DRIVER_NAME, align 4
  %176 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %177 = call i32 @devm_request_threaded_irq(i32* %169, i32 %172, i32* null, i32 %173, i32 %174, i32 %175, %struct.bu21029_ts_data* %176)
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %116
  %181 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %182 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %181, i32 0, i32 0
  %183 = load i32, i32* %8, align 4
  %184 = call i32 (i32*, i8*, ...) @dev_err(i32* %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %8, align 4
  store i32 %185, i32* %3, align 4
  br label %201

186:                                              ; preds = %116
  %187 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %188 = call i32 @input_register_device(%struct.input_dev* %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %193 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %192, i32 0, i32 0
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i32*, i8*, ...) @dev_err(i32* %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %194)
  %196 = load i32, i32* %8, align 4
  store i32 %196, i32* %3, align 4
  br label %201

197:                                              ; preds = %186
  %198 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %199 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %6, align 8
  %200 = call i32 @i2c_set_clientdata(%struct.i2c_client* %198, %struct.bu21029_ts_data* %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %197, %191, %180, %110, %102, %74, %43, %32, %19
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.bu21029_ts_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @device_property_read_u32(i32*, i8*, i32*) #1

declare dso_local i32 @devm_regulator_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_gpiod_get_optional(i32*, i8*, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @touchscreen_parse_properties(%struct.input_dev*, i32, i32*) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.bu21029_ts_data*) #1

declare dso_local i32 @irq_set_status_flags(i32, i32) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i32, %struct.bu21029_ts_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.bu21029_ts_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
