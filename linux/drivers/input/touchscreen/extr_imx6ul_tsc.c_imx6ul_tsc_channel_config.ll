; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_channel_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_channel_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i64 }

@DISABLE_CONVERSION_INT = common dso_local global i32 0, align 4
@REG_ADC_HC0 = common dso_local global i64 0, align 8
@SELECT_CHANNEL_4 = common dso_local global i32 0, align 4
@REG_ADC_HC1 = common dso_local global i64 0, align 8
@REG_ADC_HC2 = common dso_local global i64 0, align 8
@SELECT_CHANNEL_1 = common dso_local global i32 0, align 4
@REG_ADC_HC3 = common dso_local global i64 0, align 8
@REG_ADC_HC4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6ul_tsc*)* @imx6ul_tsc_channel_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6ul_tsc_channel_config(%struct.imx6ul_tsc* %0) #0 {
  %2 = alloca %struct.imx6ul_tsc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.imx6ul_tsc* %0, %struct.imx6ul_tsc** %2, align 8
  %8 = load i32, i32* @DISABLE_CONVERSION_INT, align 4
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %11 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @REG_ADC_HC0, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  %16 = load i32, i32* @DISABLE_CONVERSION_INT, align 4
  %17 = load i32, i32* @SELECT_CHANNEL_4, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %21 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @REG_ADC_HC1, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load i32, i32* @DISABLE_CONVERSION_INT, align 4
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %29 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_ADC_HC2, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @DISABLE_CONVERSION_INT, align 4
  %35 = load i32, i32* @SELECT_CHANNEL_1, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %39 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_ADC_HC3, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* @DISABLE_CONVERSION_INT, align 4
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %47 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @REG_ADC_HC4, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
