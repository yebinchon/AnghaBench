; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_storage_bytes_for_si.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_industrialio-buffer.c_iio_storage_bytes_for_si.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, i32)* @iio_storage_bytes_for_si to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iio_storage_bytes_for_si(%struct.iio_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.iio_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_chan_spec*, align 8
  %6 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.iio_dev*, %struct.iio_dev** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.iio_chan_spec* @iio_find_channel_from_si(%struct.iio_dev* %7, i32 %8)
  store %struct.iio_chan_spec* %9, %struct.iio_chan_spec** %5, align 8
  %10 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %11 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %16 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %5, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = mul i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %20, %2
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.iio_chan_spec* @iio_find_channel_from_si(%struct.iio_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
