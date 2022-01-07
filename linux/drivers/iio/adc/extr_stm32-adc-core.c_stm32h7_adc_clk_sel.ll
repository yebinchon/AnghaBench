; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32h7_adc_clk_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc-core.c_stm32h7_adc_clk_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.platform_device = type { i32 }
%struct.stm32_adc_priv = type { %struct.TYPE_6__, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"No 'bus' clock found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid adc clock rate: 0\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@stm32h7_adc_ckmodes_spec = common dso_local global %struct.TYPE_7__* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid bus clock rate: 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"adc clk selection failed\0A\00", align 1
@STM32H7_ADC_CCR = common dso_local global i64 0, align 8
@STM32H7_CKMODE_MASK = common dso_local global i32 0, align 4
@STM32H7_PRESC_MASK = common dso_local global i32 0, align 4
@STM32H7_CKMODE_SHIFT = common dso_local global i32 0, align 4
@STM32H7_PRESC_SHIFT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Using %s clock/%d source at %ld kHz\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.stm32_adc_priv*)* @stm32h7_adc_clk_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32h7_adc_clk_sel(%struct.platform_device* %0, %struct.stm32_adc_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.stm32_adc_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.stm32_adc_priv* %1, %struct.stm32_adc_priv** %5, align 8
  %12 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %13 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENOENT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %201

22:                                               ; preds = %2
  %23 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %24 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %85

27:                                               ; preds = %22
  %28 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %29 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @clk_get_rate(i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %36 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %201

40:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %81, %40
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %44 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %43)
  %45 = icmp slt i32 %42, %44
  br i1 %45, label %46, label %84

46:                                               ; preds = %41
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %46
  br label %81

68:                                               ; preds = %46
  %69 = load i64, i64* %9, align 8
  %70 = load i32, i32* %11, align 4
  %71 = sext i32 %70 to i64
  %72 = udiv i64 %69, %71
  %73 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %74 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ule i64 %72, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %148

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %67
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %41

84:                                               ; preds = %41
  br label %85

85:                                               ; preds = %84, %22
  %86 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %87 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = call i64 @clk_get_rate(i64 %88)
  store i64 %89, i64* %9, align 8
  %90 = load i64, i64* %9, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %85
  %93 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %94 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(i32* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %201

98:                                               ; preds = %85
  store i32 0, i32* %10, align 4
  br label %99

99:                                               ; preds = %139, %98
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %102 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %101)
  %103 = icmp slt i32 %100, %102
  br i1 %103, label %104, label %142

104:                                              ; preds = %99
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %106 = load i32, i32* %10, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %6, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %7, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stm32h7_adc_ckmodes_spec, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %6, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %104
  br label %139

126:                                              ; preds = %104
  %127 = load i64, i64* %9, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = udiv i64 %127, %129
  %131 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %132 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %131, i32 0, i32 1
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ule i64 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %126
  br label %148

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %125
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %99

142:                                              ; preds = %99
  %143 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = call i32 @dev_err(i32* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %146 = load i32, i32* @EINVAL, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %3, align 4
  br label %201

148:                                              ; preds = %137, %79
  %149 = load i64, i64* %9, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = udiv i64 %149, %151
  %153 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %154 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  store i64 %152, i64* %155, align 8
  %156 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %157 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @STM32H7_ADC_CCR, align 8
  %161 = add nsw i64 %159, %160
  %162 = call i32 @readl_relaxed(i64 %161)
  store i32 %162, i32* %8, align 4
  %163 = load i32, i32* @STM32H7_CKMODE_MASK, align 4
  %164 = load i32, i32* @STM32H7_PRESC_MASK, align 4
  %165 = or i32 %163, %164
  %166 = xor i32 %165, -1
  %167 = load i32, i32* %8, align 4
  %168 = and i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @STM32H7_CKMODE_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = load i32, i32* %8, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %7, align 4
  %175 = load i32, i32* @STM32H7_PRESC_SHIFT, align 4
  %176 = shl i32 %174, %175
  %177 = load i32, i32* %8, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %181 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @STM32H7_ADC_CCR, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel_relaxed(i32 %179, i64 %185)
  %187 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %188 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %187, i32 0, i32 0
  %189 = load i32, i32* %6, align 4
  %190 = icmp ne i32 %189, 0
  %191 = zext i1 %190 to i64
  %192 = select i1 %190, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)
  %193 = load i32, i32* %11, align 4
  %194 = load %struct.stm32_adc_priv*, %struct.stm32_adc_priv** %5, align 8
  %195 = getelementptr inbounds %struct.stm32_adc_priv, %struct.stm32_adc_priv* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = udiv i64 %197, 1000
  %199 = trunc i64 %198 to i32
  %200 = call i32 @dev_dbg(i32* %188, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i8* %192, i32 %193, i32 %199)
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %148, %142, %92, %34, %16
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @clk_get_rate(i64) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
