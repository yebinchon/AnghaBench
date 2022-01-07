; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_ts_create_input_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wdt87xx_i2c.c_wdt87xx_ts_create_input_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdt87xx_data = type { %struct.TYPE_6__, i32, %struct.input_dev*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.input_dev = type { i8*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@MAX_UNIT_AXIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"WDT87xx Touchscreen\00", align 1
@BUS_I2C = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_TOUCH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@WDT_MAX_FINGER = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@INPUT_MT_DROP_UNUSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"failed to register input device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wdt87xx_data*)* @wdt87xx_ts_create_input_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wdt87xx_ts_create_input_device(%struct.wdt87xx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wdt87xx_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wdt87xx_data* %0, %struct.wdt87xx_data** %3, align 8
  %8 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %9 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load i32, i32* @MAX_UNIT_AXIS, align 4
  %13 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %14 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DIV_ROUND_CLOSEST(i32 %12, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %18)
  store %struct.input_dev* %19, %struct.input_dev** %5, align 8
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = icmp ne %struct.input_dev* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %104

27:                                               ; preds = %1
  %28 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %29 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %30 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %29, i32 0, i32 2
  store %struct.input_dev* %28, %struct.input_dev** %30, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load i32, i32* @BUS_I2C, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %38 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %45 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %52 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %58 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %59 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @input_set_abs_params(%struct.input_dev* %56, i32 %57, i32 0, i32 %61, i32 0, i32 0)
  %63 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %64 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %65 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %66 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @input_set_abs_params(%struct.input_dev* %63, i32 %64, i32 0, i32 %68, i32 0, i32 0)
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @input_abs_set_res(%struct.input_dev* %70, i32 %71, i32 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %75 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @input_abs_set_res(%struct.input_dev* %74, i32 %75, i32 %76)
  %78 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %79 = load i32, i32* @ABS_MT_TOUCH_MAJOR, align 4
  %80 = load %struct.wdt87xx_data*, %struct.wdt87xx_data** %3, align 8
  %81 = getelementptr inbounds %struct.wdt87xx_data, %struct.wdt87xx_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @input_set_abs_params(%struct.input_dev* %78, i32 %79, i32 0, i32 %83, i32 0, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %86 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %87 = call i32 @input_set_abs_params(%struct.input_dev* %85, i32 %86, i32 0, i32 255, i32 0, i32 0)
  %88 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %89 = load i32, i32* @WDT_MAX_FINGER, align 4
  %90 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %91 = load i32, i32* @INPUT_MT_DROP_UNUSED, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @input_mt_init_slots(%struct.input_dev* %88, i32 %89, i32 %92)
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = call i32 @input_register_device(%struct.input_dev* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %27
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %104

103:                                              ; preds = %27
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %98, %22
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
