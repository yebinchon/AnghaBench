; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_spear_adc.c_spear_adc_get_average.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_spear_adc.c_spear_adc_get_average.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_adc_state = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"st,spear600-adc\00", align 1
@SPEAR_ADC_DATA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_adc_state*)* @spear_adc_get_average to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_adc_get_average(%struct.spear_adc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spear_adc_state*, align 8
  store %struct.spear_adc_state* %0, %struct.spear_adc_state** %3, align 8
  %4 = load %struct.spear_adc_state*, %struct.spear_adc_state** %3, align 8
  %5 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @of_device_is_compatible(i32 %6, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.spear_adc_state*, %struct.spear_adc_state** %3, align 8
  %11 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @__raw_readl(i32* %14)
  %16 = load i32, i32* @SPEAR_ADC_DATA_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.spear_adc_state*, %struct.spear_adc_state** %3, align 8
  %20 = getelementptr inbounds %struct.spear_adc_state, %struct.spear_adc_state* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @__raw_readl(i32* %22)
  %24 = load i32, i32* @SPEAR_ADC_DATA_MASK, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %18, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @of_device_is_compatible(i32, i8*) #1

declare dso_local i32 @__raw_readl(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
