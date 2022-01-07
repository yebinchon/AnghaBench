; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/dac/extr_ad5764.c_ad5764_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ad5764_state = type { i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @ad5764_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5764_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ad5764_state*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.ad5764_state* @iio_priv(%struct.iio_dev* %16)
  store %struct.ad5764_state* %17, %struct.ad5764_state** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %110 [
    i64 129, label %19
    i64 132, label %41
    i64 131, label %60
    i64 128, label %79
    i64 130, label %100
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %21 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AD5764_REG_DATA(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @ad5764_read(%struct.iio_dev* %24, i32 %25, i32* %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %19
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %113

32:                                               ; preds = %19
  %33 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %34 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %40, i32* %6, align 4
  br label %113

41:                                               ; preds = %5
  %42 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %43 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @AD5764_REG_OFFSET(i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @ad5764_read(%struct.iio_dev* %46, i32 %47, i32* %48)
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = load i32, i32* %15, align 4
  store i32 %53, i32* %6, align 4
  br label %113

54:                                               ; preds = %41
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @sign_extend32(i32 %56, i32 7)
  %58 = load i32*, i32** %9, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %59, i32* %6, align 4
  br label %113

60:                                               ; preds = %5
  %61 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %62 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @AD5764_REG_FINE_GAIN(i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 @ad5764_read(%struct.iio_dev* %65, i32 %66, i32* %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* %15, align 4
  store i32 %72, i32* %6, align 4
  br label %113

73:                                               ; preds = %60
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sign_extend32(i32 %75, i32 5)
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %6, align 4
  br label %113

79:                                               ; preds = %5
  %80 = load %struct.ad5764_state*, %struct.ad5764_state** %12, align 8
  %81 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %82 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @ad5764_get_channel_vref(%struct.ad5764_state* %80, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %6, align 4
  br label %113

89:                                               ; preds = %79
  %90 = load i32, i32* %14, align 4
  %91 = mul nsw i32 %90, 4
  %92 = sdiv i32 %91, 1000
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %94 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %95 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %10, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %99, i32* %6, align 4
  br label %113

100:                                              ; preds = %5
  %101 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %102 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 1, %104
  %106 = sub nsw i32 0, %105
  %107 = sdiv i32 %106, 2
  %108 = load i32*, i32** %9, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %109, i32* %6, align 4
  br label %113

110:                                              ; preds = %5
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %110, %100, %89, %87, %73, %71, %54, %52, %32, %30
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.ad5764_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @AD5764_REG_DATA(i32) #1

declare dso_local i32 @ad5764_read(%struct.iio_dev*, i32, i32*) #1

declare dso_local i32 @AD5764_REG_OFFSET(i32) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @AD5764_REG_FINE_GAIN(i32) #1

declare dso_local i32 @ad5764_get_channel_vref(%struct.ad5764_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
