; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_clk_prepare_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_stm32-dfsdm-core.c_stm32_dfsdm_clk_prepare_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_dfsdm = type { i32 }
%struct.dfsdm_priv = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_dfsdm*)* @stm32_dfsdm_clk_prepare_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_dfsdm_clk_prepare_enable(%struct.stm32_dfsdm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stm32_dfsdm*, align 8
  %4 = alloca %struct.dfsdm_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.stm32_dfsdm* %0, %struct.stm32_dfsdm** %3, align 8
  %6 = load %struct.stm32_dfsdm*, %struct.stm32_dfsdm** %3, align 8
  %7 = call %struct.dfsdm_priv* @to_stm32_dfsdm_priv(%struct.stm32_dfsdm* %6)
  store %struct.dfsdm_priv* %7, %struct.dfsdm_priv** %4, align 8
  %8 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %4, align 8
  %9 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %4, align 8
  %16 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14, %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %4, align 8
  %23 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load %struct.dfsdm_priv*, %struct.dfsdm_priv** %4, align 8
  %30 = getelementptr inbounds %struct.dfsdm_priv, %struct.dfsdm_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  br label %33

33:                                               ; preds = %28, %21
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dfsdm_priv* @to_stm32_dfsdm_priv(%struct.stm32_dfsdm*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
