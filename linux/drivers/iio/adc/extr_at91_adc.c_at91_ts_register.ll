; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i64, %struct.input_dev*, %struct.TYPE_6__* }
%struct.input_dev = type { i32, i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.platform_device = type { i32 }
%struct.iio_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate TS device!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@atmel_ts_open = common dso_local global i32 0, align 4
@atmel_ts_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@MAX_POS_BITS = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@ATMEL_ADC_TOUCHSCREEN_4WIRE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"This touchscreen controller only support 4 wires\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_RLPOS_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*, %struct.platform_device*)* @at91_ts_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_ts_register(%struct.at91_adc_state* %0, %struct.platform_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.iio_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %4, align 8
  store %struct.platform_device* %1, %struct.platform_device** %5, align 8
  %9 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %10 = call %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state* %9)
  store %struct.iio_dev* %10, %struct.iio_dev** %7, align 8
  %11 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %11, %struct.input_dev** %6, align 8
  %12 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %13 = icmp ne %struct.input_dev* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.iio_dev*, %struct.iio_dev** %7, align 8
  %16 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %15, i32 0, i32 0
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %121

20:                                               ; preds = %2
  %21 = load i32, i32* @DRIVER_NAME, align 4
  %22 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @BUS_HOST, align 4
  %25 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %29 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %28, i32 0, i32 0
  %30 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32* %29, i32** %32, align 8
  %33 = load i32, i32* @atmel_ts_open, align 4
  %34 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %35 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @atmel_ts_close, align 4
  %37 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @EV_ABS, align 4
  %40 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %41 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i32 %39, i32 %42)
  %44 = load i32, i32* @EV_KEY, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %46 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__set_bit(i32 %44, i32 %47)
  %49 = load i32, i32* @BTN_TOUCH, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @__set_bit(i32 %49, i32 %52)
  %54 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %55 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %20
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = load i32, i32* @ABS_X, align 4
  %63 = load i32, i32* @MAX_POS_BITS, align 4
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = call i32 @input_set_abs_params(%struct.input_dev* %61, i32 %62, i32 0, i32 %65, i32 0, i32 0)
  %67 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %68 = load i32, i32* @ABS_Y, align 4
  %69 = load i32, i32* @MAX_POS_BITS, align 4
  %70 = shl i32 1, %69
  %71 = sub nsw i32 %70, 1
  %72 = call i32 @input_set_abs_params(%struct.input_dev* %67, i32 %68, i32 0, i32 %71, i32 0, i32 0)
  %73 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %74 = load i32, i32* @ABS_PRESSURE, align 4
  %75 = call i32 @input_set_abs_params(%struct.input_dev* %73, i32 %74, i32 0, i32 16777215, i32 0, i32 0)
  br label %101

76:                                               ; preds = %20
  %77 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %78 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ATMEL_ADC_TOUCHSCREEN_4WIRE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %84 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %83, i32 0, i32 0
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %8, align 4
  br label %115

88:                                               ; preds = %76
  %89 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %90 = load i32, i32* @ABS_X, align 4
  %91 = load i32, i32* @MAX_RLPOS_BITS, align 4
  %92 = shl i32 1, %91
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @input_set_abs_params(%struct.input_dev* %89, i32 %90, i32 0, i32 %93, i32 0, i32 0)
  %95 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %96 = load i32, i32* @ABS_Y, align 4
  %97 = load i32, i32* @MAX_RLPOS_BITS, align 4
  %98 = shl i32 1, %97
  %99 = sub nsw i32 %98, 1
  %100 = call i32 @input_set_abs_params(%struct.input_dev* %95, i32 %96, i32 0, i32 %99, i32 0, i32 0)
  br label %101

101:                                              ; preds = %88, %60
  %102 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %103 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %104 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %103, i32 0, i32 1
  store %struct.input_dev* %102, %struct.input_dev** %104, align 8
  %105 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %106 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %107 = call i32 @input_set_drvdata(%struct.input_dev* %105, %struct.at91_adc_state* %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %109 = call i32 @input_register_device(%struct.input_dev* %108)
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %101
  br label %115

113:                                              ; preds = %101
  %114 = load i32, i32* %8, align 4
  store i32 %114, i32* %3, align 4
  br label %121

115:                                              ; preds = %112, %82
  %116 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %117 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %116, i32 0, i32 1
  %118 = load %struct.input_dev*, %struct.input_dev** %117, align 8
  %119 = call i32 @input_free_device(%struct.input_dev* %118)
  %120 = load i32, i32* %8, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %115, %113, %14
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state*) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.at91_adc_state*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
