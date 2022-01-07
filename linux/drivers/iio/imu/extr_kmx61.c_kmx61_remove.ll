; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/imu/extr_kmx61.c_kmx61_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i64, i32 }
%struct.kmx61_data = type { i32, i32, i32, i32, i32, i32 }

@KMX61_ALL_STBY = common dso_local global i32 0, align 4
@KMX61_ACC = common dso_local global i32 0, align 4
@KMX61_MAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @kmx61_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kmx61_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.kmx61_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.kmx61_data* @i2c_get_clientdata(%struct.i2c_client* %4)
  store %struct.kmx61_data* %5, %struct.kmx61_data** %3, align 8
  %6 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %7 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @iio_device_unregister(i32 %8)
  %10 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %11 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @iio_device_unregister(i32 %12)
  %14 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = call i32 @pm_runtime_disable(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %18 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %17, i32 0, i32 1
  %19 = call i32 @pm_runtime_set_suspended(i32* %18)
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 1
  %22 = call i32 @pm_runtime_put_noidle(i32* %21)
  %23 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %1
  %28 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %29 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iio_triggered_buffer_cleanup(i32 %30)
  %32 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %33 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iio_triggered_buffer_cleanup(i32 %34)
  %36 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %37 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iio_trigger_unregister(i32 %38)
  %40 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %41 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iio_trigger_unregister(i32 %42)
  %44 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %45 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @iio_trigger_unregister(i32 %46)
  br label %48

48:                                               ; preds = %27, %1
  %49 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %50 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %53 = load i32, i32* @KMX61_ALL_STBY, align 4
  %54 = load i32, i32* @KMX61_ACC, align 4
  %55 = load i32, i32* @KMX61_MAG, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @kmx61_set_mode(%struct.kmx61_data* %52, i32 %53, i32 %56, i32 1)
  %58 = load %struct.kmx61_data*, %struct.kmx61_data** %3, align 8
  %59 = getelementptr inbounds %struct.kmx61_data, %struct.kmx61_data* %58, i32 0, i32 0
  %60 = call i32 @mutex_unlock(i32* %59)
  ret i32 0
}

declare dso_local %struct.kmx61_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @iio_device_unregister(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(i32) #1

declare dso_local i32 @iio_trigger_unregister(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmx61_set_mode(%struct.kmx61_data*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
