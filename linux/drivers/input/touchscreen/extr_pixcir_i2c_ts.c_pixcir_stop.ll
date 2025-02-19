; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_pixcir_i2c_ts.c_pixcir_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pixcir_i2c_ts_data = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"Failed to disable interrupt generation: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pixcir_i2c_ts_data*)* @pixcir_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pixcir_stop(%struct.pixcir_i2c_ts_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pixcir_i2c_ts_data*, align 8
  %4 = alloca i32, align 4
  store %struct.pixcir_i2c_ts_data* %0, %struct.pixcir_i2c_ts_data** %3, align 8
  %5 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %6 = call i32 @pixcir_int_enable(%struct.pixcir_i2c_ts_data* %5, i32 0)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %11 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %37

17:                                               ; preds = %1
  %18 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %19 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = call i32 (...) @mb()
  %21 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %22 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @synchronize_irq(i32 %25)
  %27 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %28 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.pixcir_i2c_ts_data*, %struct.pixcir_i2c_ts_data** %3, align 8
  %33 = getelementptr inbounds %struct.pixcir_i2c_ts_data, %struct.pixcir_i2c_ts_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @gpiod_set_value_cansleep(i64 %34, i32 0)
  br label %36

36:                                               ; preds = %31, %17
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @pixcir_int_enable(%struct.pixcir_i2c_ts_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
