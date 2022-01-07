; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_st_gyro_buffer.c_st_gyro_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_st_gyro_buffer.c_st_gyro_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i64* }

@ST_SENSORS_ENABLE_ALL_AXIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*)* @st_gyro_buffer_postenable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_gyro_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %5 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %6 = call i32 @iio_triggered_buffer_postenable(%struct.iio_dev* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 @st_sensors_set_axis_enable(%struct.iio_dev* %12, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %34

23:                                               ; preds = %11
  %24 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %25 = call i32 @st_sensors_set_enable(%struct.iio_dev* %24, i32 1)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %30

29:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %38

30:                                               ; preds = %28
  %31 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %32 = load i32, i32* @ST_SENSORS_ENABLE_ALL_AXIS, align 4
  %33 = call i32 @st_sensors_set_axis_enable(%struct.iio_dev* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %22
  %35 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %36 = call i32 @iio_triggered_buffer_predisable(%struct.iio_dev* %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %29, %9
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @iio_triggered_buffer_postenable(%struct.iio_dev*) #1

declare dso_local i32 @st_sensors_set_axis_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @st_sensors_set_enable(%struct.iio_dev*, i32) #1

declare dso_local i32 @iio_triggered_buffer_predisable(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
