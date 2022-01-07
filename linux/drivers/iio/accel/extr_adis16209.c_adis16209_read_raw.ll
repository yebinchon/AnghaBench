; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16209.c_adis16209_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_adis16209.c_adis16209_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.adis = type { i32 }

@ADIS16209_ERROR_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_NANO = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@adis16209_addresses = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adis16209_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adis16209_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
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
  switch i64 %19, label %94 [
    i64 133, label %20
    i64 132, label %26
    i64 134, label %60
    i64 135, label %63
  ]

20:                                               ; preds = %5
  %21 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %22 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %23 = load i32, i32* @ADIS16209_ERROR_ACTIVE, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = call i32 @adis_single_conversion(%struct.iio_dev* %21, %struct.iio_chan_spec* %22, i32 %23, i32* %24)
  store i32 %25, i32* %6, align 4
  br label %97

26:                                               ; preds = %5
  %27 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %28 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %57 [
    i32 128, label %30
    i32 129, label %44
    i32 136, label %48
    i32 131, label %53
    i32 130, label %53
  ]

30:                                               ; preds = %26
  %31 = load i32*, i32** %9, align 8
  store i32 0, i32* %31, align 4
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %39 [
    i32 0, label %35
    i32 1, label %37
  ]

35:                                               ; preds = %30
  %36 = load i32*, i32** %10, align 8
  store i32 305180, i32* %36, align 4
  br label %42

37:                                               ; preds = %30
  %38 = load i32*, i32** %10, align 8
  store i32 610500, i32* %38, align 4
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %97

42:                                               ; preds = %37, %35
  %43 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %43, i32* %6, align 4
  br label %97

44:                                               ; preds = %26
  %45 = load i32*, i32** %9, align 8
  store i32 -470, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  store i32 0, i32* %46, align 4
  %47 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %47, i32* %6, align 4
  br label %97

48:                                               ; preds = %26
  %49 = load i32*, i32** %9, align 8
  store i32 0, i32* %49, align 4
  %50 = call i32 @IIO_G_TO_M_S_2(i32 244140)
  %51 = load i32*, i32** %10, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IIO_VAL_INT_PLUS_NANO, align 4
  store i32 %52, i32* %6, align 4
  br label %97

53:                                               ; preds = %26, %26
  %54 = load i32*, i32** %9, align 8
  store i32 0, i32* %54, align 4
  %55 = load i32*, i32** %10, align 8
  store i32 25000, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %56, i32* %6, align 4
  br label %97

57:                                               ; preds = %26
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %97

60:                                               ; preds = %5
  %61 = load i32*, i32** %9, align 8
  store i32 -1331, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %97

63:                                               ; preds = %5
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %68 [
    i32 136, label %67
  ]

67:                                               ; preds = %63
  store i32 14, i32* %14, align 4
  br label %71

68:                                               ; preds = %63
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %97

71:                                               ; preds = %67
  %72 = load i32**, i32*** @adis16209_addresses, align 8
  %73 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %74 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32*, i32** %72, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.adis*, %struct.adis** %12, align 8
  %81 = load i32, i32* %15, align 4
  %82 = call i32 @adis_read_reg_16(%struct.adis* %80, i32 %81, i32* %16)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %97

87:                                               ; preds = %71
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %14, align 4
  %90 = sub nsw i32 %89, 1
  %91 = call i32 @sign_extend32(i32 %88, i32 %90)
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %93, i32* %6, align 4
  br label %97

94:                                               ; preds = %5
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %94, %87, %85, %68, %60, %57, %53, %48, %44, %42, %39, %20
  %98 = load i32, i32* %6, align 4
  ret i32 %98
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
