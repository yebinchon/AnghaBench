; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tcs3472.c_tcs3472_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tcs3472_data = type { i32, i32, i64, i32, i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@tcs3472_intr_pers = common dso_local global i32* null, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @tcs3472_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcs3472_read_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.tcs3472_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %19 = call %struct.tcs3472_data* @iio_priv(%struct.iio_dev* %18)
  store %struct.tcs3472_data* %19, %struct.tcs3472_data** %15, align 8
  %20 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %21 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %20, i32 0, i32 3
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %62 [
    i32 128, label %24
    i32 129, label %40
  ]

24:                                               ; preds = %7
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %30 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %34 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  %38 = load i32*, i32** %13, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %39, i32* %16, align 4
  br label %65

40:                                               ; preds = %7
  %41 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %42 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 256, %43
  %45 = mul nsw i32 %44, 2400
  %46 = load i32*, i32** @tcs3472_intr_pers, align 8
  %47 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %48 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %45, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* @USEC_PER_SEC, align 4
  %55 = udiv i32 %53, %54
  %56 = load i32*, i32** %13, align 8
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* @USEC_PER_SEC, align 4
  %59 = urem i32 %57, %58
  %60 = load i32*, i32** %14, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %61, i32* %16, align 4
  br label %65

62:                                               ; preds = %7
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %16, align 4
  br label %65

65:                                               ; preds = %62, %40, %36
  %66 = load %struct.tcs3472_data*, %struct.tcs3472_data** %15, align 8
  %67 = getelementptr inbounds %struct.tcs3472_data, %struct.tcs3472_data* %66, i32 0, i32 3
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* %16, align 4
  ret i32 %69
}

declare dso_local %struct.tcs3472_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
