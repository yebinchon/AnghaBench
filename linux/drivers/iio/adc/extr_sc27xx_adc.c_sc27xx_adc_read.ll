; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_adc_data = type { i32, i64, i32, i32 }

@SC27XX_ADC_HWLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"timeout to get the hwspinlock\0A\00", align 1
@SC27XX_ADC_CTL = common dso_local global i64 0, align 8
@SC27XX_ADC_EN = common dso_local global i32 0, align 4
@SC27XX_ADC_INT_CLR = common dso_local global i64 0, align 8
@SC27XX_ADC_IRQ_CLR = common dso_local global i32 0, align 4
@SC27XX_ADC_SCALE_SHIFT = common dso_local global i32 0, align 4
@SC27XX_ADC_SCALE_MASK = common dso_local global i32 0, align 4
@SC27XX_ADC_CHN_ID_MASK = common dso_local global i32 0, align 4
@SC27XX_ADC_CH_CFG = common dso_local global i64 0, align 8
@SC27XX_ADC_12BIT_MODE = common dso_local global i32 0, align 4
@SC27XX_ADC_RUN_NUM_SHIFT = common dso_local global i32 0, align 4
@SC27XX_ADC_RUN_NUM_MASK = common dso_local global i32 0, align 4
@SC27XX_ADC_CHN_RUN = common dso_local global i32 0, align 4
@SC27XX_ADC_INT_RAW = common dso_local global i64 0, align 8
@SC27XX_ADC_IRQ_RAW = common dso_local global i32 0, align 4
@SC27XX_ADC_POLL_RAW_STATUS = common dso_local global i32 0, align 4
@SC27XX_ADC_RDY_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"read adc timeout, status = 0x%x\0A\00", align 1
@SC27XX_ADC_DATA = common dso_local global i64 0, align 8
@SC27XX_ADC_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_adc_data*, i32, i32, i32*)* @sc27xx_adc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_read(%struct.sc27xx_adc_data* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sc27xx_adc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sc27xx_adc_data* %0, %struct.sc27xx_adc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %15 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SC27XX_ADC_HWLOCK_TIMEOUT, align 4
  %18 = call i32 @hwspin_lock_timeout_raw(i32 %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %23 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %187

27:                                               ; preds = %4
  %28 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %29 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %32 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SC27XX_ADC_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = load i32, i32* @SC27XX_ADC_EN, align 4
  %37 = load i32, i32* @SC27XX_ADC_EN, align 4
  %38 = call i32 @regmap_update_bits(i32 %30, i64 %35, i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %175

42:                                               ; preds = %27
  %43 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %44 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %47 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SC27XX_ADC_INT_CLR, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @SC27XX_ADC_IRQ_CLR, align 4
  %52 = load i32, i32* @SC27XX_ADC_IRQ_CLR, align 4
  %53 = call i32 @regmap_update_bits(i32 %45, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %164

57:                                               ; preds = %42
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SC27XX_ADC_SCALE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* @SC27XX_ADC_SCALE_MASK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @SC27XX_ADC_CHN_ID_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %69 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %72 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SC27XX_ADC_CH_CFG, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* @SC27XX_ADC_CHN_ID_MASK, align 4
  %77 = load i32, i32* @SC27XX_ADC_SCALE_MASK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @regmap_update_bits(i32 %70, i64 %75, i32 %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %57
  br label %164

84:                                               ; preds = %57
  %85 = load i32, i32* @SC27XX_ADC_12BIT_MODE, align 4
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @SC27XX_ADC_RUN_NUM_SHIFT, align 4
  %87 = shl i32 0, %86
  %88 = load i32, i32* @SC27XX_ADC_RUN_NUM_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load i32, i32* %11, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %11, align 4
  %92 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %93 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %96 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SC27XX_ADC_CTL, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* @SC27XX_ADC_RUN_NUM_MASK, align 4
  %101 = load i32, i32* @SC27XX_ADC_12BIT_MODE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @regmap_update_bits(i32 %94, i64 %99, i32 %102, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %84
  br label %164

108:                                              ; preds = %84
  %109 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %110 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %113 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @SC27XX_ADC_CTL, align 8
  %116 = add nsw i64 %114, %115
  %117 = load i32, i32* @SC27XX_ADC_CHN_RUN, align 4
  %118 = load i32, i32* @SC27XX_ADC_CHN_RUN, align 4
  %119 = call i32 @regmap_update_bits(i32 %111, i64 %116, i32 %117, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %164

123:                                              ; preds = %108
  %124 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %125 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %128 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @SC27XX_ADC_INT_RAW, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @SC27XX_ADC_IRQ_RAW, align 4
  %135 = and i32 %133, %134
  %136 = load i32, i32* @SC27XX_ADC_POLL_RAW_STATUS, align 4
  %137 = load i32, i32* @SC27XX_ADC_RDY_TIMEOUT, align 4
  %138 = call i32 @regmap_read_poll_timeout(i32 %126, i64 %131, i32 %132, i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %123
  %142 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %143 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %13, align 4
  %146 = call i32 (i32, i8*, ...) @dev_err(i32 %144, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %145)
  br label %164

147:                                              ; preds = %123
  %148 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %149 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %152 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @SC27XX_ADC_DATA, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @regmap_read(i32 %150, i64 %155, i32* %12)
  store i32 %156, i32* %10, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %147
  br label %164

160:                                              ; preds = %147
  %161 = load i32, i32* @SC27XX_ADC_DATA_MASK, align 4
  %162 = load i32, i32* %12, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %160, %159, %141, %122, %107, %83, %56
  %165 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %166 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %169 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SC27XX_ADC_CTL, align 8
  %172 = add nsw i64 %170, %171
  %173 = load i32, i32* @SC27XX_ADC_EN, align 4
  %174 = call i32 @regmap_update_bits(i32 %167, i64 %172, i32 %173, i32 0)
  br label %175

175:                                              ; preds = %164, %41
  %176 = load %struct.sc27xx_adc_data*, %struct.sc27xx_adc_data** %6, align 8
  %177 = getelementptr inbounds %struct.sc27xx_adc_data, %struct.sc27xx_adc_data* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @hwspin_unlock_raw(i32 %178)
  %180 = load i32, i32* %10, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %12, align 4
  %184 = load i32*, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %175
  %186 = load i32, i32* %10, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %21
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @hwspin_lock_timeout_raw(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @hwspin_unlock_raw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
