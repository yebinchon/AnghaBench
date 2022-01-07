; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_trigger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/proximity/extr_pulsedlight-lidar-lite-v2.c_lidar_trigger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_poll_func = type { %struct.iio_dev* }
%struct.iio_dev = type { i32 }
%struct.lidar_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot read LIDAR measurement\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lidar_trigger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lidar_trigger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_poll_func*, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.lidar_data*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_poll_func*
  store %struct.iio_poll_func* %10, %struct.iio_poll_func** %5, align 8
  %11 = load %struct.iio_poll_func*, %struct.iio_poll_func** %5, align 8
  %12 = getelementptr inbounds %struct.iio_poll_func, %struct.iio_poll_func* %11, i32 0, i32 0
  %13 = load %struct.iio_dev*, %struct.iio_dev** %12, align 8
  store %struct.iio_dev* %13, %struct.iio_dev** %6, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.lidar_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.lidar_data* %15, %struct.lidar_data** %7, align 8
  %16 = load %struct.lidar_data*, %struct.lidar_data** %7, align 8
  %17 = load %struct.lidar_data*, %struct.lidar_data** %7, align 8
  %18 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @lidar_get_measurement(%struct.lidar_data* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %25 = load %struct.lidar_data*, %struct.lidar_data** %7, align 8
  %26 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %29 = call i32 @iio_get_time_ns(%struct.iio_dev* %28)
  %30 = call i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev* %24, i32 %27, i32 %29)
  br label %43

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.lidar_data*, %struct.lidar_data** %7, align 8
  %38 = getelementptr inbounds %struct.lidar_data, %struct.lidar_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %36, %31
  br label %43

43:                                               ; preds = %42, %23
  %44 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %45 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iio_trigger_notify_done(i32 %46)
  %48 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %48
}

declare dso_local %struct.lidar_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @lidar_get_measurement(%struct.lidar_data*, i32) #1

declare dso_local i32 @iio_push_to_buffers_with_timestamp(%struct.iio_dev*, i32, i32) #1

declare dso_local i32 @iio_get_time_ns(%struct.iio_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @iio_trigger_notify_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
