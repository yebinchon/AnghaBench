; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_buffer_postenable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_iio.c_ssp_common_buffer_postenable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ssp_sensor_data = type { i32, i32 }
%struct.ssp_data = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_common_buffer_postenable(%struct.iio_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ssp_sensor_data*, align 8
  %5 = alloca %struct.ssp_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  %6 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %7 = call %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev* %6)
  store %struct.ssp_sensor_data* %7, %struct.ssp_sensor_data** %4, align 8
  %8 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %9 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ssp_data* @dev_get_drvdata(i32 %13)
  store %struct.ssp_data* %14, %struct.ssp_data** %5, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load i32, i32* @GFP_DMA, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @kmalloc(i32 %17, i32 %20)
  %22 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %4, align 8
  %23 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %4, align 8
  %25 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %1
  %32 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %33 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %4, align 8
  %34 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ssp_data*, %struct.ssp_data** %5, align 8
  %37 = load %struct.ssp_sensor_data*, %struct.ssp_sensor_data** %4, align 8
  %38 = getelementptr inbounds %struct.ssp_sensor_data, %struct.ssp_sensor_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ssp_get_sensor_delay(%struct.ssp_data* %36, i32 %39)
  %41 = call i32 @ssp_enable_sensor(%struct.ssp_data* %32, i32 %35, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.ssp_sensor_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.ssp_data* @dev_get_drvdata(i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @ssp_enable_sensor(%struct.ssp_data*, i32, i32) #1

declare dso_local i32 @ssp_get_sensor_delay(%struct.ssp_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
