; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/accel/extr_bma180.c_bma180_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bma180_data = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bma180_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bma180_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bma180_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.bma180_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.bma180_data* %15, %struct.bma180_data** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %83 [
    i64 130, label %17
    i64 132, label %57
    i64 129, label %63
    i64 131, label %80
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %6, align 4
  br label %86

24:                                               ; preds = %17
  %25 = load %struct.bma180_data*, %struct.bma180_data** %12, align 8
  %26 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %25, i32 0, i32 2
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.bma180_data*, %struct.bma180_data** %12, align 8
  %29 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %30 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bma180_get_data_reg(%struct.bma180_data* %28, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load %struct.bma180_data*, %struct.bma180_data** %12, align 8
  %34 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %33, i32 0, i32 2
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %37 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %36)
  %38 = load i32, i32* %13, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %13, align 4
  store i32 %41, i32* %6, align 4
  br label %86

42:                                               ; preds = %24
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %43, %47
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sub nsw i32 %52, 1
  %54 = call i32 @sign_extend32(i32 %48, i32 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %6, align 4
  br label %86

57:                                               ; preds = %5
  %58 = load %struct.bma180_data*, %struct.bma180_data** %12, align 8
  %59 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %9, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %62, i32* %6, align 4
  br label %86

63:                                               ; preds = %5
  %64 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %65 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %77 [
    i32 133, label %67
    i32 128, label %74
  ]

67:                                               ; preds = %63
  %68 = load i32*, i32** %9, align 8
  store i32 0, i32* %68, align 4
  %69 = load %struct.bma180_data*, %struct.bma180_data** %12, align 8
  %70 = getelementptr inbounds %struct.bma180_data, %struct.bma180_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %10, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %73, i32* %6, align 4
  br label %86

74:                                               ; preds = %63
  %75 = load i32*, i32** %9, align 8
  store i32 500, i32* %75, align 4
  %76 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %76, i32* %6, align 4
  br label %86

77:                                               ; preds = %63
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %6, align 4
  br label %86

80:                                               ; preds = %5
  %81 = load i32*, i32** %9, align 8
  store i32 48, i32* %81, align 4
  %82 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %82, i32* %6, align 4
  br label %86

83:                                               ; preds = %5
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %83, %80, %77, %74, %67, %57, %42, %40, %22
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.bma180_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bma180_get_data_reg(%struct.bma180_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
