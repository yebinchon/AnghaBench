; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_st_gyro_buffer.c_st_gyro_buffer_predisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_st_gyro_buffer.c_st_gyro_buffer_predisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }

@ST_SENSORS_ENABLE_ALL_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @st_gyro_buffer_predisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_gyro_buffer_predisable(%struct.iio_dev* %0) #0 {
  %2 = alloca %struct.iio_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %2, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %6 = call i32 @st_sensors_set_enable(%struct.iio_dev* %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %14

10:                                               ; preds = %1
  %11 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %12 = load i32, i32* @ST_SENSORS_ENABLE_ALL_AXIS, align 4
  %13 = call i32 @st_sensors_set_axis_enable(%struct.iio_dev* %11, i32 %12)
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %10, %9
  %15 = load %struct.iio_dev*, %struct.iio_dev** %2, align 8
  %16 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @st_sensors_set_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @st_sensors_set_axis_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
