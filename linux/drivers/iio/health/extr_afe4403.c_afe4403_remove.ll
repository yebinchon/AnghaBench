; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/health/extr_afe4403.c_afe4403_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.iio_dev = type { i32 }
%struct.afe4403_data = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Unable to disable regulator\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @afe4403_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afe4403_remove(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.afe4403_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = call %struct.iio_dev* @spi_get_drvdata(%struct.spi_device* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.afe4403_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.afe4403_data* %10, %struct.afe4403_data** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %12 = call i32 @iio_device_unregister(%struct.iio_dev* %11)
  %13 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %14 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %13)
  %15 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %16 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %21 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @iio_trigger_unregister(i32 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %26 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @regulator_disable(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.afe4403_data*, %struct.afe4403_data** %5, align 8
  %33 = getelementptr inbounds %struct.afe4403_data, %struct.afe4403_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %31
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.iio_dev* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local %struct.afe4403_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @iio_trigger_unregister(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
