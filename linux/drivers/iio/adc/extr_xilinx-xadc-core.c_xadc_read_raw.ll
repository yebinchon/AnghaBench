; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_xilinx-xadc-core.c_xadc_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8 }
%struct.xadc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XADC_REG_CONF2 = common dso_local global i32 0, align 4
@XADC_CONF2_DIV_MASK = common dso_local global i32 0, align 4
@XADC_CONF2_DIV_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @xadc_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xadc_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xadc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %17 = call %struct.xadc* @iio_priv(%struct.iio_dev* %16)
  store %struct.xadc* %17, %struct.xadc** %12, align 8
  %18 = load i64, i64* %11, align 8
  switch i64 %18, label %104 [
    i64 140, label %19
    i64 138, label %54
    i64 141, label %76
    i64 139, label %79
  ]

19:                                               ; preds = %5
  %20 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %21 = call i32 @iio_buffer_enabled(%struct.iio_dev* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %107

26:                                               ; preds = %19
  %27 = load %struct.xadc*, %struct.xadc** %12, align 8
  %28 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %29 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @xadc_read_adc_reg(%struct.xadc* %27, i32 %30, i32* %14)
  store i32 %31, i32* %15, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %6, align 4
  br label %107

36:                                               ; preds = %26
  %37 = load i32, i32* %14, align 4
  %38 = ashr i32 %37, 4
  store i32 %38, i32* %14, align 4
  %39 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %40 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 4
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 117
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* %14, align 4
  %47 = load i32*, i32** %9, align 8
  store i32 %46, i32* %47, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @sign_extend32(i32 %49, i32 11)
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %53, i32* %6, align 4
  br label %107

54:                                               ; preds = %5
  %55 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %56 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %73 [
    i32 136, label %58
    i32 137, label %69
  ]

58:                                               ; preds = %54
  %59 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %60 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %64 [
    i32 133, label %62
    i32 135, label %62
    i32 128, label %62
    i32 129, label %62
    i32 134, label %62
    i32 130, label %62
    i32 131, label %62
    i32 132, label %62
  ]

62:                                               ; preds = %58, %58, %58, %58, %58, %58, %58, %58
  %63 = load i32*, i32** %9, align 8
  store i32 3000, i32* %63, align 4
  br label %66

64:                                               ; preds = %58
  %65 = load i32*, i32** %9, align 8
  store i32 1000, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32*, i32** %10, align 8
  store i32 12, i32* %67, align 4
  %68 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %68, i32* %6, align 4
  br label %107

69:                                               ; preds = %54
  %70 = load i32*, i32** %9, align 8
  store i32 503975, i32* %70, align 4
  %71 = load i32*, i32** %10, align 8
  store i32 12, i32* %71, align 4
  %72 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %72, i32* %6, align 4
  br label %107

73:                                               ; preds = %54
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %6, align 4
  br label %107

76:                                               ; preds = %5
  %77 = load i32*, i32** %9, align 8
  store i32 -2219, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %78, i32* %6, align 4
  br label %107

79:                                               ; preds = %5
  %80 = load %struct.xadc*, %struct.xadc** %12, align 8
  %81 = load i32, i32* @XADC_REG_CONF2, align 4
  %82 = call i32 @xadc_read_adc_reg(%struct.xadc* %80, i32 %81, i32* %14)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %15, align 4
  store i32 %86, i32* %6, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @XADC_CONF2_DIV_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @XADC_CONF2_DIV_OFFSET, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ult i32 %93, 2
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  store i32 2, i32* %13, align 4
  br label %96

96:                                               ; preds = %95, %87
  %97 = load %struct.xadc*, %struct.xadc** %12, align 8
  %98 = call i32 @xadc_get_dclk_rate(%struct.xadc* %97)
  %99 = load i32, i32* %13, align 4
  %100 = udiv i32 %98, %99
  %101 = udiv i32 %100, 26
  %102 = load i32*, i32** %9, align 8
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %103, i32* %6, align 4
  br label %107

104:                                              ; preds = %5
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %96, %85, %76, %73, %69, %66, %52, %34, %23
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local %struct.xadc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @iio_buffer_enabled(%struct.iio_dev*) #1

declare dso_local i32 @xadc_read_adc_reg(%struct.xadc*, i32, i32*) #1

declare dso_local i32 @sign_extend32(i32, i32) #1

declare dso_local i32 @xadc_get_dclk_rate(%struct.xadc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
