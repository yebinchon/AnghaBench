; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_setup_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5592r-base.c_ad5592r_setup_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i8, i32, i32 }

@IIO_VOLTAGE = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_SCALE = common dso_local global i32 0, align 4
@ad5592r_ext_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32)* @ad5592r_setup_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ad5592r_setup_channel(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @IIO_VOLTAGE, align 4
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 8
  %12 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %13 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %21 = call i8* @BIT(i32 %20)
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %23 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @IIO_CHAN_INFO_SCALE, align 4
  %25 = call i8* @BIT(i32 %24)
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 5
  store i8* %25, i8** %27, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i8 117, i8* %30, align 8
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 12, i32* %33, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 16, i32* %36, align 8
  %37 = load i32, i32* @ad5592r_ext_info, align 4
  %38 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %39 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 4
  ret void
}

declare dso_local i8* @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
