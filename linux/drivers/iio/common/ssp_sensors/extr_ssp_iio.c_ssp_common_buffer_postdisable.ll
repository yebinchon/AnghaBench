; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_buffer_postdisable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_buffer_postdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ssp_sensor_data = type { i32, i32 }
%struct.ssp_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_common_buffer_postdisable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssp_sensor_data*, align 8
  %6 = alloca %struct.ssp_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.ssp_sensor_data* %8, %struct.ssp_sensor_data** %5, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ssp_data* @dev_get_drvdata(i32 %14)
  store %struct.ssp_data* %15, %struct.ssp_data** %6, align 8
  %16 = load %struct.ssp_data*, %struct.ssp_data** %6, align 8
  %17 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %5, align 8
  %18 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ssp_disable_sensor(%struct.ssp_data* %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %31

25:                                               ; preds = %1
  %26 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %5, align 8
  %27 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.ssp_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @ssp_disable_sensor(%struct.ssp_data*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
