; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ti-adc12138.c_adc12138_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.adc12138 = type { i32, i32, i32 }

@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @adc12138_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adc12138_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.adc12138*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = call %struct.adc12138* @iio_priv(%struct.iio_dev* %15)
  store %struct.adc12138* %16, %struct.adc12138** %12, align 8
  %17 = load i64, i64* %11, align 8
  switch i64 %17, label %107 [
    i64 129, label %18
    i64 128, label %39
    i64 130, label %81
  ]

18:                                               ; preds = %5
  %19 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %20 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %19, i32 0, i32 2
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %23 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %24 = call i32 @adc12138_adc_conversion(%struct.adc12138* %22, %struct.iio_chan_spec* %23, i32* %14)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %26 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %25, i32 0, i32 2
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %110

32:                                               ; preds = %18
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @be16_to_cpu(i32 %33)
  %35 = ashr i32 %34, 3
  %36 = call i32 @sign_extend32(i32 %35, i32 12)
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %38, i32* %6, align 4
  br label %110

39:                                               ; preds = %5
  %40 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %41 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_get_voltage(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %6, align 4
  br label %110

48:                                               ; preds = %39
  %49 = load i32, i32* %13, align 4
  %50 = load i32*, i32** %9, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %52 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IS_ERR(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  %57 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %58 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_get_voltage(i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %6, align 4
  br label %110

65:                                               ; preds = %56
  %66 = load i32, i32* %13, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %48
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %71, align 4
  %73 = sdiv i32 %72, 1000
  store i32 %73, i32* %71, align 4
  %74 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %75 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = load i32*, i32** %10, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %80, i32* %6, align 4
  br label %110

81:                                               ; preds = %5
  %82 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %83 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IS_ERR(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %81
  %88 = load %struct.adc12138*, %struct.adc12138** %12, align 8
  %89 = getelementptr inbounds %struct.adc12138, %struct.adc12138* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @regulator_get_voltage(i32 %90)
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %6, align 4
  br label %110

99:                                               ; preds = %87
  br label %102

100:                                              ; preds = %81
  %101 = load i32*, i32** %9, align 8
  store i32 0, i32* %101, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = sdiv i32 %104, 1000
  store i32 %105, i32* %103, align 4
  %106 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %106, i32* %6, align 4
  br label %110

107:                                              ; preds = %5
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %102, %96, %70, %63, %46, %32, %30
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.adc12138* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adc12138_adc_conversion(%struct.adc12138*, %struct.iio_chan_spec*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
