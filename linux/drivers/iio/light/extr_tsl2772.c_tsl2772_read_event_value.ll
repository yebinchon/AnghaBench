; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_event_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_tsl2772.c_tsl2772_read_event_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.tsl2772_chip = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@IIO_INTENSITY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tsl2772_int_time_avail = common dso_local global i32** null, align 8
@IIO_VAL_INT_PLUS_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32, i32, i32, i32*, i32*)* @tsl2772_read_event_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsl2772_read_event_value(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iio_dev*, align 8
  %10 = alloca %struct.iio_chan_spec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.tsl2772_chip*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %9, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load %struct.iio_dev*, %struct.iio_dev** %9, align 8
  %21 = call %struct.tsl2772_chip* @iio_priv(%struct.iio_dev* %20)
  store %struct.tsl2772_chip* %21, %struct.tsl2772_chip** %16, align 8
  %22 = load i32, i32* %13, align 4
  switch i32 %22, label %119 [
    i32 128, label %23
    i32 129, label %67
  ]

23:                                               ; preds = %7
  %24 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %25 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IIO_INTENSITY, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %45 [
    i32 130, label %31
    i32 131, label %38
  ]

31:                                               ; preds = %29
  %32 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %33 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %14, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %37, i32* %8, align 4
  br label %122

38:                                               ; preds = %29
  %39 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %40 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %14, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %44, i32* %8, align 4
  br label %122

45:                                               ; preds = %29
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %122

48:                                               ; preds = %23
  %49 = load i32, i32* %12, align 4
  switch i32 %49, label %64 [
    i32 130, label %50
    i32 131, label %57
  ]

50:                                               ; preds = %48
  %51 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %52 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %56, i32* %8, align 4
  br label %122

57:                                               ; preds = %48
  %58 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %59 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %14, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %63, i32* %8, align 4
  br label %122

64:                                               ; preds = %48
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %8, align 4
  br label %122

67:                                               ; preds = %7
  %68 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %10, align 8
  %69 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IIO_INTENSITY, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %75 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %19, align 4
  %78 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %79 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %18, align 4
  %82 = load i32, i32* %18, align 4
  %83 = icmp sgt i32 %82, 3
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i32, i32* %18, align 4
  %86 = sub nsw i32 %85, 3
  %87 = mul nsw i32 %86, 5
  store i32 %87, i32* %18, align 4
  br label %88

88:                                               ; preds = %84, %73
  br label %98

89:                                               ; preds = %67
  %90 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %91 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %19, align 4
  %94 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %95 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %18, align 4
  br label %98

98:                                               ; preds = %89, %88
  %99 = load i32, i32* %18, align 4
  %100 = load i32, i32* %19, align 4
  %101 = sub nsw i32 256, %100
  %102 = mul nsw i32 %99, %101
  %103 = load i32**, i32*** @tsl2772_int_time_avail, align 8
  %104 = load %struct.tsl2772_chip*, %struct.tsl2772_chip** %16, align 8
  %105 = getelementptr inbounds %struct.tsl2772_chip, %struct.tsl2772_chip* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32*, i32** %103, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %102, %110
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = sdiv i32 %112, 1000000
  %114 = load i32*, i32** %14, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %17, align 4
  %116 = srem i32 %115, 1000000
  %117 = load i32*, i32** %15, align 8
  store i32 %116, i32* %117, align 4
  %118 = load i32, i32* @IIO_VAL_INT_PLUS_MICRO, align 4
  store i32 %118, i32* %8, align 4
  br label %122

119:                                              ; preds = %7
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %119, %98, %64, %57, %50, %45, %38, %31
  %123 = load i32, i32* %8, align 4
  ret i32 %123
}

declare dso_local %struct.tsl2772_chip* @iio_priv(%struct.iio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
