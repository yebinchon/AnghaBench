; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_lookup_ext_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_lookup_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_chan_spec_ext_info = type { i64 }
%struct.iio_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iio_chan_spec_ext_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iio_chan_spec_ext_info* (%struct.iio_channel*, i8*)* @iio_lookup_ext_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iio_chan_spec_ext_info* @iio_lookup_ext_info(%struct.iio_channel* %0, i8* %1) #0 {
  %3 = alloca %struct.iio_chan_spec_ext_info*, align 8
  %4 = alloca %struct.iio_channel*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iio_chan_spec_ext_info*, align 8
  store %struct.iio_channel* %0, %struct.iio_channel** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.iio_channel*, %struct.iio_channel** %4, align 8
  %8 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %10, align 8
  %12 = icmp ne %struct.iio_chan_spec_ext_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.iio_chan_spec_ext_info* null, %struct.iio_chan_spec_ext_info** %3, align 8
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.iio_channel*, %struct.iio_channel** %4, align 8
  %16 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %18, align 8
  store %struct.iio_chan_spec_ext_info* %19, %struct.iio_chan_spec_ext_info** %6, align 8
  br label %20

20:                                               ; preds = %35, %14
  %21 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %6, align 8
  %22 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %6, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @strcmp(i8* %26, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %6, align 8
  store %struct.iio_chan_spec_ext_info* %33, %struct.iio_chan_spec_ext_info** %3, align 8
  br label %39

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %6, align 8
  %37 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %36, i32 1
  store %struct.iio_chan_spec_ext_info* %37, %struct.iio_chan_spec_ext_info** %6, align 8
  br label %20

38:                                               ; preds = %20
  store %struct.iio_chan_spec_ext_info* null, %struct.iio_chan_spec_ext_info** %3, align 8
  br label %39

39:                                               ; preds = %38, %32, %13
  %40 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %3, align 8
  ret %struct.iio_chan_spec_ext_info* %40
}

declare dso_local i32 @strcmp(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
