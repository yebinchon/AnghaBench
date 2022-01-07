; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_tsc = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@LPC32XX_TSC_STAT = common dso_local global i32 0, align 4
@LPC32XX_TSC_STAT_FIFO_OVRRN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@LPC32XX_TSC_STAT_FIFO_EMPTY = common dso_local global i32 0, align 4
@LPC32XX_TSC_FIFO = common dso_local global i32 0, align 4
@LPC32XX_TSC_ADCDAT_VALUE_MASK = common dso_local global i32 0, align 4
@LPC32XX_TSC_FIFO_TS_P_LEVEL = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lpc32xx_ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_ts_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca %struct.lpc32xx_tsc*, align 8
  %12 = alloca %struct.input_dev*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.lpc32xx_tsc*
  store %struct.lpc32xx_tsc* %14, %struct.lpc32xx_tsc** %11, align 8
  %15 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %11, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %15, i32 0, i32 0
  %17 = load %struct.input_dev*, %struct.input_dev** %16, align 8
  store %struct.input_dev* %17, %struct.input_dev** %12, align 8
  %18 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %11, align 8
  %19 = load i32, i32* @LPC32XX_TSC_STAT, align 4
  %20 = call i32 @tsc_readl(%struct.lpc32xx_tsc* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @LPC32XX_TSC_STAT_FIFO_OVRRN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %11, align 8
  %27 = call i32 @lpc32xx_fifo_clear(%struct.lpc32xx_tsc* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %3, align 4
  br label %106

29:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %43, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 4
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %11, align 8
  %35 = load i32, i32* @LPC32XX_TSC_STAT, align 4
  %36 = call i32 @tsc_readl(%struct.lpc32xx_tsc* %34, i32 %35)
  %37 = load i32, i32* @LPC32XX_TSC_STAT_FIFO_EMPTY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %33, %30
  %42 = phi i1 [ false, %30 ], [ %40, %33 ]
  br i1 %42, label %43, label %67

43:                                               ; preds = %41
  %44 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %11, align 8
  %45 = load i32, i32* @LPC32XX_TSC_FIFO, align 4
  %46 = call i32 @tsc_readl(%struct.lpc32xx_tsc* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @LPC32XX_TSC_ADCDAT_VALUE_MASK, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @LPC32XX_TSC_FIFO_NORMALIZE_X_VAL(i32 %48)
  %50 = sub nsw i32 %47, %49
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %52
  store i32 %50, i32* %53, align 4
  %54 = load i32, i32* @LPC32XX_TSC_ADCDAT_VALUE_MASK, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @LPC32XX_TSC_FIFO_NORMALIZE_Y_VAL(i32 %55)
  %57 = sub nsw i32 %54, %56
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %30

67:                                               ; preds = %41
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @LPC32XX_TSC_FIFO_TS_P_LEVEL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %98, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %78 = load i32, i32* @ABS_X, align 4
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %80, %82
  %84 = sdiv i32 %83, 2
  %85 = call i32 @input_report_abs(%struct.input_dev* %77, i32 %78, i32 %84)
  %86 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %87 = load i32, i32* @ABS_Y, align 4
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %89, %91
  %93 = sdiv i32 %92, 2
  %94 = call i32 @input_report_abs(%struct.input_dev* %86, i32 %87, i32 %93)
  %95 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %96 = load i32, i32* @BTN_TOUCH, align 4
  %97 = call i32 @input_report_key(%struct.input_dev* %95, i32 %96, i32 1)
  br label %102

98:                                               ; preds = %73, %67
  %99 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %100 = load i32, i32* @BTN_TOUCH, align 4
  %101 = call i32 @input_report_key(%struct.input_dev* %99, i32 %100, i32 0)
  br label %102

102:                                              ; preds = %98, %76
  %103 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  %104 = call i32 @input_sync(%struct.input_dev* %103)
  %105 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %102, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @tsc_readl(%struct.lpc32xx_tsc*, i32) #1

declare dso_local i32 @lpc32xx_fifo_clear(%struct.lpc32xx_tsc*) #1

declare dso_local i32 @LPC32XX_TSC_FIFO_NORMALIZE_X_VAL(i32) #1

declare dso_local i32 @LPC32XX_TSC_FIFO_NORMALIZE_Y_VAL(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
