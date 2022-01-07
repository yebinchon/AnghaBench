; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4000.c_vcnl4000_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vcnl4000_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.vcnl4000_data*, i32*)*, i32 (%struct.vcnl4000_data*, i32*)* }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vcnl4000_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4000_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vcnl4000_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.vcnl4000_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.vcnl4000_data* %15, %struct.vcnl4000_data** %13, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %69 [
    i64 131, label %17
    i64 130, label %54
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %51 [
    i32 129, label %21
    i32 128, label %36
  ]

21:                                               ; preds = %17
  %22 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %13, align 8
  %23 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.vcnl4000_data*, i32*)*, i32 (%struct.vcnl4000_data*, i32*)** %25, align 8
  %27 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %13, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i32 %26(%struct.vcnl4000_data* %27, i32* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %72

34:                                               ; preds = %21
  %35 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %35, i32* %6, align 4
  br label %72

36:                                               ; preds = %17
  %37 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %13, align 8
  %38 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.vcnl4000_data*, i32*)*, i32 (%struct.vcnl4000_data*, i32*)** %40, align 8
  %42 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %13, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 %41(%struct.vcnl4000_data* %42, i32* %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %72

49:                                               ; preds = %36
  %50 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %50, i32* %6, align 4
  br label %72

51:                                               ; preds = %17
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %6, align 4
  br label %72

54:                                               ; preds = %5
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %72

62:                                               ; preds = %54
  %63 = load i32*, i32** %9, align 8
  store i32 0, i32* %63, align 4
  %64 = load %struct.vcnl4000_data*, %struct.vcnl4000_data** %13, align 8
  %65 = getelementptr inbounds %struct.vcnl4000_data, %struct.vcnl4000_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32*, i32** %10, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %68, i32* %6, align 4
  br label %72

69:                                               ; preds = %5
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %69, %62, %59, %51, %49, %47, %34, %32
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.vcnl4000_data* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
