; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_opt3001.c_opt3001_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.opt3001 = type { i64, i32 }

@OPT3001_CONFIGURATION_M_CONTINUOUS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IIO_LIGHT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @opt3001_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opt3001_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.opt3001*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.opt3001* @iio_priv(%struct.iio_dev* %14)
  store %struct.opt3001* %15, %struct.opt3001** %12, align 8
  %16 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %17 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OPT3001_CONFIGURATION_M_CONTINUOUS, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %56

24:                                               ; preds = %5
  %25 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %26 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IIO_LIGHT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %56

33:                                               ; preds = %24
  %34 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %35 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %34, i32 0, i32 1
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load i64, i64* %11, align 8
  switch i64 %37, label %48 [
    i64 128, label %38
    i64 129, label %43
  ]

38:                                               ; preds = %33
  %39 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @opt3001_get_lux(%struct.opt3001* %39, i32* %40, i32* %41)
  store i32 %42, i32* %13, align 4
  br label %51

43:                                               ; preds = %33
  %44 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @opt3001_get_int_time(%struct.opt3001* %44, i32* %45, i32* %46)
  store i32 %47, i32* %13, align 4
  br label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %48, %43, %38
  %52 = load %struct.opt3001*, %struct.opt3001** %12, align 8
  %53 = getelementptr inbounds %struct.opt3001, %struct.opt3001* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %13, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %51, %30, %21
  %57 = load i32, i32* %6, align 4
  ret i32 %57
}

declare dso_local %struct.opt3001* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @opt3001_get_lux(%struct.opt3001*, i32*, i32*) #1

declare dso_local i32 @opt3001_get_int_time(%struct.opt3001*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
