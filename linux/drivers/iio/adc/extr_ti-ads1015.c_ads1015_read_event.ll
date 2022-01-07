; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_read_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-ads1015.c_ads1015_read_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i64 }
%struct.ads1015_data = type { i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@IIO_EV_DIR_RISING = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@ads1015_comp_queue = common dso_local global i32* null, align 8
@USEC_PER_SEC = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @ads1015_read_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ads1015_read_event(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.iio_dev*, align 8
  %9 = alloca %struct.iio_chan_spec*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ads1015_data*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %8, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %8, align 8
  %21 = call %struct.ads1015_data* @iio_priv(%struct.iio_dev* %20)
  store %struct.ads1015_data* %21, %struct.ads1015_data** %15, align 8
  %22 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %23 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load i32, i32* %12, align 4
  switch i32 %25, label %97 [
    i32 128, label %26
    i32 129, label %54
  ]

26:                                               ; preds = %7
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @IIO_EV_DIR_RISING, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %26
  %31 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %32 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %50

40:                                               ; preds = %26
  %41 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %42 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %45 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  br label %50

50:                                               ; preds = %40, %30
  %51 = phi i32 [ %39, %30 ], [ %49, %40 ]
  %52 = load i32*, i32** %13, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %16, align 4
  br label %100

54:                                               ; preds = %7
  %55 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %56 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %59 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %19, align 4
  %64 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %65 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %9, align 8
  %68 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %17, align 4
  %73 = load i32*, i32** @ads1015_comp_queue, align 8
  %74 = load i32, i32* %17, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @USEC_PER_SEC, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %81 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %19, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = sdiv i32 %79, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* @USEC_PER_SEC, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32*, i32** %13, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* @USEC_PER_SEC, align 4
  %94 = srem i32 %92, %93
  %95 = load i32*, i32** %14, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %96, i32* %16, align 4
  br label %100

97:                                               ; preds = %7
  %98 = load i32, i32* @EINVAL, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %16, align 4
  br label %100

100:                                              ; preds = %97, %54, %50
  %101 = load %struct.ads1015_data*, %struct.ads1015_data** %15, align 8
  %102 = getelementptr inbounds %struct.ads1015_data, %struct.ads1015_data* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %16, align 4
  ret i32 %104
}

declare dso_local %struct.ads1015_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
