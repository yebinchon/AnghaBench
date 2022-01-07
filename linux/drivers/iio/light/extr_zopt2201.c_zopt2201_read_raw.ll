; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_zopt2201.c_zopt2201_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.zopt2201_data = type { i64, i64 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@zopt2201_resolution = common dso_local global %struct.TYPE_4__* null, align 8
@zopt2201_gain_uvb = common dso_local global %struct.TYPE_5__* null, align 8
@zopt2201_gain_als = common dso_local global %struct.TYPE_6__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @zopt2201_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zopt2201_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.zopt2201_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.zopt2201_data* @iio_priv(%struct.iio_dev* %15)
  store %struct.zopt2201_data* %16, %struct.zopt2201_data** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %125 [
    i64 131, label %18
    i64 132, label %32
    i64 130, label %62
    i64 133, label %114
  ]

18:                                               ; preds = %5
  %19 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @zopt2201_read(%struct.zopt2201_data* %19, i32 %22)
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %14, align 4
  store i32 %27, i32* %6, align 4
  br label %128

28:                                               ; preds = %18
  %29 = load i32, i32* %14, align 4
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %31, i32* %6, align 4
  br label %128

32:                                               ; preds = %5
  %33 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %34 = call i32 @zopt2201_read(%struct.zopt2201_data* %33, i32 128)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %14, align 4
  store i32 %38, i32* %6, align 4
  br label %128

39:                                               ; preds = %32
  %40 = load i32, i32* %14, align 4
  %41 = mul nsw i32 %40, 18
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zopt2201_resolution, align 8
  %43 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %44 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 20, %48
  %50 = shl i32 1, %49
  %51 = mul nsw i32 %41, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zopt2201_gain_uvb, align 8
  %53 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %54 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %51, %58
  %60 = load i32*, i32** %9, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %61, i32* %6, align 4
  br label %128

62:                                               ; preds = %5
  %63 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %64 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %84 [
    i32 129, label %66
    i32 128, label %75
  ]

66:                                               ; preds = %62
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zopt2201_gain_als, align 8
  %68 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %69 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  br label %87

75:                                               ; preds = %62
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @zopt2201_gain_uvb, align 8
  %77 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %78 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %87

84:                                               ; preds = %62
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %6, align 4
  br label %128

87:                                               ; preds = %75, %66
  %88 = load i32*, i32** %10, align 8
  store i32 1000000, i32* %88, align 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zopt2201_resolution, align 8
  %90 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %91 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %95, 13
  %97 = shl i32 1, %96
  %98 = load i32*, i32** %10, align 8
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, %97
  store i32 %100, i32* %98, align 4
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 1000000
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %10, align 8
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @div_s64(i32 %105, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %10, align 8
  %111 = call i32 @div_s64_rem(i32 %109, i32 1000000, i32* %110)
  %112 = load i32*, i32** %9, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %113, i32* %6, align 4
  br label %128

114:                                              ; preds = %5
  %115 = load i32*, i32** %9, align 8
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** @zopt2201_resolution, align 8
  %117 = load %struct.zopt2201_data*, %struct.zopt2201_data** %12, align 8
  %118 = getelementptr inbounds %struct.zopt2201_data, %struct.zopt2201_data* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %124, i32* %6, align 4
  br label %128

125:                                              ; preds = %5
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %125, %114, %87, %84, %39, %37, %28, %26
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local %struct.zopt2201_data* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @zopt2201_read(%struct.zopt2201_data*, i32) #1

declare dso_local i32 @div_s64(i32, i32) #1

declare dso_local i32 @div_s64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
