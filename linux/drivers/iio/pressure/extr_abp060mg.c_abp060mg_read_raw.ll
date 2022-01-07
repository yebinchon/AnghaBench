; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_abp060mg.c_abp060mg_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.abp_state = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@ABP060MG_NUM_COUNTS = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @abp060mg_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @abp060mg_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.abp_state*, align 8
  %12 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.abp_state* @iio_priv(%struct.iio_dev* %13)
  store %struct.abp_state* %14, %struct.abp_state** %11, align 8
  %15 = load %struct.abp_state*, %struct.abp_state** %11, align 8
  %16 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %15, i32 0, i32 2
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i64, i64* %10, align 8
  switch i64 %18, label %38 [
    i64 129, label %19
    i64 130, label %23
    i64 128, label %29
  ]

19:                                               ; preds = %5
  %20 = load %struct.abp_state*, %struct.abp_state** %11, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @abp060mg_get_measurement(%struct.abp_state* %20, i32* %21)
  store i32 %22, i32* %12, align 4
  br label %41

23:                                               ; preds = %5
  %24 = load %struct.abp_state*, %struct.abp_state** %11, align 8
  %25 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %28, i32* %12, align 4
  br label %41

29:                                               ; preds = %5
  %30 = load %struct.abp_state*, %struct.abp_state** %11, align 8
  %31 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @ABP060MG_NUM_COUNTS, align 4
  %35 = mul nsw i32 %34, 1000
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %37, i32* %12, align 4
  br label %41

38:                                               ; preds = %5
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %38, %29, %23, %19
  %42 = load %struct.abp_state*, %struct.abp_state** %11, align 8
  %43 = getelementptr inbounds %struct.abp_state, %struct.abp_state* %42, i32 0, i32 2
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

declare dso_local %struct.abp_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @abp060mg_get_measurement(%struct.abp_state*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
