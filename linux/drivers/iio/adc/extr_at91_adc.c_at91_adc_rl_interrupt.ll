; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_rl_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_at91_adc.c_at91_adc_rl_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { i32 }
%struct.at91_adc_state = type { i32, i32, i32, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@AT91_ADC_IMR = common dso_local global i32 0, align 4
@AT91RL_ADC_IER_PEN = common dso_local global i32 0, align 4
@AT91_ADC_MR = common dso_local global i32 0, align 4
@AT91_ADC_PENDBC = common dso_local global i32 0, align 4
@AT91_ADC_IDR = common dso_local global i32 0, align 4
@AT91_ADC_IER = common dso_local global i32 0, align 4
@AT91RL_ADC_IER_NOPEN = common dso_local global i32 0, align 4
@AT91_ADC_TRGR_MOD_PERIOD_TRIG = common dso_local global i32 0, align 4
@AT91_ADC_TRGR_NONE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@MAX_RLPOS_BITS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_adc_rl_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_adc_rl_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.at91_adc_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.iio_dev*
  store %struct.iio_dev* %10, %struct.iio_dev** %5, align 8
  %11 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %12 = call %struct.at91_adc_state* @iio_priv(%struct.iio_dev* %11)
  store %struct.at91_adc_state* %12, %struct.at91_adc_state** %6, align 8
  %13 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %14 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %15 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @at91_adc_readl(%struct.at91_adc_state* %13, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %21 = load i32, i32* @AT91_ADC_IMR, align 4
  %22 = call i32 @at91_adc_readl(%struct.at91_adc_state* %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %27 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %26, i32 0, i32 7
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @GENMASK(i64 %29, i32 0)
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %36 = call i32 @handle_adc_eoc_trigger(i32 %34, %struct.iio_dev* %35)
  br label %37

37:                                               ; preds = %33, %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @AT91RL_ADC_IER_PEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %77

42:                                               ; preds = %37
  %43 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %44 = load i32, i32* @AT91_ADC_MR, align 4
  %45 = call i32 @at91_adc_readl(%struct.at91_adc_state* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* @AT91_ADC_PENDBC, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %51 = load i32, i32* @AT91_ADC_MR, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @at91_adc_writel(%struct.at91_adc_state* %50, i32 %51, i32 %52)
  %54 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %55 = load i32, i32* @AT91_ADC_IDR, align 4
  %56 = load i32, i32* @AT91RL_ADC_IER_PEN, align 4
  %57 = call i32 @at91_adc_writel(%struct.at91_adc_state* %54, i32 %55, i32 %56)
  %58 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %59 = load i32, i32* @AT91_ADC_IER, align 4
  %60 = load i32, i32* @AT91RL_ADC_IER_NOPEN, align 4
  %61 = call i32 @AT91_ADC_EOC(i32 3)
  %62 = or i32 %60, %61
  %63 = call i32 @at91_adc_writel(%struct.at91_adc_state* %58, i32 %59, i32 %62)
  %64 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %65 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %66 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %65, i32 0, i32 4
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AT91_ADC_TRGR_MOD_PERIOD_TRIG, align 4
  %71 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %72 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @AT91_ADC_TRGR_TRGPER_(i32 %73)
  %75 = or i32 %70, %74
  %76 = call i32 @at91_adc_writel(%struct.at91_adc_state* %64, i32 %69, i32 %75)
  br label %206

77:                                               ; preds = %37
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @AT91RL_ADC_IER_NOPEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %77
  %83 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %84 = load i32, i32* @AT91_ADC_MR, align 4
  %85 = call i32 @at91_adc_readl(%struct.at91_adc_state* %83, i32 %84)
  store i32 %85, i32* %8, align 4
  %86 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %87 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @AT91_ADC_PENDBC_(i32 %88)
  %90 = load i32, i32* @AT91_ADC_PENDBC, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %95 = load i32, i32* @AT91_ADC_MR, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @at91_adc_writel(%struct.at91_adc_state* %94, i32 %95, i32 %96)
  %98 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %99 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %100 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %99, i32 0, i32 4
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @AT91_ADC_TRGR_NONE, align 4
  %105 = call i32 @at91_adc_writel(%struct.at91_adc_state* %98, i32 %103, i32 %104)
  %106 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %107 = load i32, i32* @AT91_ADC_IDR, align 4
  %108 = load i32, i32* @AT91RL_ADC_IER_NOPEN, align 4
  %109 = call i32 @AT91_ADC_EOC(i32 3)
  %110 = or i32 %108, %109
  %111 = call i32 @at91_adc_writel(%struct.at91_adc_state* %106, i32 %107, i32 %110)
  %112 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %113 = load i32, i32* @AT91_ADC_IER, align 4
  %114 = load i32, i32* @AT91RL_ADC_IER_PEN, align 4
  %115 = call i32 @at91_adc_writel(%struct.at91_adc_state* %112, i32 %113, i32 %114)
  %116 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %117 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %116, i32 0, i32 0
  store i32 0, i32* %117, align 8
  %118 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %119 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %118, i32 0, i32 3
  %120 = load i64, i64* %119, align 8
  %121 = load i32, i32* @BTN_TOUCH, align 4
  %122 = call i32 @input_report_key(i64 %120, i32 %121, i32 0)
  %123 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %124 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @input_sync(i64 %125)
  br label %205

127:                                              ; preds = %77
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @AT91_ADC_EOC(i32 3)
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %204

132:                                              ; preds = %127
  %133 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %134 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %204

137:                                              ; preds = %132
  %138 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %139 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %168

142:                                              ; preds = %137
  %143 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %144 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i32, i32* @ABS_X, align 4
  %147 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %148 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @input_report_abs(i64 %145, i32 %146, i32 %149)
  %151 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %152 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @ABS_Y, align 4
  %155 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %156 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @input_report_abs(i64 %153, i32 %154, i32 %157)
  %159 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %160 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* @BTN_TOUCH, align 4
  %163 = call i32 @input_report_key(i64 %161, i32 %162, i32 1)
  %164 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %165 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @input_sync(i64 %166)
  br label %171

168:                                              ; preds = %137
  %169 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %170 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %169, i32 0, i32 0
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %142
  %172 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %173 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %174 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %173, i32 3)
  %175 = call i32 @at91_adc_readl(%struct.at91_adc_state* %172, i32 %174)
  %176 = load i32, i32* @MAX_RLPOS_BITS, align 4
  %177 = shl i32 %175, %176
  %178 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %179 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %181 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %182 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %181, i32 2)
  %183 = call i32 @at91_adc_readl(%struct.at91_adc_state* %180, i32 %182)
  %184 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %185 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sdiv i32 %186, %183
  store i32 %187, i32* %185, align 4
  %188 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %189 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %190 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %189, i32 1)
  %191 = call i32 @at91_adc_readl(%struct.at91_adc_state* %188, i32 %190)
  %192 = load i32, i32* @MAX_RLPOS_BITS, align 4
  %193 = shl i32 %191, %192
  %194 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %195 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %194, i32 0, i32 2
  store i32 %193, i32* %195, align 8
  %196 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %197 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %198 = call i32 @AT91_ADC_CHAN(%struct.at91_adc_state* %197, i32 0)
  %199 = call i32 @at91_adc_readl(%struct.at91_adc_state* %196, i32 %198)
  %200 = load %struct.at91_adc_state*, %struct.at91_adc_state** %6, align 8
  %201 = getelementptr inbounds %struct.at91_adc_state, %struct.at91_adc_state* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = sdiv i32 %202, %199
  store i32 %203, i32* %201, align 8
  br label %204

204:                                              ; preds = %171, %132, %127
  br label %205

205:                                              ; preds = %204, %82
  br label %206

206:                                              ; preds = %205, %42
  %207 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %207
}

declare dso_local %struct.at91_adc_state* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @at91_adc_readl(%struct.at91_adc_state*, i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @handle_adc_eoc_trigger(i32, %struct.iio_dev*) #1

declare dso_local i32 @at91_adc_writel(%struct.at91_adc_state*, i32, i32) #1

declare dso_local i32 @AT91_ADC_EOC(i32) #1

declare dso_local i32 @AT91_ADC_TRGR_TRGPER_(i32) #1

declare dso_local i32 @AT91_ADC_PENDBC_(i32) #1

declare dso_local i32 @input_report_key(i64, i32, i32) #1

declare dso_local i32 @input_sync(i64) #1

declare dso_local i32 @input_report_abs(i64, i32, i32) #1

declare dso_local i32 @AT91_ADC_CHAN(%struct.at91_adc_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
