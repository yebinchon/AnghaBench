; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_mod_states.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_lpc32xx-keys.c_lpc32xx_mod_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_kscan_drv = type { i32*, i32*, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@EV_MSC = common dso_local global i32 0, align 4
@MSC_SCAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_kscan_drv*, i32)* @lpc32xx_mod_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc32xx_mod_states(%struct.lpc32xx_kscan_drv* %0, i32 %1) #0 {
  %3 = alloca %struct.lpc32xx_kscan_drv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.lpc32xx_kscan_drv* %0, %struct.lpc32xx_kscan_drv** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %12 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %11, i32 0, i32 4
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %5, align 8
  %14 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %15 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @LPC32XX_KS_DATA(i32 %16, i32 %17)
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %20, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %31 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %29, i32* %35, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %70, %2
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 1
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %47 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @MATRIX_SCAN_CODE(i32 %44, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.lpc32xx_kscan_drv*, %struct.lpc32xx_kscan_drv** %3, align 8
  %51 = getelementptr inbounds %struct.lpc32xx_kscan_drv, %struct.lpc32xx_kscan_drv* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %58 = load i32, i32* @EV_MSC, align 4
  %59 = load i32, i32* @MSC_SCAN, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @input_event(%struct.input_dev* %57, i32 %58, i32 %59, i32 %60)
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %6, align 4
  %66 = shl i32 1, %65
  %67 = and i32 %64, %66
  %68 = call i32 @input_report_key(%struct.input_dev* %62, i32 %63, i32 %67)
  br label %69

69:                                               ; preds = %43, %39
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %36

75:                                               ; preds = %36
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @LPC32XX_KS_DATA(i32, i32) #1

declare dso_local i32 @MATRIX_SCAN_CODE(i32, i32, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
