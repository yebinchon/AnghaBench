; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.iio_dev = type { i32 }

@TOUCH_PEN_DETECT_DEBOUNCE_US = common dso_local global i32 0, align 4
@AT91_ADC_MR = common dso_local global i32 0, align 4
@AT91_ADC_TSAMOD_TS_ONLY_MODE = common dso_local global i32 0, align 4
@AT91_ADC_PENDET = common dso_local global i32 0, align 4
@AT91_ADC_PENDBC = common dso_local global i32 0, align 4
@TOUCH_SHTIM = common dso_local global i32 0, align 4
@AT91_ADC_TSR_SHTIM = common dso_local global i32 0, align 4
@AT91_ADC_TSR = common dso_local global i32 0, align 4
@TOUCH_SAMPLE_PERIOD_US_RL = common dso_local global i32 0, align 4
@TOUCH_SCTIM_US = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"adc_clk at: %d KHz, tssctim at: %d\0A\00", align 1
@ATMEL_ADC_TOUCHSCREEN_4WIRE = common dso_local global i64 0, align 8
@AT91_ADC_TSMR_TSMODE_4WIRE_PRESS = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_TSMODE_5WIRE = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_SCTIM = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_TSAV = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_PENDBC = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_NOTSDMA = common dso_local global i32 0, align 4
@AT91_ADC_TSMR_PENDET_ENA = common dso_local global i32 0, align 4
@AT91_ADC_TSMR = common dso_local global i32 0, align 4
@AT91_ADC_ACR = common dso_local global i32 0, align 4
@AT91_ADC_ACR_PENDETSENS = common dso_local global i32 0, align 4
@TOUCH_SAMPLE_PERIOD_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*, i32)* @at91_ts_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_ts_hw_init(%struct.at91_adc_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.at91_adc_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %11 = call %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state* %10)
  store %struct.iio_dev* %11, %struct.iio_dev** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @TOUCH_PEN_DETECT_DEBOUNCE_US, align 4
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %12, %13
  %15 = sdiv i32 %14, 1000
  %16 = call i8* @round_up(i32 %15, i32 1)
  %17 = ptrtoint i8* %16 to i32
  %18 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %19 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  br label %20

20:                                               ; preds = %28, %2
  %21 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %22 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = ashr i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %20

29:                                               ; preds = %20
  %30 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %31 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %32, %34
  %36 = call i64 @abs(i32 %35)
  %37 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %38 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sub nsw i32 %40, 1
  %42 = shl i32 1, %41
  %43 = sub nsw i32 %39, %42
  %44 = call i64 @abs(i32 %43)
  %45 = icmp slt i64 %36, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %49 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %55

50:                                               ; preds = %29
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %54 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %50, %46
  %56 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %57 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %99, label %62

62:                                               ; preds = %55
  %63 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %64 = load i32, i32* @AT91_ADC_MR, align 4
  %65 = call i32 @at91_adc_readl(%struct.at91_adc_state* %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* @AT91_ADC_TSAMOD_TS_ONLY_MODE, align 4
  %67 = load i32, i32* @AT91_ADC_PENDET, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %72 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @AT91_ADC_PENDBC_(i32 %73)
  %75 = load i32, i32* @AT91_ADC_PENDBC, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %80 = load i32, i32* @AT91_ADC_MR, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @at91_adc_writel(%struct.at91_adc_state* %79, i32 %80, i32 %81)
  %83 = load i32, i32* @TOUCH_SHTIM, align 4
  %84 = call i32 @AT91_ADC_TSR_SHTIM_(i32 %83)
  %85 = load i32, i32* @AT91_ADC_TSR_SHTIM, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %7, align 4
  %87 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %88 = load i32, i32* @AT91_ADC_TSR, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @at91_adc_writel(%struct.at91_adc_state* %87, i32 %88, i32 %89)
  %91 = load i32, i32* @TOUCH_SAMPLE_PERIOD_US_RL, align 4
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 %91, %92
  %94 = sdiv i32 %93, 1000
  %95 = sub nsw i32 %94, 1
  %96 = call i8* @round_up(i32 %95, i32 1)
  %97 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %98 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %97, i32 0, i32 2
  store i8* %96, i8** %98, align 8
  store i32 0, i32* %3, align 4
  br label %174

99:                                               ; preds = %55
  %100 = load i32, i32* @TOUCH_SCTIM_US, align 4
  %101 = load i32, i32* %5, align 4
  %102 = mul nsw i32 %100, %101
  %103 = sdiv i32 %102, 1000
  %104 = call i32 @DIV_ROUND_UP(i32 %103, i32 4)
  store i32 %104, i32* %8, align 4
  %105 = load %struct.iio_dev*, %struct.iio_dev** %6, align 8
  %106 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %105, i32 0, i32 0
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_dbg(i32* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108)
  %110 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %111 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ATMEL_ADC_TOUCHSCREEN_4WIRE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i32, i32* @AT91_ADC_TSMR_TSMODE_4WIRE_PRESS, align 4
  store i32 %116, i32* %7, align 4
  br label %119

117:                                              ; preds = %99
  %118 = load i32, i32* @AT91_ADC_TSMR_TSMODE_5WIRE, align 4
  store i32 %118, i32* %7, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @AT91_ADC_TSMR_SCTIM_(i32 %120)
  %122 = load i32, i32* @AT91_ADC_TSMR_SCTIM, align 4
  %123 = and i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %127 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %126, i32 0, i32 3
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @AT91_ADC_TSMR_TSAV_(i32 %130)
  %132 = load i32, i32* @AT91_ADC_TSMR_TSAV, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* %7, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %7, align 4
  %136 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %137 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @AT91_ADC_TSMR_PENDBC_(i32 %138)
  %140 = load i32, i32* @AT91_ADC_TSMR_PENDBC, align 4
  %141 = and i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @AT91_ADC_TSMR_NOTSDMA, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  %147 = load i32, i32* @AT91_ADC_TSMR_PENDET_ENA, align 4
  %148 = load i32, i32* %7, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %7, align 4
  %151 = or i32 %150, 768
  store i32 %151, i32* %7, align 4
  %152 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %153 = load i32, i32* @AT91_ADC_TSMR, align 4
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @at91_adc_writel(%struct.at91_adc_state* %152, i32 %153, i32 %154)
  %156 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %157 = load i32, i32* @AT91_ADC_ACR, align 4
  %158 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %159 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %158, i32 0, i32 3
  %160 = load %struct.TYPE_2__*, %struct.TYPE_2__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AT91_ADC_ACR_PENDETSENS, align 4
  %164 = and i32 %162, %163
  %165 = call i32 @at91_adc_writel(%struct.at91_adc_state* %156, i32 %157, i32 %164)
  %166 = load i32, i32* @TOUCH_SAMPLE_PERIOD_US, align 4
  %167 = load i32, i32* %5, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sdiv i32 %168, 1000
  %170 = sub nsw i32 %169, 1
  %171 = call i8* @round_up(i32 %170, i32 1)
  %172 = load %struct.at91_adc_state*, %struct.at91_adc_state** %4, align 8
  %173 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  store i32 0, i32* %3, align 4
  br label %174

174:                                              ; preds = %119, %62
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state*) #1

declare dso_local i8* @round_up(i32, i32) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @AT91_ADC_PENDBC_(i32) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_ADC_TSR_SHTIM_(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @AT91_ADC_TSMR_SCTIM_(i32) #1

declare dso_local i32 @AT91_ADC_TSMR_TSAV_(i32) #1

declare dso_local i32 @AT91_ADC_TSMR_PENDBC_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
