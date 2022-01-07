; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_get_channels_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_get_channels_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.iio_dev = type { i32 }
%struct.ads1015_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ads1015_platform_data = type { i32 }

@ADS1015_CHANNELS = common dso_local global i32 0, align 4
@ADS1015_DEFAULT_PGA = common dso_local global i32 0, align 4
@ADS1015_DEFAULT_DATA_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*)* @ads1015_get_channels_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ads1015_get_channels_config(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.iio_dev*, align 8
  %5 = alloca %struct.ads1015_data*, align 8
  %6 = alloca %struct.ads1015_platform_data*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.iio_dev* %8, %struct.iio_dev** %4, align 8
  %9 = load %struct.iio_dev*, %struct.iio_dev** %4, align 8
  %10 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %9)
  store %struct.ads1015_data* %10, %struct.ads1015_data** %5, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 0
  %13 = call %struct.ads1015_platform_data* @dev_get_platdata(i32* %12)
  store %struct.ads1015_platform_data* %13, %struct.ads1015_platform_data** %6, align 8
  %14 = load %struct.ads1015_platform_data*, %struct.ads1015_platform_data** %6, align 8
  %15 = icmp ne %struct.ads1015_platform_data* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %18 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.ads1015_platform_data*, %struct.ads1015_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.ads1015_platform_data, %struct.ads1015_platform_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(%struct.TYPE_2__* %19, i32 %22, i32 8)
  br label %49

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %46, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ADS1015_CHANNELS, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load i32, i32* @ADS1015_DEFAULT_PGA, align 4
  %31 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %32 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %30, i32* %37, align 4
  %38 = load i32, i32* @ADS1015_DEFAULT_DATA_RATE, align 4
  %39 = load %struct.ads1015_data*, %struct.ads1015_data** %5, align 8
  %40 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  br label %46

46:                                               ; preds = %29
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %25

49:                                               ; preds = %16, %25
  ret void
}

declare dso_local %struct.iio_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local %struct.ads1015_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
