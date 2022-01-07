; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/pressure/extr_bmp280-core.c_bmp280_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.bmp280_data = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.bmp280_data*, i32*, i32*)*, i32 (%struct.bmp280_data*, i32*, i32*)*, i32 (%struct.bmp280_data*, i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @bmp280_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bmp280_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca %struct.iio_chan_spec*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bmp280_data*, align 8
  store %struct.iio_dev* %0, %struct.iio_dev** %6, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %14 = call %struct.bmp280_data* @iio_priv(%struct.iio_dev* %13)
  store %struct.bmp280_data* %14, %struct.bmp280_data** %12, align 8
  %15 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %16 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pm_runtime_get_sync(i32 %17)
  %19 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %20 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %19, i32 0, i32 4
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load i64, i64* %10, align 8
  switch i64 %22, label %89 [
    i64 131, label %23
    i64 132, label %60
  ]

23:                                               ; preds = %5
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %56 [
    i32 130, label %27
    i32 129, label %37
    i32 128, label %47
  ]

27:                                               ; preds = %23
  %28 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %29 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.bmp280_data*, i32*, i32*)*, i32 (%struct.bmp280_data*, i32*, i32*)** %31, align 8
  %33 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 %32(%struct.bmp280_data* %33, i32* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  br label %59

37:                                               ; preds = %23
  %38 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %39 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.bmp280_data*, i32*, i32*)*, i32 (%struct.bmp280_data*, i32*, i32*)** %41, align 8
  %43 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 %42(%struct.bmp280_data* %43, i32* %44, i32* %45)
  store i32 %46, i32* %11, align 4
  br label %59

47:                                               ; preds = %23
  %48 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %49 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %48, i32 0, i32 5
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32 (%struct.bmp280_data*, i32*)*, i32 (%struct.bmp280_data*, i32*)** %51, align 8
  %53 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 %52(%struct.bmp280_data* %53, i32* %54)
  store i32 %55, i32* %11, align 4
  br label %59

56:                                               ; preds = %23
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %56, %47, %37, %27
  br label %92

60:                                               ; preds = %5
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %7, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %85 [
    i32 130, label %64
    i32 129, label %71
    i32 128, label %78
  ]

64:                                               ; preds = %60
  %65 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %66 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 1, %67
  %69 = load i32*, i32** %8, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %70, i32* %11, align 4
  br label %88

71:                                               ; preds = %60
  %72 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %73 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 1, %74
  %76 = load i32*, i32** %8, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %77, i32* %11, align 4
  br label %88

78:                                               ; preds = %60
  %79 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %80 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %84, i32* %11, align 4
  br label %88

85:                                               ; preds = %60
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %11, align 4
  br label %88

88:                                               ; preds = %85, %78, %71, %64
  br label %92

89:                                               ; preds = %5
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %89, %88, %59
  %93 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %94 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %93, i32 0, i32 4
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %97 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_runtime_mark_last_busy(i32 %98)
  %100 = load %struct.bmp280_data*, %struct.bmp280_data** %12, align 8
  %101 = getelementptr inbounds %struct.bmp280_data, %struct.bmp280_data* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_put_autosuspend(i32 %102)
  %104 = load i32, i32* %11, align 4
  ret i32 %104
}

declare dso_local %struct.bmp280_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
