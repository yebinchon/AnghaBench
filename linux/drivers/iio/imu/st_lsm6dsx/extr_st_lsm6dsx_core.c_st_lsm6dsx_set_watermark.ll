; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/st_lsm6dsx/extr_st_lsm6dsx_core.c_st_lsm6dsx_set_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.st_lsm6dsx_sensor = type { i32, %struct.st_lsm6dsx_hw* }
%struct.st_lsm6dsx_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @st_lsm6dsx_set_watermark(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.st_lsm6dsx_sensor*, align 8
  %7 = alloca %struct.st_lsm6dsx_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev* %9)
  store %struct.st_lsm6dsx_sensor* %10, %struct.st_lsm6dsx_sensor** %6, align 8
  %11 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %12 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %11, i32 0, i32 1
  %13 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %12, align 8
  store %struct.st_lsm6dsx_hw* %13, %struct.st_lsm6dsx_hw** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %14, 1
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %19 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ugt i32 %17, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16, %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %29 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @st_lsm6dsx_update_watermark(%struct.st_lsm6dsx_sensor* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.st_lsm6dsx_hw*, %struct.st_lsm6dsx_hw** %7, align 8
  %35 = getelementptr inbounds %struct.st_lsm6dsx_hw, %struct.st_lsm6dsx_hw* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %27
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.st_lsm6dsx_sensor*, %struct.st_lsm6dsx_sensor** %6, align 8
  %44 = getelementptr inbounds %struct.st_lsm6dsx_sensor, %struct.st_lsm6dsx_sensor* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %39, %24
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.st_lsm6dsx_sensor* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @st_lsm6dsx_update_watermark(%struct.st_lsm6dsx_sensor*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
