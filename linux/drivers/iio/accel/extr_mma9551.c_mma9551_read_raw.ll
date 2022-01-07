; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_mma9551.c_mma9551_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mma9551_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mma9551_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mma9551_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mma9551_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mma9551_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mma9551_data* %15, %struct.mma9551_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %71 [
    i64 131, label %17
    i64 130, label %38
    i64 129, label %60
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %35 [
    i32 128, label %21
  ]

21:                                               ; preds = %17
  %22 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %23 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %26 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @mma9551_read_incli_chan(i32 %27, %struct.iio_chan_spec* %28, i32* %29)
  store i32 %30, i32* %13, align 4
  %31 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %32 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %13, align 4
  store i32 %34, i32* %6, align 4
  br label %74

35:                                               ; preds = %17
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %74

38:                                               ; preds = %5
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  switch i32 %41, label %57 [
    i32 132, label %42
  ]

42:                                               ; preds = %38
  %43 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %44 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %47 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = call i32 @mma9551_read_accel_chan(i32 %48, %struct.iio_chan_spec* %49, i32* %50, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.mma9551_data*, %struct.mma9551_data** %12, align 8
  %54 = getelementptr inbounds %struct.mma9551_data, %struct.mma9551_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %74

57:                                               ; preds = %38
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %74

60:                                               ; preds = %5
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %68 [
    i32 132, label %64
  ]

64:                                               ; preds = %60
  %65 = load i32*, i32** %9, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = call i32 @mma9551_read_accel_scale(i32* %65, i32* %66)
  store i32 %67, i32* %6, align 4
  br label %74

68:                                               ; preds = %60
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %68, %64, %57, %42, %35, %21
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.mma9551_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mma9551_read_incli_chan(i32, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mma9551_read_accel_chan(i32, %struct.iio_chan_spec*, i32*, i32*) #1

declare dso_local i32 @mma9551_read_accel_scale(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
