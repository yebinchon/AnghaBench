; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mux = type { i32, %struct.iio_chan_spec* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mux_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mux*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mux* @iio_priv(%struct.iio_dev* %15)
  store %struct.mux* %16, %struct.mux** %12, align 8
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = load %struct.mux*, %struct.mux** %12, align 8
  %19 = getelementptr inbounds %struct.mux, %struct.mux* %18, i32 0, i32 1
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %19, align 8
  %21 = ptrtoint %struct.iio_chan_spec* %17 to i64
  %22 = ptrtoint %struct.iio_chan_spec* %20 to i64
  %23 = sub i64 %21, %22
  %24 = sdiv exact i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.mux*, %struct.mux** %12, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @iio_mux_select(%struct.mux* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* %14, align 4
  store i32 %32, i32* %6, align 4
  br label %55

33:                                               ; preds = %5
  %34 = load i64, i64* %11, align 8
  switch i64 %34, label %48 [
    i64 129, label %35
    i64 128, label %41
  ]

35:                                               ; preds = %33
  %36 = load %struct.mux*, %struct.mux** %12, align 8
  %37 = getelementptr inbounds %struct.mux, %struct.mux* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @iio_read_channel_raw(i32 %38, i32* %39)
  store i32 %40, i32* %14, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.mux*, %struct.mux** %12, align 8
  %43 = getelementptr inbounds %struct.mux, %struct.mux* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @iio_read_channel_scale(i32 %44, i32* %45, i32* %46)
  store i32 %47, i32* %14, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %51

51:                                               ; preds = %48, %41, %35
  %52 = load %struct.mux*, %struct.mux** %12, align 8
  %53 = call i32 @iio_mux_deselect(%struct.mux* %52)
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.mux* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_mux_select(%struct.mux*, i32) #1

declare dso_local i32 @iio_read_channel_raw(i32, i32*) #1

declare dso_local i32 @iio_read_channel_scale(i32, i32*, i32*) #1

declare dso_local i32 @iio_mux_deselect(%struct.mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
