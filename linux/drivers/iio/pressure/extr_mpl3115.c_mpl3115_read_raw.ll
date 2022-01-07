; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_mpl3115.c_mpl3115_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.mpl3115_data = type { i32, i32 }

@MPL3115_OUT_PRESS = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@MPL3115_OUT_TEMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @mpl3115_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpl3115_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mpl3115_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.mpl3115_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.mpl3115_data* %16, %struct.mpl3115_data** %12, align 8
  store i32 0, i32* %13, align 4
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %112 [
    i64 131, label %18
    i64 130, label %97
  ]

18:                                               ; preds = %5
  %19 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %20 = call i32 @iio_device_claim_direct_mode(%struct.iio_dev* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %14, align 4
  store i32 %24, i32* %6, align 4
  br label %115

25:                                               ; preds = %18
  %26 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %27 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %90 [
    i32 129, label %29
    i32 128, label %59
  ]

29:                                               ; preds = %25
  %30 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %31 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %34 = call i32 @mpl3115_request(%struct.mpl3115_data* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %39 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %93

41:                                               ; preds = %29
  %42 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %43 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MPL3115_OUT_PRESS, align 4
  %46 = call i32 @i2c_smbus_read_i2c_block_data(i32 %44, i32 %45, i32 3, i32* %13)
  store i32 %46, i32* %14, align 4
  %47 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %48 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %14, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %93

53:                                               ; preds = %41
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @be32_to_cpu(i32 %54)
  %56 = ashr i32 %55, 12
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %58, i32* %14, align 4
  br label %93

59:                                               ; preds = %25
  %60 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %61 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %60, i32 0, i32 0
  %62 = call i32 @mutex_lock(i32* %61)
  %63 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %64 = call i32 @mpl3115_request(%struct.mpl3115_data* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %69 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  br label %93

71:                                               ; preds = %59
  %72 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %73 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @MPL3115_OUT_TEMP, align 4
  %76 = call i32 @i2c_smbus_read_i2c_block_data(i32 %74, i32 %75, i32 2, i32* %13)
  store i32 %76, i32* %14, align 4
  %77 = load %struct.mpl3115_data*, %struct.mpl3115_data** %12, align 8
  %78 = getelementptr inbounds %struct.mpl3115_data, %struct.mpl3115_data* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %14, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %93

83:                                               ; preds = %71
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @be32_to_cpu(i32 %84)
  %86 = ashr i32 %85, 20
  %87 = call i32 @sign_extend32(i32 %86, i32 11)
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %89, i32* %14, align 4
  br label %93

90:                                               ; preds = %25
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %90, %83, %82, %67, %53, %52, %37
  %94 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %95 = call i32 @iio_device_release_direct_mode(%struct.iio_dev* %94)
  %96 = load i32, i32* %14, align 4
  store i32 %96, i32* %6, align 4
  br label %115

97:                                               ; preds = %5
  %98 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %99 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %109 [
    i32 129, label %101
    i32 128, label %105
  ]

101:                                              ; preds = %97
  %102 = load i32*, i32** %9, align 8
  store i32 0, i32* %102, align 4
  %103 = load i32*, i32** %10, align 8
  store i32 250, i32* %103, align 4
  %104 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %104, i32* %6, align 4
  br label %115

105:                                              ; preds = %97
  %106 = load i32*, i32** %9, align 8
  store i32 0, i32* %106, align 4
  %107 = load i32*, i32** %10, align 8
  store i32 62500, i32* %107, align 4
  %108 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %108, i32* %6, align 4
  br label %115

109:                                              ; preds = %97
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %6, align 4
  br label %115

112:                                              ; preds = %5
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %109, %105, %101, %93, %23
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local %struct.mpl3115_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_device_claim_direct_mode(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mpl3115_request(%struct.mpl3115_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @i2c_smbus_read_i2c_block_data(i32, i32, i32, i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @iio_device_release_direct_mode(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
