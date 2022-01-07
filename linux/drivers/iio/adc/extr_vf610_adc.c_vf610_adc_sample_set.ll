; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_sample_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_vf610_adc.c_vf610_adc_sample_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_adc = type { i64, i32, %struct.vf610_adc_feature }
%struct.vf610_adc_feature = type { i32, i32, i32, i32, i32 }

@VF610_REG_ADC_CFG = common dso_local global i64 0, align 8
@VF610_REG_ADC_GC = common dso_local global i64 0, align 8
@VF610_ADC_MODE_MASK = common dso_local global i32 0, align 4
@VF610_ADC_MODE_BIT8 = common dso_local global i32 0, align 4
@VF610_ADC_MODE_BIT10 = common dso_local global i32 0, align 4
@VF610_ADC_MODE_BIT12 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"error resolution mode\0A\00", align 1
@VF610_ADC_CLK_MASK = common dso_local global i32 0, align 4
@VF610_ADC_ADCCLK_MASK = common dso_local global i32 0, align 4
@VF610_ADC_CLK_DIV2 = common dso_local global i32 0, align 4
@VF610_ADC_CLK_DIV4 = common dso_local global i32 0, align 4
@VF610_ADC_CLK_DIV8 = common dso_local global i32 0, align 4
@VF610_ADC_BUSCLK2_SEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"error clk divider\0A\00", align 1
@VF610_ADC_ADSTS_SHORT = common dso_local global i32 0, align 4
@VF610_ADC_ADSTS_NORMAL = common dso_local global i32 0, align 4
@VF610_ADC_ADSTS_LONG = common dso_local global i32 0, align 4
@VF610_ADC_ADLSMP_LONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"error in sample time select\0A\00", align 1
@VF610_ADC_AVGS_MASK = common dso_local global i32 0, align 4
@VF610_ADC_AVGEN = common dso_local global i32 0, align 4
@VF610_ADC_AVGS_8 = common dso_local global i32 0, align 4
@VF610_ADC_AVGS_16 = common dso_local global i32 0, align 4
@VF610_ADC_AVGS_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"error hardware sample average select\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_adc*)* @vf610_adc_sample_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_adc_sample_set(%struct.vf610_adc* %0) #0 {
  %2 = alloca %struct.vf610_adc*, align 8
  %3 = alloca %struct.vf610_adc_feature*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vf610_adc* %0, %struct.vf610_adc** %2, align 8
  %6 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %7 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %6, i32 0, i32 2
  store %struct.vf610_adc_feature* %7, %struct.vf610_adc_feature** %3, align 8
  %8 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %9 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VF610_REG_ADC_CFG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %15 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VF610_REG_ADC_GC, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @VF610_ADC_MODE_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %25 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 8, label %27
    i32 10, label %31
    i32 12, label %35
  ]

27:                                               ; preds = %1
  %28 = load i32, i32* @VF610_ADC_MODE_BIT8, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %44

31:                                               ; preds = %1
  %32 = load i32, i32* @VF610_ADC_MODE_BIT10, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %1
  %36 = load i32, i32* @VF610_ADC_MODE_BIT12, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  br label %44

39:                                               ; preds = %1
  %40 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %41 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %35, %31, %27
  %45 = load i32, i32* @VF610_ADC_CLK_MASK, align 4
  %46 = load i32, i32* @VF610_ADC_ADCCLK_MASK, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %52 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %83 [
    i32 1, label %54
    i32 2, label %55
    i32 4, label %59
    i32 8, label %63
    i32 16, label %67
  ]

54:                                               ; preds = %44
  br label %83

55:                                               ; preds = %44
  %56 = load i32, i32* @VF610_ADC_CLK_DIV2, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %83

59:                                               ; preds = %44
  %60 = load i32, i32* @VF610_ADC_CLK_DIV4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  br label %83

63:                                               ; preds = %44
  %64 = load i32, i32* @VF610_ADC_CLK_DIV8, align 4
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %83

67:                                               ; preds = %44
  %68 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %69 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %77 [
    i32 141, label %71
  ]

71:                                               ; preds = %67
  %72 = load i32, i32* @VF610_ADC_BUSCLK2_SEL, align 4
  %73 = load i32, i32* @VF610_ADC_CLK_DIV8, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %4, align 4
  br label %82

