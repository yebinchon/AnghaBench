; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_adc_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_windfarm_ad7417_sensor.c_wf_ad7417_adc_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wf_ad7417_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ADC_12V_CURRENT_SCALE = common dso_local global i32 0, align 4
@ADC_CPU_VOLTAGE_SCALE = common dso_local global i32 0, align 4
@ADC_CPU_CURRENT_SCALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wf_ad7417_priv*, i32, i32, i32*)* @wf_ad7417_adc_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wf_ad7417_adc_convert(%struct.wf_ad7417_priv* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.wf_ad7417_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.wf_ad7417_priv* %0, %struct.wf_ad7417_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %42 [
    i32 1, label %10
    i32 2, label %27
    i32 3, label %32
    i32 4, label %37
  ]

10:                                               ; preds = %4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %13 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %11, %16
  %18 = load %struct.wf_ad7417_priv*, %struct.wf_ad7417_priv** %5, align 8
  %19 = getelementptr inbounds %struct.wf_ad7417_priv, %struct.wf_ad7417_priv* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 12
  %24 = add nsw i32 %17, %23
  %25 = ashr i32 %24, 2
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %42

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @ADC_12V_CURRENT_SCALE, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %42

32:                                               ; preds = %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @ADC_CPU_VOLTAGE_SCALE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %42

37:                                               ; preds = %4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ADC_CPU_CURRENT_SCALE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %4, %37, %32, %27, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
