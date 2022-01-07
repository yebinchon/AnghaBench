; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_processed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_PROCESSED = common dso_local global i32 0, align 4
@IIO_CHAN_INFO_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_read_channel_processed(%struct.iio_channel* %0, i32* %1) #0 {
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
  br label %47

20:                                               ; preds = %2
  %21 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %22 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IIO_CHAN_INFO_PROCESSED, align 4
  %25 = call i64 @iio_channel_has_info(i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* @IIO_CHAN_INFO_PROCESSED, align 4
  %31 = call i32 @iio_channel_read(%struct.iio_channel* %28, i32* %29, i32* null, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %46

32:                                               ; preds = %20
  %33 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* @IIO_CHAN_INFO_RAW, align 4
  %36 = call i32 @iio_channel_read(%struct.iio_channel* %33, i32* %34, i32* null, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %47

40:                                               ; preds = %32
  %41 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  %45 = call i32 @iio_convert_raw_to_processed_unlocked(%struct.iio_channel* %41, i32 %43, i32* %44, i32 1)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %40, %27
  br label %47

47:                                               ; preds = %46, %39, %17
  %48 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %49 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iio_channel_has_info(i32, i32) #1

declare dso_local i32 @iio_channel_read(%struct.iio_channel*, i32*, i32*, i32) #1

declare dso_local i32 @iio_convert_raw_to_processed_unlocked(%struct.iio_channel*, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
