; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/joystick/extr_as5011.c_as5011_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.as5011_platform_data = type { i32, i32, i32 }
%struct.as5011_device = type { i32, i32, i32, %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"No axis IRQ?\0A\00", align 1
@I2C_FUNC_NOSTART = common dso_local global i32 0, align 4
@I2C_FUNC_PROTOCOL_MANGLING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"need i2c bus that supports protocol mangling\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Can't allocate memory for device structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Austria Microsystem as5011 joystick\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_JOYSTICK = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@AS5011_MIN_AXIS = common dso_local global i32 0, align 4
@AS5011_MAX_AXIS = common dso_local global i32 0, align 4
@AS5011_FUZZ = common dso_local global i32 0, align 4
@AS5011_FLAT = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"AS5011 button\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to request button gpio\0A\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Failed to get irq number for button gpio\0A\00", align 1
@as5011_button_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@IRQF_TRIGGER_FALLING = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"as5011_button\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Can't allocate button irq %d\0A\00", align 1
@as5011_axis_interrupt = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"as5011_joystick\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Can't allocate axis irq %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @as5011_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as5011_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.as5011_platform_data*, align 8
  %7 = alloca %struct.as5011_device*, align 8
  %8 = alloca %struct.input_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.as5011_platform_data* @dev_get_platdata(i32* %12)
  store %struct.as5011_platform_data* %13, %struct.as5011_platform_data** %6, align 8
  %14 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %15 = icmp ne %struct.as5011_platform_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %220

19:                                               ; preds = %2
  %20 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.as5011_platform_data, %struct.as5011_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %19
  %25 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 (i32*, i8*, ...) @dev_err(i32* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %220

30:                                               ; preds = %19
  %31 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %32 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I2C_FUNC_NOSTART, align 4
  %35 = load i32, i32* @I2C_FUNC_PROTOCOL_MANGLING, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @i2c_check_functionality(i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %30
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = call i32 (i32*, i8*, ...) @dev_err(i32* %41, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @ENODEV, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %220

45:                                               ; preds = %30
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.as5011_device* @kmalloc(i32 32, i32 %46)
  store %struct.as5011_device* %47, %struct.as5011_device** %7, align 8
  %48 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %48, %struct.input_dev** %8, align 8
  %49 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %50 = icmp ne %struct.as5011_device* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %53 = icmp ne %struct.input_dev* %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %56 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %10, align 4
  br label %214

60:                                               ; preds = %51
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %63 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %62, i32 0, i32 4
  store %struct.i2c_client* %61, %struct.i2c_client** %63, align 8
  %64 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %65 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %66 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %65, i32 0, i32 3
  store %struct.input_dev* %64, %struct.input_dev** %66, align 8
  %67 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %68 = getelementptr inbounds %struct.as5011_platform_data, %struct.as5011_platform_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %71 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %73 = getelementptr inbounds %struct.as5011_platform_data, %struct.as5011_platform_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %76 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %78 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %77, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8** %78, align 8
  %79 = load i32, i32* @BUS_I2C, align 4
  %80 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %81 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %84 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %83, i32 0, i32 0
  %85 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %86 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i32* %84, i32** %87, align 8
  %88 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %89 = load i32, i32* @EV_KEY, align 4
  %90 = load i32, i32* @BTN_JOYSTICK, align 4
  %91 = call i32 @input_set_capability(%struct.input_dev* %88, i32 %89, i32 %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %93 = load i32, i32* @ABS_X, align 4
  %94 = load i32, i32* @AS5011_MIN_AXIS, align 4
  %95 = load i32, i32* @AS5011_MAX_AXIS, align 4
  %96 = load i32, i32* @AS5011_FUZZ, align 4
  %97 = load i32, i32* @AS5011_FLAT, align 4
  %98 = call i32 @input_set_abs_params(%struct.input_dev* %92, i32 %93, i32 %94, i32 %95, i32 %96, i32 %97)
  %99 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %100 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %99, i32 0, i32 3
  %101 = load %struct.input_dev*, %struct.input_dev** %100, align 8
  %102 = load i32, i32* @ABS_Y, align 4
  %103 = load i32, i32* @AS5011_MIN_AXIS, align 4
  %104 = load i32, i32* @AS5011_MAX_AXIS, align 4
  %105 = load i32, i32* @AS5011_FUZZ, align 4
  %106 = load i32, i32* @AS5011_FLAT, align 4
  %107 = call i32 @input_set_abs_params(%struct.input_dev* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %109 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @gpio_request(i32 %110, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %60
  %115 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %116 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %115, i32 0, i32 0
  %117 = call i32 (i32*, i8*, ...) @dev_err(i32* %116, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %214

118:                                              ; preds = %60
  %119 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %120 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @gpio_to_irq(i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %127 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %126, i32 0, i32 0
  %128 = call i32 (i32*, i8*, ...) @dev_err(i32* %127, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0))
  %129 = load i32, i32* %9, align 4
  store i32 %129, i32* %10, align 4
  br label %209

130:                                              ; preds = %118
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %133 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  %134 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %135 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @as5011_button_interrupt, align 4
  %138 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %139 = load i32, i32* @IRQF_TRIGGER_FALLING, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @IRQF_ONESHOT, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %144 = call i32 @request_threaded_irq(i32 %136, i32* null, i32 %137, i32 %142, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.as5011_device* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp slt i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %130
  %148 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %149 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %148, i32 0, i32 0
  %150 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %151 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), i32 %152)
  br label %209

154:                                              ; preds = %130
  %155 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %156 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %157 = call i32 @as5011_configure_chip(%struct.as5011_device* %155, %struct.as5011_platform_data* %156)
  store i32 %157, i32* %10, align 4
  %158 = load i32, i32* %10, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %154
  br label %203

161:                                              ; preds = %154
  %162 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %163 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @as5011_axis_interrupt, align 4
  %166 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %167 = getelementptr inbounds %struct.as5011_platform_data, %struct.as5011_platform_data* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @IRQF_ONESHOT, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %172 = call i32 @request_threaded_irq(i32 %164, i32* null, i32 %165, i32 %170, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), %struct.as5011_device* %171)
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* %10, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %182

175:                                              ; preds = %161
  %176 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %177 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %176, i32 0, i32 0
  %178 = load %struct.as5011_platform_data*, %struct.as5011_platform_data** %6, align 8
  %179 = getelementptr inbounds %struct.as5011_platform_data, %struct.as5011_platform_data* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32*, i8*, ...) @dev_err(i32* %177, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %180)
  br label %203

182:                                              ; preds = %161
  %183 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %184 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %183, i32 0, i32 3
  %185 = load %struct.input_dev*, %struct.input_dev** %184, align 8
  %186 = call i32 @input_register_device(%struct.input_dev* %185)
  store i32 %186, i32* %10, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %182
  %190 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %191 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %190, i32 0, i32 0
  %192 = call i32 (i32*, i8*, ...) @dev_err(i32* %191, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i64 0, i64 0))
  br label %197

193:                                              ; preds = %182
  %194 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %195 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %196 = call i32 @i2c_set_clientdata(%struct.i2c_client* %194, %struct.as5011_device* %195)
  store i32 0, i32* %3, align 4
  br label %220

197:                                              ; preds = %189
  %198 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %199 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %202 = call i32 @free_irq(i32 %200, %struct.as5011_device* %201)
  br label %203

203:                                              ; preds = %197, %175, %160
  %204 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %205 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %208 = call i32 @free_irq(i32 %206, %struct.as5011_device* %207)
  br label %209

209:                                              ; preds = %203, %147, %125
  %210 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %211 = getelementptr inbounds %struct.as5011_device, %struct.as5011_device* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @gpio_free(i32 %212)
  br label %214

214:                                              ; preds = %209, %114, %54
  %215 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  %216 = call i32 @input_free_device(%struct.input_dev* %215)
  %217 = load %struct.as5011_device*, %struct.as5011_device** %7, align 8
  %218 = call i32 @kfree(%struct.as5011_device* %217)
  %219 = load i32, i32* %10, align 4
  store i32 %219, i32* %3, align 4
  br label %220

220:                                              ; preds = %214, %193, %39, %24, %16
  %221 = load i32, i32* %3, align 4
  ret i32 %221
}

declare dso_local %struct.as5011_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local %struct.as5011_device* @kmalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.as5011_device*) #1

declare dso_local i32 @as5011_configure_chip(%struct.as5011_device*, %struct.as5011_platform_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @i2c_set_clientdata(%struct.i2c_client*, %struct.as5011_device*) #1

declare dso_local i32 @free_irq(i32, %struct.as5011_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.as5011_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
