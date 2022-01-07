; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_single_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-adc.c_stm32_adc_single_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iio_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.iio_chan_spec = type { i32 }
%struct.stm32_adc = type { i32*, i32*, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i32 (%struct.stm32_adc*)*, i32 (%struct.stm32_adc*, i32)*, %struct.stm32_adc_regspec* }
%struct.stm32_adc_regspec = type { %struct.TYPE_7__, %struct.TYPE_6__*, i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@STM32_ADC_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@IIO_VAL_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iio_dev*, %struct.iio_chan_spec*, i32*)* @stm32_adc_single_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_adc_single_conv(%struct.iio_dev* %0, %struct.iio_chan_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iio_dev*, align 8
  %6 = alloca %struct.iio_chan_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stm32_adc*, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.stm32_adc_regspec*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iio_dev* %0, %struct.iio_dev** %5, align 8
  store %struct.iio_chan_spec* %1, %struct.iio_chan_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %15 = call %struct.stm32_adc* @iio_priv(%struct.iio_dev* %14)
  store %struct.stm32_adc* %15, %struct.stm32_adc** %8, align 8
  %16 = load %struct.iio_dev*, %struct.iio_dev** %5, align 8
  %17 = getelementptr inbounds %struct.iio_dev, %struct.iio_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %9, align 8
  %20 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %21 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %23, align 8
  store %struct.stm32_adc_regspec* %24, %struct.stm32_adc_regspec** %10, align 8
  %25 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %26 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %25, i32 0, i32 3
  %27 = call i32 @reinit_completion(i32* %26)
  %28 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %29 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = call i32 @pm_runtime_get_sync(%struct.device* %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.device*, %struct.device** %9, align 8
  %36 = call i32 @pm_runtime_put_noidle(%struct.device* %35)
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %4, align 4
  br label %173

38:                                               ; preds = %3
  %39 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %40 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %41 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %46 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @stm32_adc_writel(%struct.stm32_adc* %39, i32 %44, i32 %49)
  %51 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %52 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %53 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %58 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @stm32_adc_writel(%struct.stm32_adc* %51, i32 %56, i32 %61)
  %63 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %64 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %65 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @stm32_adc_readl(%struct.stm32_adc* %63, i32 %69)
  store i32 %70, i32* %12, align 4
  %71 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %72 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %12, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %12, align 4
  %80 = load %struct.iio_chan_spec*, %struct.iio_chan_spec** %6, align 8
  %81 = getelementptr inbounds %struct.iio_chan_spec, %struct.iio_chan_spec* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %84 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %82, %88
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  %92 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %93 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %94 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %93, i32 0, i32 1
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @stm32_adc_writel(%struct.stm32_adc* %92, i32 %98, i32 %99)
  %101 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %102 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %103 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %109 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %108, i32 0, i32 1
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %101, i32 %107, i32 %113)
  %115 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %116 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %117 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.stm32_adc_regspec*, %struct.stm32_adc_regspec** %10, align 8
  %121 = getelementptr inbounds %struct.stm32_adc_regspec, %struct.stm32_adc_regspec* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @stm32_adc_clr_bits(%struct.stm32_adc* %115, i32 %119, i32 %123)
  %125 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %126 = call i32 @stm32_adc_conv_irq_enable(%struct.stm32_adc* %125)
  %127 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %128 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %127, i32 0, i32 2
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32 (%struct.stm32_adc*, i32)*, i32 (%struct.stm32_adc*, i32)** %130, align 8
  %132 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %133 = call i32 %131(%struct.stm32_adc* %132, i32 0)
  %134 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %135 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %134, i32 0, i32 3
  %136 = load i32, i32* @STM32_ADC_TIMEOUT, align 4
  %137 = call i64 @wait_for_completion_interruptible_timeout(i32* %135, i32 %136)
  store i64 %137, i64* %11, align 8
  %138 = load i64, i64* %11, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %38
  %141 = load i32, i32* @ETIMEDOUT, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %13, align 4
  br label %158

143:                                              ; preds = %38
  %144 = load i64, i64* %11, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %143
  %147 = load i64, i64* %11, align 8
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %13, align 4
  br label %157

149:                                              ; preds = %143
  %150 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %151 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %7, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @IIO_VAL_INT, align 4
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %149, %146
  br label %158

158:                                              ; preds = %157, %140
  %159 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %160 = getelementptr inbounds %struct.stm32_adc, %struct.stm32_adc* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32 (%struct.stm32_adc*)*, i32 (%struct.stm32_adc*)** %162, align 8
  %164 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %165 = call i32 %163(%struct.stm32_adc* %164)
  %166 = load %struct.stm32_adc*, %struct.stm32_adc** %8, align 8
  %167 = call i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc* %166)
  %168 = load %struct.device*, %struct.device** %9, align 8
  %169 = call i32 @pm_runtime_mark_last_busy(%struct.device* %168)
  %170 = load %struct.device*, %struct.device** %9, align 8
  %171 = call i32 @pm_runtime_put_autosuspend(%struct.device* %170)
  %172 = load i32, i32* %13, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %158, %34
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local %struct.stm32_adc* @iio_priv(%struct.iio_dev*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @stm32_adc_writel(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_readl(%struct.stm32_adc*, i32) #1

declare dso_local i32 @stm32_adc_clr_bits(%struct.stm32_adc*, i32, i32) #1

declare dso_local i32 @stm32_adc_conv_irq_enable(%struct.stm32_adc*) #1

declare dso_local i64 @wait_for_completion_interruptible_timeout(i32*, i32) #1

declare dso_local i32 @stm32_adc_conv_irq_disable(%struct.stm32_adc*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
