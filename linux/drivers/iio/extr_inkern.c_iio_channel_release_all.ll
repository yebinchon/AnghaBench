; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_release_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_channel_release_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iio_channel_release_all(%struct.iio_channel* %0) #0 {
  %2 = alloca %struct.iio_channel*, align 8
  %3 = alloca %struct.iio_channel*, align 8
  store %struct.iio_channel* %0, %struct.iio_channel** %2, align 8
  %4 = load %struct.iio_channel*, %struct.iio_channel** %2, align 8
  %5 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %4, i64 0
  store %struct.iio_channel* %5, %struct.iio_channel** %3, align 8
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %8 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %13 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @iio_device_put(i64 %14)
  %16 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %17 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %16, i32 1
  store %struct.iio_channel* %17, %struct.iio_channel** %3, align 8
  br label %6

18:                                               ; preds = %6
  %19 = load %struct.iio_channel*, %struct.iio_channel** %2, align 8
  %20 = call i32 @kfree(%struct.iio_channel* %19)
  ret void
}

declare dso_local i32 @iio_device_put(i64) #1

declare dso_local i32 @kfree(%struct.iio_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