77:                                               ; preds = %67
  %78 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %79 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %71
  br label %83

83:                                               ; preds = %44, %82, %63, %59, %55, %54
  %84 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %85 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %125 [
    i32 136, label %87
    i32 135, label %88
    i32 134, label %92
    i32 133, label %96
    i32 140, label %100
    i32 139, label %104
    i32 138, label %111
    i32 137, label %118
  ]

87:                                               ; preds = %83
  br label %130

88:                                               ; preds = %83
  %89 = load i32, i32* @VF610_ADC_ADSTS_SHORT, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %130

92:                                               ; preds = %83
  %93 = load i32, i32* @VF610_ADC_ADSTS_NORMAL, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %130

96:                                               ; preds = %83
  %97 = load i32, i32* @VF610_ADC_ADSTS_LONG, align 4
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  br label %130

100:                                              ; preds = %83
  %101 = load i32, i32* @VF610_ADC_ADLSMP_LONG, align 4
  %102 = load i32, i32* %4, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %4, align 4
  br label %130

104:                                              ; preds = %83
  %105 = load i32, i32* @VF610_ADC_ADLSMP_LONG, align 4
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @VF610_ADC_ADSTS_SHORT, align 4
  %109 = load i32, i32* %4, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %4, align 4
  br label %130

111:                                              ; preds = %83
  %112 = load i32, i32* @VF610_ADC_ADLSMP_LONG, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @VF610_ADC_ADSTS_NORMAL, align 4
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  br label %130

118:                                              ; preds = %83
  %119 = load i32, i32* @VF610_ADC_ADLSMP_LONG, align 4
  %120 = load i32, i32* %4, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* @VF610_ADC_ADSTS_NORMAL, align 4
  %123 = load i32, i32* %4, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %4, align 4
  br label %130

125:                                              ; preds = %83
  %126 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %127 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %125, %118, %111, %104, %100, %96, %92, %88, %87
  %131 = load i32, i32* @VF610_ADC_AVGS_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %4, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %4, align 4
  %135 = load i32, i32* @VF610_ADC_AVGEN, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load %struct.vf610_adc_feature*, %struct.vf610_adc_feature** %3, align 8
  %140 = getelementptr inbounds %struct.vf610_adc_feature, %struct.vf610_adc_feature* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  switch i32 %141, label %168 [
    i32 132, label %142
    i32 129, label %143
    i32 128, label %147
    i32 131, label %154
    i32 130, label %161
  ]

142:                                              ; preds = %130
  br label %173

143:                                              ; preds = %130
  %144 = load i32, i32* @VF610_ADC_AVGEN, align 4
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  br label %173

147:                                              ; preds = %130
  %148 = load i32, i32* @VF610_ADC_AVGEN, align 4
  %149 = load i32, i32* %5, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* @VF610_ADC_AVGS_8, align 4
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  br label %173

154:                                              ; preds = %130
  %155 = load i32, i32* @VF610_ADC_AVGEN, align 4
  %156 = load i32, i32* %5, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* @VF610_ADC_AVGS_16, align 4
  %159 = load i32, i32* %4, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %4, align 4
  br label %173

161:                                              ; preds = %130
  %162 = load i32, i32* @VF610_ADC_AVGEN, align 4
  %163 = load i32, i32* %5, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* @VF610_ADC_AVGS_32, align 4
  %166 = load i32, i32* %4, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %4, align 4
  br label %173

168:                                              ; preds = %130
  %169 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %170 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @dev_err(i32 %171, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %173

173:                                              ; preds = %168, %161, %154, %147, %143, %142
  %174 = load i32, i32* %4, align 4
  %175 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %176 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @VF610_REG_ADC_CFG, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  %181 = load i32, i32* %5, align 4
  %182 = load %struct.vf610_adc*, %struct.vf610_adc** %2, align 8
  %183 = getelementptr inbounds %struct.vf610_adc, %struct.vf610_adc* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @VF610_REG_ADC_GC, align 8
  %186 = add nsw i64 %184, %185
  %187 = call i32 @writel(i32 %181, i64 %186)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
