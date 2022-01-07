; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mlx90632_data = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mlx90632_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx90632_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.mlx90632_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.mlx90632_data* %15, %struct.mlx90632_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %61 [
    i64 130, label %17
    i64 131, label %44
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %19 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %41 [
    i32 129, label %21
    i32 128, label %31
  ]

21:                                               ; preds = %17
  %22 = load %struct.mlx90632_data*, %struct.mlx90632_data** %12, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @mlx90632_calc_ambient_dsp105(%struct.mlx90632_data* %22, i32* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %13, align 4
  store i32 %28, i32* %6, align 4
  br label %64

29:                                               ; preds = %21
  %30 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %30, i32* %6, align 4
  br label %64

31:                                               ; preds = %17
  %32 = load %struct.mlx90632_data*, %struct.mlx90632_data** %12, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @mlx90632_calc_object_dsp105(%struct.mlx90632_data* %32, i32* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %64

39:                                               ; preds = %31
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %64

41:                                               ; preds = %17
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %64

44:                                               ; preds = %5
  %45 = load %struct.mlx90632_data*, %struct.mlx90632_data** %12, align 8
  %46 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1000
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32*, i32** %9, align 8
  store i32 1, i32* %50, align 4
  %51 = load i32*, i32** %10, align 8
  store i32 0, i32* %51, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load i32*, i32** %9, align 8
  store i32 0, i32* %53, align 4
  %54 = load %struct.mlx90632_data*, %struct.mlx90632_data** %12, align 8
  %55 = getelementptr inbounds %struct.mlx90632_data, %struct.mlx90632_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load i32*, i32** %10, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %60, i32* %6, align 4
  br label %64

61:                                               ; preds = %5
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %59, %41, %39, %37, %29, %27
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local %struct.mlx90632_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mlx90632_calc_ambient_dsp105(%struct.mlx90632_data*, i32*) #1

declare dso_local i32 @mlx90632_calc_object_dsp105(%struct.mlx90632_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
