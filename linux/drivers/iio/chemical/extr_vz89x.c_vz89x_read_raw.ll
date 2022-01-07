; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/chemical/extr_vz89x.c_vz89x_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64, i32, i32 }
%struct.vz89x_data = type { i32*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @vz89x_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vz89x_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vz89x_data*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.vz89x_data* @iio_priv(%struct.iio_dev* %14)
  store %struct.vz89x_data* %15, %struct.vz89x_data** %12, align 8
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %13, align 4
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %85 [
    i64 133, label %19
    i64 132, label %61
    i64 134, label %71
  ]

19:                                               ; preds = %5
  %20 = load %struct.vz89x_data*, %struct.vz89x_data** %12, align 8
  %21 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.vz89x_data*, %struct.vz89x_data** %12, align 8
  %24 = call i32 @vz89x_get_measurement(%struct.vz89x_data* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.vz89x_data*, %struct.vz89x_data** %12, align 8
  %26 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %87

32:                                               ; preds = %19
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %57 [
    i32 131, label %36
    i32 128, label %47
  ]

36:                                               ; preds = %32
  %37 = load %struct.vz89x_data*, %struct.vz89x_data** %12, align 8
  %38 = getelementptr inbounds %struct.vz89x_data, %struct.vz89x_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %41 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %9, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %46, i32* %6, align 4
  br label %87

47:                                               ; preds = %32
  %48 = load %struct.vz89x_data*, %struct.vz89x_data** %12, align 8
  %49 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @vz89x_get_resistance_reading(%struct.vz89x_data* %48, %struct.iio_chan_spec* %49, i32* %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %55, i32* %6, align 4
  br label %87

56:                                               ; preds = %47
  br label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %87

60:                                               ; preds = %56
  br label %85

61:                                               ; preds = %5
  %62 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %63 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %68 [
    i32 128, label %65
  ]

65:                                               ; preds = %61
  %66 = load i32*, i32** %9, align 8
  store i32 10, i32* %66, align 4
  %67 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %67, i32* %6, align 4
  br label %87

68:                                               ; preds = %61
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %6, align 4
  br label %87

71:                                               ; preds = %5
  %72 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %73 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %82 [
    i32 130, label %75
    i32 129, label %79
  ]

75:                                               ; preds = %71
  %76 = load i32*, i32** %9, align 8
  store i32 44, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 250000, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %78, i32* %6, align 4
  br label %87

79:                                               ; preds = %71
  %80 = load i32*, i32** %9, align 8
  store i32 -13, i32* %80, align 4
  %81 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %81, i32* %6, align 4
  br label %87

82:                                               ; preds = %71
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %87

85:                                               ; preds = %5, %60
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %82, %79, %75, %68, %65, %57, %54, %36, %30
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.vz89x_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vz89x_get_measurement(%struct.vz89x_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @vz89x_get_resistance_reading(%struct.vz89x_data*, %struct.iio_chan_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
