; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_ext_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_ext_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mux = type { %struct.TYPE_2__*, i32, %struct.iio_chan_spec* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iio_dev*, i64, %struct.iio_chan_spec*, i8*)* @mux_read_ext_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mux_read_ext_info(%struct.iio_dev* %0, i64 %1, %struct.iio_chan_spec* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mux*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.iio_chan_spec* %2, %struct.iio_chan_spec** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.mux* @iio_priv(%struct.iio_dev* %13)
  store %struct.mux* %14, %struct.mux** %10, align 8
  %15 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %16 = load %struct.mux*, %struct.mux** %10, align 8
  %17 = getelementptr inbounds %struct.mux, %struct.mux* %16, i32 0, i32 2
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %17, align 8
  %19 = ptrtoint %struct.iio_chan_spec* %15 to i64
  %20 = ptrtoint %struct.iio_chan_spec* %18 to i64
  %21 = sub i64 %19, %20
  %22 = sdiv exact i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load %struct.mux*, %struct.mux** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @iio_mux_select(%struct.mux* %24, i32 %25)
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i64, i64* %12, align 8
  store i64 %30, i64* %5, align 8
  br label %47

31:                                               ; preds = %4
  %32 = load %struct.mux*, %struct.mux** %10, align 8
  %33 = getelementptr inbounds %struct.mux, %struct.mux* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mux*, %struct.mux** %10, align 8
  %36 = getelementptr inbounds %struct.mux, %struct.mux* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = call i64 @iio_read_channel_ext_info(i32 %34, i32 %41, i8* %42)
  store i64 %43, i64* %12, align 8
  %44 = load %struct.mux*, %struct.mux** %10, align 8
  %45 = call i32 @iio_mux_deselect(%struct.mux* %44)
  %46 = load i64, i64* %12, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %31, %29
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local %struct.mux* @iio_priv(%struct.iio_dev*) #1

declare dso_local i64 @iio_mux_select(%struct.mux*, i32) #1

declare dso_local i64 @iio_read_channel_ext_info(i32, i32, i8*) #1

declare dso_local i32 @iio_mux_deselect(%struct.mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
