; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_write_ext_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/afe/extr_iio-rescale.c_rescale_write_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.rescale = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*, i64)* @rescale_write_ext_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rescale_write_ext_info(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rescale*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %13 = call %struct.rescale* @iio_priv(%struct.iio_dev* %12)
  store %struct.rescale* %13, %struct.rescale** %11, align 8
  %14 = load %struct.rescale*, %struct.rescale** %11, align 8
  %15 = getelementptr inbounds %struct.rescale, %struct.rescale* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.rescale*, %struct.rescale** %11, align 8
  %18 = getelementptr inbounds %struct.rescale, %struct.rescale* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call i32 @iio_write_channel_ext_info(i32 %16, i32 %23, i8* %24, i64 %25)
  ret i32 %26
}

declare dso_local %struct.rescale* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_write_channel_ext_info(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
