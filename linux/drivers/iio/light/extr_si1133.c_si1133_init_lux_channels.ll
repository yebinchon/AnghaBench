; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_init_lux_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/light/extr_si1133.c_si1133_init_lux_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si1133_data = type { i32 }

@SI1133_PARAM_ADCMUX_LARGE_WHITE = common dso_local global i32 0, align 4
@SI1133_ADCPOST_24BIT_EN = common dso_local global i32 0, align 4
@SI1133_ADCSENS_HSIG_MASK = common dso_local global i32 0, align 4
@_48_8_us = common dso_local global i32 0, align 4
@_3_120_0_us = common dso_local global i32 0, align 4
@SI1133_PARAM_ADCMUX_MED_IR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si1133_data*)* @si1133_init_lux_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si1133_init_lux_channels(%struct.si1133_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si1133_data*, align 8
  %4 = alloca i32, align 4
  store %struct.si1133_data* %0, %struct.si1133_data** %3, align 8
  %5 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %6 = call i32 @SI1133_ADCCONFIG_DECIM_RATE(i32 1)
  %7 = load i32, i32* @SI1133_PARAM_ADCMUX_LARGE_WHITE, align 4
  %8 = or i32 %6, %7
  %9 = call i32 @si1133_chan_set_adcconfig(%struct.si1133_data* %5, i32 1, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %99

14:                                               ; preds = %1
  %15 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %16 = call i32 @SI1133_PARAM_REG_ADCPOST(i32 1)
  %17 = load i32, i32* @SI1133_ADCPOST_24BIT_EN, align 4
  %18 = call i32 @SI1133_ADCPOST_POSTSHIFT_BITQTY(i32 0)
  %19 = or i32 %17, %18
  %20 = call i32 @si1133_param_set(%struct.si1133_data* %15, i32 %16, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %99

25:                                               ; preds = %14
  %26 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %27 = load i32, i32* @SI1133_ADCSENS_HSIG_MASK, align 4
  %28 = call i32 @SI1133_ADCSENS_NB_MEAS(i32 64)
  %29 = or i32 %27, %28
  %30 = load i32, i32* @_48_8_us, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @si1133_chan_set_adcsens(%struct.si1133_data* %26, i32 1, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %99

37:                                               ; preds = %25
  %38 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %39 = call i32 @SI1133_ADCCONFIG_DECIM_RATE(i32 1)
  %40 = load i32, i32* @SI1133_PARAM_ADCMUX_LARGE_WHITE, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @si1133_chan_set_adcconfig(%struct.si1133_data* %38, i32 2, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %99

47:                                               ; preds = %37
  %48 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %49 = call i32 @SI1133_PARAM_REG_ADCPOST(i32 2)
  %50 = load i32, i32* @SI1133_ADCPOST_24BIT_EN, align 4
  %51 = call i32 @SI1133_ADCPOST_POSTSHIFT_BITQTY(i32 2)
  %52 = or i32 %50, %51
  %53 = call i32 @si1133_param_set(%struct.si1133_data* %48, i32 %49, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %99

58:                                               ; preds = %47
  %59 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %60 = load i32, i32* @SI1133_ADCSENS_HSIG_MASK, align 4
  %61 = call i32 @SI1133_ADCSENS_NB_MEAS(i32 1)
  %62 = or i32 %60, %61
  %63 = load i32, i32* @_3_120_0_us, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @si1133_chan_set_adcsens(%struct.si1133_data* %59, i32 2, i32 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %58
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %99

70:                                               ; preds = %58
  %71 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %72 = call i32 @SI1133_ADCCONFIG_DECIM_RATE(i32 1)
  %73 = load i32, i32* @SI1133_PARAM_ADCMUX_MED_IR, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @si1133_chan_set_adcconfig(%struct.si1133_data* %71, i32 3, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  store i32 %79, i32* %2, align 4
  br label %99

80:                                               ; preds = %70
  %81 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %82 = call i32 @SI1133_PARAM_REG_ADCPOST(i32 3)
  %83 = load i32, i32* @SI1133_ADCPOST_24BIT_EN, align 4
  %84 = call i32 @SI1133_ADCPOST_POSTSHIFT_BITQTY(i32 2)
  %85 = or i32 %83, %84
  %86 = call i32 @si1133_param_set(%struct.si1133_data* %81, i32 %82, i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  store i32 %90, i32* %2, align 4
  br label %99

91:                                               ; preds = %80
  %92 = load %struct.si1133_data*, %struct.si1133_data** %3, align 8
  %93 = load i32, i32* @SI1133_ADCSENS_HSIG_MASK, align 4
  %94 = call i32 @SI1133_ADCSENS_NB_MEAS(i32 64)
  %95 = or i32 %93, %94
  %96 = load i32, i32* @_48_8_us, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @si1133_chan_set_adcsens(%struct.si1133_data* %92, i32 3, i32 %97)
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %91, %89, %78, %68, %56, %45, %35, %23, %12
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @si1133_chan_set_adcconfig(%struct.si1133_data*, i32, i32) #1

declare dso_local i32 @SI1133_ADCCONFIG_DECIM_RATE(i32) #1

declare dso_local i32 @si1133_param_set(%struct.si1133_data*, i32, i32) #1

declare dso_local i32 @SI1133_PARAM_REG_ADCPOST(i32) #1

declare dso_local i32 @SI1133_ADCPOST_POSTSHIFT_BITQTY(i32) #1

declare dso_local i32 @si1133_chan_set_adcsens(%struct.si1133_data*, i32, i32) #1

declare dso_local i32 @SI1133_ADCSENS_NB_MEAS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
