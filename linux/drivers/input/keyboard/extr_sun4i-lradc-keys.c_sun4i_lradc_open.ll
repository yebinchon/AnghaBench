; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sun4i_lradc_data = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@LRADC_CTRL = common dso_local global i64 0, align 8
@CHAN0_KEYUP_IRQ = common dso_local global i32 0, align 4
@CHAN0_KEYDOWN_IRQ = common dso_local global i32 0, align 4
@LRADC_INTC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @sun4i_lradc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_lradc_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.sun4i_lradc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.sun4i_lradc_data* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.sun4i_lradc_data* %7, %struct.sun4i_lradc_data** %4, align 8
  %8 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %9 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @regulator_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %59

16:                                               ; preds = %1
  %17 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @regulator_get_voltage(i32 %19)
  %21 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %22 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %20, %25
  %27 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %28 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %26, %31
  %33 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %34 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = call i32 @FIRST_CONVERT_DLY(i32 2)
  %36 = call i32 @LEVELA_B_CNT(i32 1)
  %37 = or i32 %35, %36
  %38 = call i32 @HOLD_EN(i32 1)
  %39 = or i32 %37, %38
  %40 = call i32 @SAMPLE_RATE(i32 0)
  %41 = or i32 %39, %40
  %42 = call i32 @ENABLE(i32 1)
  %43 = or i32 %41, %42
  %44 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %45 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LRADC_CTRL, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* @CHAN0_KEYUP_IRQ, align 4
  %51 = load i32, i32* @CHAN0_KEYDOWN_IRQ, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %4, align 8
  %54 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LRADC_INTC, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 %52, i64 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %16, %14
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.sun4i_lradc_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @regulator_get_voltage(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIRST_CONVERT_DLY(i32) #1

declare dso_local i32 @LEVELA_B_CNT(i32) #1

declare dso_local i32 @HOLD_EN(i32) #1

declare dso_local i32 @SAMPLE_RATE(i32) #1

declare dso_local i32 @ENABLE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
