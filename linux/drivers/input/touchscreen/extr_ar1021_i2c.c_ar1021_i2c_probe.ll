; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ar1021_i2c.c_ar1021_i2c_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.ar1021_i2c = type { %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@I2C_FUNC_I2C = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"i2c_check_functionality error\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ar1021 I2C Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ar1021_i2c_open = common dso_local global i32 0, align 4
@ar1021_i2c_close = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@AR1021_MAX_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@AR1021_MAX_Y = common dso_local global i32 0, align 4
@ar1021_i2c_irq = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"ar1021_i2c\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to enable IRQ, error: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Failed to register input device, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ar1021_i2c_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar1021_i2c_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ar1021_i2c*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I2C_FUNC_I2C, align 4
  %13 = call i32 @i2c_check_functionality(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 (i32*, i8*, ...) @dev_err(i32* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %119

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ar1021_i2c* @devm_kzalloc(i32* %23, i32 16, i32 %24)
  store %struct.ar1021_i2c* %25, %struct.ar1021_i2c** %6, align 8
  %26 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %27 = icmp ne %struct.ar1021_i2c* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %119

31:                                               ; preds = %21
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %32, i32 0, i32 0
  %34 = call %struct.input_dev* @devm_input_allocate_device(i32* %33)
  store %struct.input_dev* %34, %struct.input_dev** %7, align 8
  %35 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %36 = icmp ne %struct.input_dev* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %119

40:                                               ; preds = %31
  %41 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %42 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %43 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %42, i32 0, i32 1
  store %struct.i2c_client* %41, %struct.i2c_client** %43, align 8
  %44 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %45 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %46 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %45, i32 0, i32 0
  store %struct.input_dev* %44, %struct.input_dev** %46, align 8
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  %49 = load i32, i32* @BUS_I2C, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32* %54, i32** %57, align 8
  %58 = load i32, i32* @ar1021_i2c_open, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @ar1021_i2c_close, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %65 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %66 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @__set_bit(i32 %64, i32 %67)
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = load i32, i32* @EV_KEY, align 4
  %71 = load i32, i32* @BTN_TOUCH, align 4
  %72 = call i32 @input_set_capability(%struct.input_dev* %69, i32 %70, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %74 = load i32, i32* @ABS_X, align 4
  %75 = load i32, i32* @AR1021_MAX_X, align 4
  %76 = call i32 @input_set_abs_params(%struct.input_dev* %73, i32 %74, i32 0, i32 %75, i32 0, i32 0)
  %77 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %78 = load i32, i32* @ABS_Y, align 4
  %79 = load i32, i32* @AR1021_MAX_Y, align 4
  %80 = call i32 @input_set_abs_params(%struct.input_dev* %77, i32 %78, i32 0, i32 %79, i32 0, i32 0)
  %81 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %82 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %83 = call i32 @input_set_drvdata(%struct.input_dev* %81, %struct.ar1021_i2c* %82)
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %87 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ar1021_i2c_irq, align 4
  %90 = load i32, i32* @IRQF_ONESHOT, align 4
  %91 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %92 = call i32 @devm_request_threaded_irq(i32* %85, i32 %88, i32* null, i32 %89, i32 %90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %struct.ar1021_i2c* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %40
  %96 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %97 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %96, i32 0, i32 0
  %98 = load i32, i32* %8, align 4
  %99 = call i32 (i32*, i8*, ...) @dev_err(i32* %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %119

101:                                              ; preds = %40
  %102 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %103 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @disable_irq(i32 %104)
  %106 = load %struct.ar1021_i2c*, %struct.ar1021_i2c** %6, align 8
  %107 = getelementptr inbounds %struct.ar1021_i2c, %struct.ar1021_i2c* %106, i32 0, i32 0
  %108 = load %struct.input_dev*, %struct.input_dev** %107, align 8
  %109 = call i32 @input_register_device(%struct.input_dev* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %101
  %113 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %114 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %113, i32 0, i32 0
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (i32*, i8*, ...) @dev_err(i32* %114, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %119

118:                                              ; preds = %101
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %118, %112, %95, %37, %28, %15
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @i2c_check_functionality(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.ar1021_i2c* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.ar1021_i2c*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.ar1021_i2c*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
