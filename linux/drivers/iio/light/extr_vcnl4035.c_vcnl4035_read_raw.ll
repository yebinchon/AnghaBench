; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_vcnl4035.c_vcnl4035_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.vcnl4035_data = type { i32, i32 }

@VCNL4035_ALS_DATA = common dso_local global i32 0, align 4
@VCNL4035_WHITE_DATA = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vcnl4035_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcnl4035_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vcnl4035_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.vcnl4035_data* @iio_priv(%struct.iio_dev* %16)
  store %struct.vcnl4035_data* %17, %struct.vcnl4035_data** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %90 [
    i64 129, label %19
    i64 130, label %59
    i64 128, label %73
  ]

19:                                               ; preds = %5
  %20 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %21 = call i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data* %20, i32 1)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %13, align 4
  store i32 %25, i32* %6, align 4
  br label %93

26:                                               ; preds = %19
  %27 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %28 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %33 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @VCNL4035_ALS_DATA, align 4
  store i32 %37, i32* %15, align 4
  br label %40

38:                                               ; preds = %31
  %39 = load i32, i32* @VCNL4035_WHITE_DATA, align 4
  store i32 %39, i32* %15, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %42 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @regmap_read(i32 %43, i32 %44, i32* %14)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %46)
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %14, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %40
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %57 = call i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data* %56, i32 0)
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %93

59:                                               ; preds = %5
  %60 = load i32*, i32** %9, align 8
  store i32 50, i32* %60, align 4
  %61 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %62 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %67 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %68, 100
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %65, %59
  %72 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %72, i32* %6, align 4
  br label %93

73:                                               ; preds = %5
  %74 = load i32*, i32** %9, align 8
  store i32 64, i32* %74, align 4
  %75 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %76 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %73
  %80 = load i32*, i32** %10, align 8
  store i32 1000, i32* %80, align 4
  br label %88

81:                                               ; preds = %73
  %82 = load %struct.vcnl4035_data*, %struct.vcnl4035_data** %12, align 8
  %83 = getelementptr inbounds %struct.vcnl4035_data, %struct.vcnl4035_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 2
  %86 = mul nsw i32 %85, 1000
  %87 = load i32*, i32** %10, align 8
  store i32 %86, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %79
  %89 = load i32, i32* @IIO_VAL_FRACTIONAL, align 4
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %5
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %88, %71, %55, %24
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.vcnl4035_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @vcnl4035_set_pm_runtime_state(%struct.vcnl4035_data*, i32) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
