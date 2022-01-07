; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_max11801_ts.c_max11801_ts_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, i32 }
%struct.i2c_device_id = type { i32 }
%struct.max11801_data = type { %struct.input_dev*, %struct.i2c_client* }
%struct.input_dev = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"max11801_ts\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MAX11801_MAX_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MAX11801_MAX_Y = common dso_local global i32 0, align 4
@max11801_ts_interrupt = common dso_local global i32 0, align 4
@IRQF_TRIGGER_LOW = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to register interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @max11801_ts_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max11801_ts_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.max11801_data*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %9, i32 0, i32 0
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.max11801_data* @devm_kzalloc(i32* %10, i32 16, i32 %11)
  store %struct.max11801_data* %12, %struct.max11801_data** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %13, i32 0, i32 0
  %15 = call %struct.input_dev* @devm_input_allocate_device(i32* %14)
  store %struct.input_dev* %15, %struct.input_dev** %7, align 8
  %16 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %17 = icmp ne %struct.max11801_data* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %20 = icmp ne %struct.input_dev* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %18
  %28 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %29 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %30 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %29, i32 0, i32 1
  store %struct.i2c_client* %28, %struct.i2c_client** %30, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %32 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %33 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %32, i32 0, i32 0
  store %struct.input_dev* %31, %struct.input_dev** %33, align 8
  %34 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  %36 = load i32, i32* @BUS_I2C, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %43 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32* %41, i32** %44, align 8
  %45 = load i32, i32* @EV_ABS, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__set_bit(i32 %45, i32 %48)
  %50 = load i32, i32* @EV_KEY, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @__set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* @BTN_TOUCH, align 4
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @__set_bit(i32 %55, i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %61 = load i32, i32* @ABS_X, align 4
  %62 = load i32, i32* @MAX11801_MAX_X, align 4
  %63 = call i32 @input_set_abs_params(%struct.input_dev* %60, i32 %61, i32 0, i32 %62, i32 0, i32 0)
  %64 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %65 = load i32, i32* @ABS_Y, align 4
  %66 = load i32, i32* @MAX11801_MAX_Y, align 4
  %67 = call i32 @input_set_abs_params(%struct.input_dev* %64, i32 %65, i32 0, i32 %66, i32 0, i32 0)
  %68 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %69 = call i32 @max11801_ts_phy_init(%struct.max11801_data* %68)
  %70 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %73 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @max11801_ts_interrupt, align 4
  %76 = load i32, i32* @IRQF_TRIGGER_LOW, align 4
  %77 = load i32, i32* @IRQF_ONESHOT, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %80 = call i32 @devm_request_threaded_irq(i32* %71, i32 %74, i32* null, i32 %75, i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.max11801_data* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %27
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %84, i32 0, i32 0
  %86 = call i32 @dev_err(i32* %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %98

88:                                               ; preds = %27
  %89 = load %struct.max11801_data*, %struct.max11801_data** %6, align 8
  %90 = getelementptr inbounds %struct.max11801_data, %struct.max11801_data* %89, i32 0, i32 0
  %91 = load %struct.input_dev*, %struct.input_dev** %90, align 8
  %92 = call i32 @input_register_device(%struct.input_dev* %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %3, align 4
  br label %98

97:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %95, %83, %21
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.max11801_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max11801_ts_phy_init(%struct.max11801_data*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.max11801_data*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
