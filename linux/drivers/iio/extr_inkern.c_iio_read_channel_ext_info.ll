; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_ext_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/extr_inkern.c_iio_read_channel_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_channel = type { i32, i32 }
%struct.iio_chan_spec_ext_info = type { i32, i32 (i32, i32, i32, i8*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iio_read_channel_ext_info(%struct.iio_channel* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iio_chan_spec_ext_info*, align 8
  store %struct.iio_channel* %0, %struct.iio_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.iio_chan_spec_ext_info* @iio_lookup_ext_info(%struct.iio_channel* %9, i8* %10)
  store %struct.iio_chan_spec_ext_info* %11, %struct.iio_chan_spec_ext_info** %8, align 8
  %12 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %13 = icmp ne %struct.iio_chan_spec_ext_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %32

17:                                               ; preds = %3
  %18 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, i32, i8*)*, i32 (i32, i32, i32, i8*)** %19, align 8
  %21 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %22 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.iio_chan_spec_ext_info*, %struct.iio_chan_spec_ext_info** %8, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec_ext_info, %struct.iio_chan_spec_ext_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iio_channel*, %struct.iio_channel** %5, align 8
  %28 = getelementptr inbounds %struct.iio_channel, %struct.iio_channel* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 %20(i32 %23, i32 %26, i32 %29, i8* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %17, %14
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local %struct.iio_chan_spec_ext_info* @iio_lookup_ext_info(%struct.iio_channel*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
