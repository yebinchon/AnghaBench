; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/gyro/extr_itg3200_core.c_itg3200_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_TEMP = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@ITG3200_REG_DLPF = common dso_local global i32 0, align 4
@ITG3200_DLPF_CFG_MASK = common dso_local global i32 0, align 4
@ITG3200_REG_SAMPLE_RATE_DIV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @itg3200_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @itg3200_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i64, i64* %11, align 8
  switch i64 %15, label %71 [
    i64 130, label %16
    i64 128, label %25
    i64 131, label %38
    i64 129, label %41
  ]

16:                                               ; preds = %5
  %17 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %18 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call i32 @itg3200_read_reg_s16(%struct.iio_dev* %20, i32 %21, i32* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %5
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IIO_TEMP, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32*, i32** %10, align 8
  store i32 3571428, i32* %33, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  store i32 1214142, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %37, i32* %6, align 4
  br label %74

38:                                               ; preds = %5
  %39 = load i32*, i32** %9, align 8
  store i32 23000, i32* %39, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %74

41:                                               ; preds = %5
  %42 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %43 = load i32, i32* @ITG3200_REG_DLPF, align 4
  %44 = call i32 @itg3200_read_reg_8(%struct.iio_dev* %42, i32 %43, i32* %14)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %74

49:                                               ; preds = %41
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @ITG3200_DLPF_CFG_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1000, i32 8000
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  %57 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %58 = load i32, i32* @ITG3200_REG_SAMPLE_RATE_DIV, align 4
  %59 = call i32 @itg3200_read_reg_8(%struct.iio_dev* %57, i32 %58, i32* %14)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %6, align 4
  br label %74

64:                                               ; preds = %49
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sdiv i32 %68, %66
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %6, align 4
  br label %74

71:                                               ; preds = %5
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %64, %62, %47, %38, %36, %16
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @itg3200_read_reg_s16(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @itg3200_read_reg_8(%struct.iio_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
