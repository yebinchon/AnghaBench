; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ad799x.c_ad799x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ad799x_state = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ad799x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad799x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca %struct.ad799x_state*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.iio_dev* %6, %struct.iio_dev** %3, align 8
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = call %struct.ad799x_state* @iio_priv(%struct.iio_dev* %7)
  store %struct.ad799x_state* %8, %struct.ad799x_state** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %10 = call i32 @iio_device_unregister(%struct.iio_dev* %9)
  %11 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %12 = call i32 @iio_triggered_buffer_cleanup(%struct.iio_dev* %11)
  %13 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %14 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regulator_disable(i32 %15)
  %17 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %18 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @regulator_disable(i32 %19)
  %21 = load %struct.ad799x_state*, %struct.ad799x_state** %4, align 8
  %22 = getelementptr inbounds %struct.ad799x_state, %struct.ad799x_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @kfree(i32 %23)
  ret i32 0
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ad799x_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_unregister(%struct.iio_dev*) #1

declare dso_local i32 @iio_triggered_buffer_cleanup(%struct.iio_dev*) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
