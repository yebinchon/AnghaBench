; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixcir_i2c_ts_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PIXCIR_INT_LEVEL_TOUCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set interrupt mode: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to enable interrupt generation: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pixcir_i2c_ts_data*)* @pixcir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixcir_start(%struct.pixcir_i2c_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pixcir_i2c_ts_data*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.pixcir_i2c_ts_data* %0, %struct.pixcir_i2c_ts_data** %3, align 8
  %6 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %7 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %11 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %16 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @gpiod_set_value_cansleep(i64 %17, i32 1)
  %19 = call i32 @msleep(i32 100)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %22 = load i32, i32* @PIXCIR_INT_LEVEL_TOUCH, align 4
  %23 = call i32 @pixcir_set_int_mode(%struct.pixcir_i2c_ts_data* %21, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %45

31:                                               ; preds = %20
  %32 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %33 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = call i32 (...) @mb()
  %35 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %36 = call i32 @pixcir_int_enable(%struct.pixcir_i2c_ts_data* %35, i32 1)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %31
  %40 = load %struct.device*, %struct.device** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %45

44:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %44, %39, %26
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pixcir_set_int_mode(%struct.pixcir_i2c_ts_data*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pixcir_int_enable(%struct.pixcir_i2c_ts_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
