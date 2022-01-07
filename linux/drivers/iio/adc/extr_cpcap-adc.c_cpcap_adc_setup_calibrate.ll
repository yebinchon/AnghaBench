; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_setup_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_cpcap-adc.c_cpcap_adc_setup_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpcap_adc = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CPCAP_ADC_CHG_ISENSE = common dso_local global i32 0, align 4
@CPCAP_ADC_BATTI = common dso_local global i32 0, align 4
@CPCAP_BIT_CAL_MODE = common dso_local global i32 0, align 4
@CPCAP_BIT_RAND0 = common dso_local global i32 0, align 4
@CPCAP_BIT_ADA2 = common dso_local global i32 0, align 4
@CPCAP_BIT_ADA1 = common dso_local global i32 0, align 4
@CPCAP_BIT_ADA0 = common dso_local global i32 0, align 4
@CPCAP_REG_ADCC1 = common dso_local global i32 0, align 4
@CPCAP_BIT_ATOX = common dso_local global i32 0, align 4
@CPCAP_BIT_ATO3 = common dso_local global i32 0, align 4
@CPCAP_BIT_ATO2 = common dso_local global i32 0, align 4
@CPCAP_BIT_ATO1 = common dso_local global i32 0, align 4
@CPCAP_BIT_ATO0 = common dso_local global i32 0, align 4
@CPCAP_BIT_AD_SEL1 = common dso_local global i32 0, align 4
@CPCAP_BIT_RAND1 = common dso_local global i32 0, align 4
@CPCAP_REG_ADCC2 = common dso_local global i32 0, align 4
@CPCAP_BIT_ATOX_PS_FACTOR = common dso_local global i32 0, align 4
@CPCAP_BIT_ADC_PS_FACTOR1 = common dso_local global i32 0, align 4
@CPCAP_BIT_ADC_PS_FACTOR0 = common dso_local global i32 0, align 4
@CPCAP_BIT_ADTRIG_DIS = common dso_local global i32 0, align 4
@CPCAP_BIT_ASC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Timeout waiting for calibration to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpcap_adc*, i32)* @cpcap_adc_setup_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpcap_adc_setup_calibrate(%struct.cpcap_adc* %0, i32 %1) #0 {
  %3 = alloca %struct.cpcap_adc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpcap_adc* %0, %struct.cpcap_adc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load i64, i64* @jiffies, align 8
  %9 = call i64 @msecs_to_jiffies(i32 3000)
  %10 = add i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CPCAP_ADC_CHG_ISENSE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CPCAP_ADC_BATTI, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %147

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @CPCAP_BIT_CAL_MODE, align 4
  %21 = load i32, i32* @CPCAP_BIT_RAND0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = shl i32 %25, 4
  %27 = load i32, i32* @CPCAP_BIT_ADA2, align 4
  %28 = load i32, i32* @CPCAP_BIT_ADA1, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CPCAP_BIT_ADA0, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %26, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %36 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CPCAP_REG_ADCC1, align 4
  %39 = load i32, i32* @CPCAP_BIT_CAL_MODE, align 4
  %40 = load i32, i32* @CPCAP_BIT_ATOX, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CPCAP_BIT_ATO3, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CPCAP_BIT_ATO2, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CPCAP_BIT_ATO1, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CPCAP_BIT_ATO0, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @CPCAP_BIT_ADA2, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @CPCAP_BIT_ADA1, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CPCAP_BIT_ADA0, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CPCAP_BIT_AD_SEL1, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CPCAP_BIT_RAND1, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @CPCAP_BIT_RAND0, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @regmap_update_bits(i32 %37, i32 %38, i32 %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %19
  br label %147

67:                                               ; preds = %19
  %68 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %69 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CPCAP_REG_ADCC2, align 4
  %72 = load i32, i32* @CPCAP_BIT_ATOX_PS_FACTOR, align 4
  %73 = load i32, i32* @CPCAP_BIT_ADC_PS_FACTOR1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CPCAP_BIT_ADC_PS_FACTOR0, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @regmap_update_bits(i32 %70, i32 %71, i32 %76, i32 0)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %147

81:                                               ; preds = %67
  %82 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %83 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @CPCAP_REG_ADCC2, align 4
  %86 = load i32, i32* @CPCAP_BIT_ADTRIG_DIS, align 4
  %87 = load i32, i32* @CPCAP_BIT_ADTRIG_DIS, align 4
  %88 = call i32 @regmap_update_bits(i32 %84, i32 %85, i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %147

92:                                               ; preds = %81
  %93 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %94 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CPCAP_REG_ADCC2, align 4
  %97 = load i32, i32* @CPCAP_BIT_ASC, align 4
  %98 = load i32, i32* @CPCAP_BIT_ASC, align 4
  %99 = call i32 @regmap_update_bits(i32 %95, i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %92
  br label %147

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %125, %103
  %105 = call i32 @schedule_timeout_uninterruptible(i32 1)
  %106 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %107 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @CPCAP_REG_ADCC2, align 4
  %110 = call i32 @regmap_read(i32 %108, i32 %109, i32* %5)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  br label %147

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @CPCAP_BIT_ASC, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %115
  %121 = load i64, i64* @jiffies, align 8
  %122 = load i64, i64* %6, align 8
  %123 = call i64 @time_before(i64 %121, i64 %122)
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %115
  %126 = phi i1 [ false, %115 ], [ %124, %120 ]
  br i1 %126, label %104, label %127

127:                                              ; preds = %125
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @CPCAP_BIT_ASC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %134 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @dev_err(i32 %135, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %137

137:                                              ; preds = %132, %127
  %138 = load %struct.cpcap_adc*, %struct.cpcap_adc** %3, align 8
  %139 = getelementptr inbounds %struct.cpcap_adc, %struct.cpcap_adc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @CPCAP_REG_ADCC1, align 4
  %142 = load i32, i32* @CPCAP_BIT_CAL_MODE, align 4
  %143 = call i32 @regmap_update_bits(i32 %140, i32 %141, i32 %142, i32 0)
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %18, %66, %80, %91, %102, %113, %146, %137
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
