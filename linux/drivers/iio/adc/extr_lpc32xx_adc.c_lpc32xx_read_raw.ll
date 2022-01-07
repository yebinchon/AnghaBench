; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc32xx_adc.c_lpc32xx_read_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_lpc32xx_adc.c_lpc32xx_read_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.lpc32xx_adc_state = type { i32, i32, i32, i32, i32 }

@LPC32XXAD_INTERNAL = common dso_local global i32 0, align 4
@LPC32XXAD_REFp = common dso_local global i32 0, align 4
@LPC32XXAD_REFm = common dso_local global i32 0, align 4
@LPC32XXAD_PDN_CTRL = common dso_local global i32 0, align 4
@LPC32XXAD_STROBE = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@IIO_VAL_FRACTIONAL_LOG2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*, i32*, i64)* @lpc32xx_read_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_read_raw(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca %struct.iio_chan_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.lpc32xx_adc_state*, align 8
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %7, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %15 = call %struct.lpc32xx_adc_state* @iio_priv(%struct.iio_dev* %14)
  store %struct.lpc32xx_adc_state* %15, %struct.lpc32xx_adc_state** %12, align 8
  %16 = load i64, i64* %11, align 8
  switch i64 %16, label %79 [
    i64 129, label %17
    i64 128, label %70
  ]

17:                                               ; preds = %5
  %18 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %19 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_prepare_enable(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %17
  %28 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %29 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %6, align 4
  br label %82

32:                                               ; preds = %17
  %33 = load i32, i32* @LPC32XXAD_INTERNAL, align 4
  %34 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %8, align 8
  %35 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* @LPC32XXAD_REFp, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @LPC32XXAD_REFm, align 4
  %41 = or i32 %39, %40
  %42 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %43 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @LPC32XXAD_SELECT(i32 %44)
  %46 = call i32 @__raw_writel(i32 %41, i32 %45)
  %47 = load i32, i32* @LPC32XXAD_PDN_CTRL, align 4
  %48 = load i32, i32* @LPC32XXAD_STROBE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @LPC32XXAD_CTRL(i32 %52)
  %54 = call i32 @__raw_writel(i32 %49, i32 %53)
  %55 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %56 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %55, i32 0, i32 3
  %57 = call i32 @wait_for_completion(i32* %56)
  %58 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %59 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @clk_disable_unprepare(i32 %60)
  %62 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %63 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %67 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %66, i32 0, i32 0
  %68 = call i32 @mutex_unlock(i32* %67)
  %69 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %69, i32* %6, align 4
  br label %82

70:                                               ; preds = %5
  %71 = load %struct.lpc32xx_adc_state*, %struct.lpc32xx_adc_state** %12, align 8
  %72 = getelementptr inbounds %struct.lpc32xx_adc_state, %struct.lpc32xx_adc_state* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @regulator_get_voltage(i32 %73)
  %75 = sdiv i32 %74, 1000
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** %10, align 8
  store i32 10, i32* %77, align 4
  %78 = load i32, i32* @IIO_VAL_FRACTIONAL_LOG2, align 4
  store i32 %78, i32* %6, align 4
  br label %82

79:                                               ; preds = %5
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %70, %32, %27
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.lpc32xx_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @LPC32XXAD_SELECT(i32) #1

declare dso_local i32 @LPC32XXAD_CTRL(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
