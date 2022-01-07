; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_get_channel_ext_info_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_get_channel_ext_info_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iio_chan_spec_ext_info* }
%struct.iio_chan_spec_ext_info = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_get_channel_ext_info_count(%struct.iio_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iio_channel*, align 8
  %4 = alloca %struct.iio_chan_spec_ext_info*, align 8
  %5 = alloca i32, align 4
  store %struct.iio_channel* %0, %struct.iio_channel** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %7 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %9, align 8
  %11 = icmp ne %struct.iio_chan_spec_ext_info* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.iio_channel*, %struct.iio_channel** %3, align 8
  %16 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %18, align 8
  store %struct.iio_chan_spec_ext_info* %19, %struct.iio_chan_spec_ext_info** %4, align 8
  br label %20

20:                                               ; preds = %28, %14
  %21 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %4, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25
  %29 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %4, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %29, i32 1
  store %struct.iio_chan_spec_ext_info* %30, %struct.iio_chan_spec_ext_info** %4, align 8
  br label %20

31:                                               ; preds = %20
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
