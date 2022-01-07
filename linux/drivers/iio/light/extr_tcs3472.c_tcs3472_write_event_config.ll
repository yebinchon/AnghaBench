; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_event_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_write_event_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tcs3472_data = type { i32, i32, i32 }

@TCS3472_ENABLE_AIEN = common dso_local global i32 0, align 4
@TCS3472_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32)* @tcs3472_write_event_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_write_event_config(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcs3472_data*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %15 = call %struct.tcs3472_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.tcs3472_data* %15, %struct.tcs3472_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %17 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %20 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %5
  %25 = load i32, i32* @TCS3472_ENABLE_AIEN, align 4
  %26 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %27 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load i32, i32* @TCS3472_ENABLE_AIEN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %34 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %30, %24
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %40 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %45 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TCS3472_ENABLE, align 4
  %48 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %49 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @i2c_smbus_write_byte_data(i32 %46, i32 %47, i32 %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %57 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %43
  br label %59

59:                                               ; preds = %58, %37
  %60 = load %struct.tcs3472_data*, %struct.tcs3472_data** %11, align 8
  %61 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %12, align 4
  ret i32 %63
}

declare dso_local %struct.tcs3472_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
