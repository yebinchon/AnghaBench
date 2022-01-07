; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_ts_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at91_adc_state = type { i32, i32, i32 }
%struct.iio_dev = type { i32 }

@AT91_ADC_TSXPOSR = common dso_local global i32 0, align 4
@MAX_POS_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error: xscale == 0!\0A\00", align 1
@AT91_ADC_TSYPOSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error: yscale == 0!\0A\00", align 1
@AT91_ADC_TSPRESSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [78 x i8] c"xpos = %d, xscale = %d, ypos = %d, yscale = %d, z1 = %d, z2 = %d, press = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"x = %d, y = %d, pressure = %d\0A\00", align 1
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"pressure too low: not reporting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.at91_adc_state*)* @at91_ts_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_ts_sample(%struct.at91_adc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at91_adc_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iio_dev*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.at91_adc_state* %0, %struct.at91_adc_state** %3, align 8
  store i32 1, i32* %14, align 4
  store i32 1000, i32* %15, align 4
  %19 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %20 = call %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state* %19)
  store %struct.iio_dev* %20, %struct.iio_dev** %16, align 8
  %21 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %22 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %18, align 4
  %27 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %28 = load i32, i32* @AT91_ADC_TSXPOSR, align 4
  %29 = call i32 @at91_adc_readl(%struct.at91_adc_state* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %18, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @MAX_POS_BITS, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %12, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %6, align 4
  %39 = lshr i32 %38, 16
  %40 = load i32, i32* %18, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  %46 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %167

48:                                               ; preds = %1
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %9, align 4
  %51 = udiv i32 %50, %49
  store i32 %51, i32* %9, align 4
  %52 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %53 = load i32, i32* @AT91_ADC_TSYPOSR, align 4
  %54 = call i32 @at91_adc_readl(%struct.at91_adc_state* %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %18, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @MAX_POS_BITS, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %13, align 4
  %62 = sub i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %6, align 4
  %64 = lshr i32 %63, 16
  %65 = load i32, i32* %18, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %48
  %70 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  %71 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %70, i32 0, i32 0
  %72 = call i32 @dev_err(i32* %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %167

73:                                               ; preds = %48
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %10, align 4
  %76 = udiv i32 %75, %74
  store i32 %76, i32* %10, align 4
  %77 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %78 = load i32, i32* @AT91_ADC_TSPRESSR, align 4
  %79 = call i32 @at91_adc_readl(%struct.at91_adc_state* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %18, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = lshr i32 %83, 16
  %85 = load i32, i32* %18, align 4
  %86 = and i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %73
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %15, align 4
  %93 = mul i32 %91, %92
  %94 = udiv i32 %93, 1024
  %95 = mul i32 %90, %94
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %15, align 4
  %98 = mul i32 %96, %97
  %99 = load i32, i32* %7, align 4
  %100 = udiv i32 %98, %99
  %101 = load i32, i32* %15, align 4
  %102 = sub i32 %100, %101
  %103 = mul i32 %95, %102
  %104 = load i32, i32* %15, align 4
  %105 = udiv i32 %103, %104
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %73
  %107 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %108 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %89
  %111 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  %112 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %111, i32 0, i32 0
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %112, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %123 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp ult i32 %121, %124
  br i1 %125, label %126, label %162

126:                                              ; preds = %110
  %127 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  %128 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %127, i32 0, i32 0
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %15, align 4
  %133 = udiv i32 %131, %132
  %134 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 %130, i32 %133)
  %135 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %136 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @ABS_X, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @input_report_abs(i32 %137, i32 %138, i32 %139)
  %141 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %142 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ABS_Y, align 4
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @input_report_abs(i32 %143, i32 %144, i32 %145)
  %147 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %148 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @ABS_PRESSURE, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @input_report_abs(i32 %149, i32 %150, i32 %151)
  %153 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %154 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @BTN_TOUCH, align 4
  %157 = call i32 @input_report_key(i32 %155, i32 %156, i32 1)
  %158 = load %struct.at91_adc_state*, %struct.at91_adc_state** %3, align 8
  %159 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @input_sync(i32 %160)
  br label %166

162:                                              ; preds = %110
  %163 = load %struct.iio_dev*, %struct.iio_dev** %16, align 8
  %164 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %163, i32 0, i32 0
  %165 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %166

166:                                              ; preds = %162, %126
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %166, %69, %44
  %168 = load i32, i32* %2, align 4
  ret i32 %168
}

declare dso_local %struct.iio_dev* @iio_priv_to_dev(%struct.at91_adc_state*) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
