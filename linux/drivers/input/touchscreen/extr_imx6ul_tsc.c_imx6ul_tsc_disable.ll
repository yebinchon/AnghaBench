; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i64, i64 }

@REG_TSC_FLOW_CONTROL = common dso_local global i64 0, align 8
@TSC_DISABLE = common dso_local global i32 0, align 4
@REG_ADC_HC0 = common dso_local global i64 0, align 8
@ADC_CONV_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6ul_tsc*)* @imx6ul_tsc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6ul_tsc_disable(%struct.imx6ul_tsc* %0) #0 {
  %2 = alloca %struct.imx6ul_tsc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx6ul_tsc* %0, %struct.imx6ul_tsc** %2, align 8
  %5 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %6 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @TSC_DISABLE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %16 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %22 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_ADC_HC0, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* @ADC_CONV_DISABLE, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %32 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_ADC_HC0, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
