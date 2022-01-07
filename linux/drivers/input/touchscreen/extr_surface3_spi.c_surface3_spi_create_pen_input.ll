; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_create_pen_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_create_pen_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { %struct.TYPE_4__*, i32, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@INPUT_PROP_POINTER = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Surface3 SPI Pen Input\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"input/ts\00", align 1
@BUS_SPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to register input device: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.surface3_ts_data*)* @surface3_spi_create_pen_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_spi_create_pen_input(%struct.surface3_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  %6 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %7 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call %struct.input_dev* @devm_input_allocate_device(i32* %9)
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = icmp ne %struct.input_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %94

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %18, i32 0, i32 2
  store %struct.input_dev* %17, %struct.input_dev** %19, align 8
  %20 = load i32, i32* @BTN_TOOL_PEN, align 4
  %21 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %22 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @__set_bit(i32 %23, i32 %26)
  %28 = load i32, i32* @INPUT_PROP_POINTER, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @__set_bit(i32 %28, i32 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %34 = load i32, i32* @ABS_X, align 4
  %35 = call i32 @input_set_abs_params(%struct.input_dev* %33, i32 %34, i32 0, i32 9600, i32 0, i32 0)
  %36 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %37 = load i32, i32* @ABS_X, align 4
  %38 = call i32 @input_abs_set_res(%struct.input_dev* %36, i32 %37, i32 40)
  %39 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %40 = load i32, i32* @ABS_Y, align 4
  %41 = call i32 @input_set_abs_params(%struct.input_dev* %39, i32 %40, i32 0, i32 7200, i32 0, i32 0)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = load i32, i32* @ABS_Y, align 4
  %44 = call i32 @input_abs_set_res(%struct.input_dev* %42, i32 %43, i32 48)
  %45 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %46 = load i32, i32* @ABS_PRESSURE, align 4
  %47 = call i32 @input_set_abs_params(%struct.input_dev* %45, i32 %46, i32 0, i32 1024, i32 0, i32 0)
  %48 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %49 = load i32, i32* @EV_KEY, align 4
  %50 = load i32, i32* @BTN_TOUCH, align 4
  %51 = call i32 @input_set_capability(%struct.input_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = load i32, i32* @EV_KEY, align 4
  %54 = load i32, i32* @BTN_STYLUS, align 4
  %55 = call i32 @input_set_capability(%struct.input_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %57 = load i32, i32* @EV_KEY, align 4
  %58 = load i32, i32* @BTN_TOOL_PEN, align 4
  %59 = call i32 @input_set_capability(%struct.input_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %61 = load i32, i32* @EV_KEY, align 4
  %62 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  %63 = call i32 @input_set_capability(%struct.input_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8** %65, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %67 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %66, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %67, align 8
  %68 = load i32, i32* @BUS_SPI, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 4
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %73 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32 1118, i32* %74, align 8
  %75 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i32 2, i32* %77, align 4
  %78 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %79 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 0, i32* %80, align 8
  %81 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %82 = call i32 @input_register_device(%struct.input_dev* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %16
  %86 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %87 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %94

93:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %85, %13
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
