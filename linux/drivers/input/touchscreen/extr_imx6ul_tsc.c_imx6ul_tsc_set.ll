; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i32, i32, i64 }

@DETECT_4_WIRE_MODE = common dso_local global i32 0, align 4
@AUTO_MEASURE = common dso_local global i32 0, align 4
@REG_TSC_BASIC_SETING = common dso_local global i64 0, align 8
@DE_GLITCH_2 = common dso_local global i32 0, align 4
@REG_TSC_DEBUG_MODE2 = common dso_local global i64 0, align 8
@REG_TSC_PRE_CHARGE_TIME = common dso_local global i64 0, align 8
@MEASURE_INT_EN = common dso_local global i32 0, align 4
@REG_TSC_INT_EN = common dso_local global i64 0, align 8
@MEASURE_SIG_EN = common dso_local global i32 0, align 4
@VALID_SIG_EN = common dso_local global i32 0, align 4
@REG_TSC_INT_SIG_EN = common dso_local global i64 0, align 8
@REG_TSC_FLOW_CONTROL = common dso_local global i64 0, align 8
@START_SENSE = common dso_local global i32 0, align 4
@TSC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6ul_tsc*)* @imx6ul_tsc_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx6ul_tsc_set(%struct.imx6ul_tsc* %0) #0 {
  %2 = alloca %struct.imx6ul_tsc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx6ul_tsc* %0, %struct.imx6ul_tsc** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %6 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = shl i32 %7, 8
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @DETECT_4_WIRE_MODE, align 4
  %12 = load i32, i32* @AUTO_MEASURE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %18 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_TSC_BASIC_SETING, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* @DE_GLITCH_2, align 4
  %24 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %25 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_TSC_DEBUG_MODE2, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %31 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %34 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_TSC_PRE_CHARGE_TIME, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load i32, i32* @MEASURE_INT_EN, align 4
  %40 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %41 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_TSC_INT_EN, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load i32, i32* @MEASURE_SIG_EN, align 4
  %47 = load i32, i32* @VALID_SIG_EN, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %50 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_TSC_INT_SIG_EN, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 %48, i64 %53)
  %55 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %56 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* @START_SENSE, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* @TSC_DISABLE, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %2, align 8
  %70 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
