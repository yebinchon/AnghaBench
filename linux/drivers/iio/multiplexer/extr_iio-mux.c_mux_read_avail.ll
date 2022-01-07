; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/multiplexer/extr_iio-mux.c_mux_read_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mux = type { i32, %struct.iio_chan_spec* }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32**, i32*, i32*, i64)* @mux_read_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mux_read_avail(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32** %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mux*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %18 = call %struct.mux* @iio_priv(%struct.iio_dev* %17)
  store %struct.mux* %18, %struct.mux** %14, align 8
  %19 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %20 = load %struct.mux*, %struct.mux** %14, align 8
  %21 = getelementptr inbounds %struct.mux, %struct.mux* %20, i32 0, i32 1
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %21, align 8
  %23 = ptrtoint %struct.iio_chan_spec* %19 to i64
  %24 = ptrtoint %struct.iio_chan_spec* %22 to i64
  %25 = sub i64 %23, %24
  %26 = sdiv exact i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load %struct.mux*, %struct.mux** %14, align 8
  %29 = load i32, i32* %15, align 4
  %30 = call i32 @iio_mux_select(%struct.mux* %28, i32 %29)
  store i32 %30, i32* %16, align 4
  %31 = load i32, i32* %16, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* %16, align 4
  store i32 %34, i32* %7, align 4
  br label %53

35:                                               ; preds = %6
  %36 = load i64, i64* %13, align 8
  switch i64 %36, label %46 [
    i64 128, label %37
  ]

37:                                               ; preds = %35
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  %39 = load i32*, i32** %11, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.mux*, %struct.mux** %14, align 8
  %41 = getelementptr inbounds %struct.mux, %struct.mux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32**, i32*** %10, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = call i32 @iio_read_avail_channel_raw(i32 %42, i32** %43, i32* %44)
  store i32 %45, i32* %16, align 4
  br label %49

46:                                               ; preds = %35
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %46, %37
  %50 = load %struct.mux*, %struct.mux** %14, align 8
  %51 = call i32 @iio_mux_deselect(%struct.mux* %50)
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %49, %33
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.mux* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_mux_select(%struct.mux*, i32) #1

declare dso_local i32 @iio_read_avail_channel_raw(i32, i32**, i32*) #1

declare dso_local i32 @iio_mux_deselect(%struct.mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
