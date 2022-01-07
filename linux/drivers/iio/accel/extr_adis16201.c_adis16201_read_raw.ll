; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16201.c_adis16201_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16201.c_adis16201_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis = type { i32 }

@ADIS16201_ERROR_ACTIVE = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@adis16201_addresses = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16201_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16201_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adis*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %18 = call %struct.adis* @iio_priv(%struct.iio_dev* %17)
  store %struct.adis* %18, %struct.adis** %12, align 8
  %19 = load i64, i64* %11, align 8
  switch i64 %19, label %92 [
    i64 132, label %20
    i64 131, label %26
    i64 133, label %59
    i64 134, label %62
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = load i32, i32* @ADIS16201_ERROR_ACTIVE, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @adis_single_conversion(%struct.iio_dev* %21, %struct.iio_chan_spec* %22, i32 %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %95

26:                                               ; preds = %5
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %56 [
    i32 128, label %30
    i32 129, label %43
    i32 135, label %47
    i32 130, label %52
  ]

30:                                               ; preds = %26
  %31 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %32 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 220000, i32* %37, align 4
  br label %41

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  store i32 610000, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %35
  %42 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %42, i32* %6, align 4
  br label %95

43:                                               ; preds = %26
  %44 = load i32*, i32** %9, align 8
  store i32 -470, i32* %44, align 4
  %45 = load i32*, i32** %10, align 8
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %46, i32* %6, align 4
  br label %95

47:                                               ; preds = %26
  %48 = load i32*, i32** %9, align 8
  store i32 0, i32* %48, align 4
  %49 = call i32 @IIO_G_TO_M_S_2(i32 462400)
  %50 = load i32*, i32** %10, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %51, i32* %6, align 4
  br label %95

52:                                               ; preds = %26
  %53 = load i32*, i32** %9, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %10, align 8
  store i32 100000, i32* %54, align 4
  %55 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %55, i32* %6, align 4
  br label %95

56:                                               ; preds = %26
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %6, align 4
  br label %95

59:                                               ; preds = %5
  %60 = load i32*, i32** %9, align 8
  store i32 -1331, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %6, align 4
  br label %95

62:                                               ; preds = %5
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %68 [
    i32 135, label %66
    i32 130, label %67
  ]

66:                                               ; preds = %62
  store i32 12, i32* %14, align 4
  br label %71

67:                                               ; preds = %62
  store i32 9, i32* %14, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %95

71:                                               ; preds = %67, %66
  %72 = load i32*, i32** @adis16201_addresses, align 8
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %15, align 4
  %78 = load %struct.adis*, %struct.adis** %12, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @adis_read_reg_16(%struct.adis* %78, i32 %79, i32* %16)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %6, align 4
  br label %95

85:                                               ; preds = %71
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call i32 @sign_extend32(i32 %86, i32 %88)
  %90 = load i32*, i32** %9, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %91, i32* %6, align 4
  br label %95

92:                                               ; preds = %5
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %92, %85, %83, %68, %59, %56, %52, %47, %43, %41, %20
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.adis* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @adis_single_conversion(%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32*) #1

declare dso_local i32 @IIO_G_TO_M_S_2(i32) #1

declare dso_local i32 @adis_read_reg_16(%struct.adis*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
