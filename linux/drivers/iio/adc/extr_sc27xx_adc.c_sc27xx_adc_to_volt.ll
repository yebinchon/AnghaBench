; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_to_volt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_sc27xx_adc.c_sc27xx_adc_to_volt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc27xx_adc_linear_graph = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc27xx_adc_linear_graph*, i32)* @sc27xx_adc_to_volt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sc27xx_adc_to_volt(%struct.sc27xx_adc_linear_graph* %0, i32 %1) #0 {
  %3 = alloca %struct.sc27xx_adc_linear_graph*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc27xx_adc_linear_graph* %0, %struct.sc27xx_adc_linear_graph** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %7 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %10 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub nsw i32 %8, %11
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %15 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %13, %16
  %18 = mul nsw i32 %12, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %20 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %23 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = sub nsw i32 %21, %24
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.sc27xx_adc_linear_graph*, %struct.sc27xx_adc_linear_graph** %3, align 8
  %29 = getelementptr inbounds %struct.sc27xx_adc_linear_graph, %struct.sc27xx_adc_linear_graph* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  br label %38

38:                                               ; preds = %36, %35
  %39 = phi i32 [ 0, %35 ], [ %37, %36 ]
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
