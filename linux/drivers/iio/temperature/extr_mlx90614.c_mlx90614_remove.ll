; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90614.c_mlx90614_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.mlx90614_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mlx90614_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90614_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.mlx90614_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.mlx90614_data* @iio_priv(%struct.iio_dev* %7)
  store %struct.mlx90614_data* %8, %struct.mlx90614_data** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.mlx90614_data*, %struct.mlx90614_data** %4, align 8
  %12 = getelementptr inbounds %struct.mlx90614_data, %struct.mlx90614_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %17 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %16, i32 0, i32 0
  %18 = call i32 @pm_runtime_disable(i32* %17)
  %19 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_status_suspended(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %15
  %24 = load %struct.mlx90614_data*, %struct.mlx90614_data** %4, align 8
  %25 = call i32 @mlx90614_sleep(%struct.mlx90614_data* %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = call i32 @pm_runtime_set_suspended(i32* %28)
  br label %30

30:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.mlx90614_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @mlx90614_sleep(%struct.mlx90614_data*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
