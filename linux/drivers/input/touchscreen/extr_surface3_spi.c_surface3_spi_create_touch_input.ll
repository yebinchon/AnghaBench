; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_create_touch_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_create_touch_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { %struct.TYPE_4__*, %struct.input_dev* }
%struct.TYPE_4__ = type { i32 }
%struct.input_dev = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MAJOR = common dso_local global i32 0, align 4
@ABS_MT_WIDTH_MINOR = common dso_local global i32 0, align 4
@INPUT_MT_DIRECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Surface3 SPI Capacitive TouchScreen\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"input/ts\00", align 1
@BUS_SPI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Failed to register input device: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.surface3_ts_data*)* @surface3_spi_create_touch_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @surface3_spi_create_touch_input(%struct.surface3_ts_data* %0) #0 {
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
  br label %71

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %18, i32 0, i32 1
  store %struct.input_dev* %17, %struct.input_dev** %19, align 8
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %22 = call i32 @input_set_abs_params(%struct.input_dev* %20, i32 %21, i32 0, i32 9600, i32 0, i32 0)
  %23 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %24 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %25 = call i32 @input_abs_set_res(%struct.input_dev* %23, i32 %24, i32 40)
  %26 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %27 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %28 = call i32 @input_set_abs_params(%struct.input_dev* %26, i32 %27, i32 0, i32 7200, i32 0, i32 0)
  %29 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %30 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %31 = call i32 @input_abs_set_res(%struct.input_dev* %29, i32 %30, i32 48)
  %32 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %33 = load i32, i32* @ABS_MT_WIDTH_MAJOR, align 4
  %34 = call i32 @input_set_abs_params(%struct.input_dev* %32, i32 %33, i32 0, i32 1024, i32 0, i32 0)
  %35 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %36 = load i32, i32* @ABS_MT_WIDTH_MINOR, align 4
  %37 = call i32 @input_set_abs_params(%struct.input_dev* %35, i32 %36, i32 0, i32 1024, i32 0, i32 0)
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = load i32, i32* @INPUT_MT_DIRECT, align 4
  %40 = call i32 @input_mt_init_slots(%struct.input_dev* %38, i32 10, i32 %39)
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %44, align 8
  %45 = load i32, i32* @BUS_SPI, align 4
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 3
  store i32 %45, i32* %48, align 4
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 1118, i32* %51, align 8
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i32 0, i32* %57, align 8
  %58 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %59 = call i32 @input_register_device(%struct.input_dev* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %16
  %63 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %64 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %62, %13
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(i32*) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_abs_set_res(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_mt_init_slots(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
