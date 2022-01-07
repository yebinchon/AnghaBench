; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_tsc_irq_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_tsc_irq_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i32, i32, i64 }

@REG_TSC_INT_STATUS = common dso_local global i64 0, align 8
@MEASURE_SIGNAL = common dso_local global i32 0, align 4
@DETECT_SIGNAL = common dso_local global i32 0, align 4
@REG_TSC_FLOW_CONTROL = common dso_local global i64 0, align 8
@START_SENSE = common dso_local global i32 0, align 4
@REG_TSC_MEASURE_VALUE = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsc_irq_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc_irq_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imx6ul_tsc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.imx6ul_tsc*
  store %struct.imx6ul_tsc* %12, %struct.imx6ul_tsc** %5, align 8
  %13 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %14 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @REG_TSC_INT_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @MEASURE_SIGNAL, align 4
  %20 = load i32, i32* @DETECT_SIGNAL, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %23 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @REG_TSC_INT_STATUS, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %29 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* @START_SENSE, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %39 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_TSC_FLOW_CONTROL, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MEASURE_SIGNAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %2
  %49 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %50 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @REG_TSC_MEASURE_VALUE, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 4095
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 4095
  store i32 %59, i32* %9, align 4
  %60 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %61 = call i32 @tsc_wait_detect_mode(%struct.imx6ul_tsc* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %48
  %64 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %65 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @gpiod_get_value_cansleep(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %63, %48
  %70 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %71 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BTN_TOUCH, align 4
  %74 = call i32 @input_report_key(i32 %72, i32 %73, i32 1)
  %75 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %76 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ABS_X, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @input_report_abs(i32 %77, i32 %78, i32 %79)
  %81 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %82 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ABS_Y, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @input_report_abs(i32 %83, i32 %84, i32 %85)
  br label %93

87:                                               ; preds = %63
  %88 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %89 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BTN_TOUCH, align 4
  %92 = call i32 @input_report_key(i32 %90, i32 %91, i32 0)
  br label %93

93:                                               ; preds = %87, %69
  %94 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %5, align 8
  %95 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @input_sync(i32 %96)
  br label %98

98:                                               ; preds = %93, %2
  %99 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %99
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tsc_wait_detect_mode(%struct.imx6ul_tsc*) #1

declare dso_local i64 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
