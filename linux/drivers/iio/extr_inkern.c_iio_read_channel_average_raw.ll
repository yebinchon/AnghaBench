; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_average_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_average_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_AVERAGE_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_read_channel_average_raw(%struct.iio_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.iio_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_channel* %0, %struct.iio_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %7 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %12 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* @IIO_CHAN_INFO_AVERAGE_RAW, align 4
  %24 = call i32 @iio_channel_read(%struct.iio_channel* %21, i32* %22, i32* null, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %27 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iio_channel_read(%struct.iio_channel*, i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
