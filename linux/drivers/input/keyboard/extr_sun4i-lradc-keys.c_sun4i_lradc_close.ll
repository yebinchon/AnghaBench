; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_sun4i-lradc-keys.c_sun4i_lradc_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.sun4i_lradc_data = type { i32, i64 }

@LRADC_CTRL = common dso_local global i64 0, align 8
@LRADC_INTC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_dev*)* @sun4i_lradc_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_lradc_close(%struct.input_dev* %0) #0 {
  %2 = alloca %struct.input_dev*, align 8
  %3 = alloca %struct.sun4i_lradc_data*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %2, align 8
  %4 = load %struct.input_dev*, %struct.input_dev** %2, align 8
  %5 = call %struct.sun4i_lradc_data* @input_get_drvdata(%struct.input_dev* %4)
  store %struct.sun4i_lradc_data* %5, %struct.sun4i_lradc_data** %3, align 8
  %6 = call i32 @FIRST_CONVERT_DLY(i32 2)
  %7 = call i32 @LEVELA_B_CNT(i32 1)
  %8 = or i32 %6, %7
  %9 = call i32 @HOLD_EN(i32 1)
  %10 = or i32 %8, %9
  %11 = call i32 @SAMPLE_RATE(i32 2)
  %12 = or i32 %10, %11
  %13 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %3, align 8
  %14 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LRADC_CTRL, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %3, align 8
  %20 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @LRADC_INTC, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 0, i64 %23)
  %25 = load %struct.sun4i_lradc_data*, %struct.sun4i_lradc_data** %3, align 8
  %26 = getelementptr inbounds %struct.sun4i_lradc_data, %struct.sun4i_lradc_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_disable(i32 %27)
  ret void
}

declare dso_local %struct.sun4i_lradc_data* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @FIRST_CONVERT_DLY(i32) #1

declare dso_local i32 @LEVELA_B_CNT(i32) #1

declare dso_local i32 @HOLD_EN(i32) #1

declare dso_local i32 @SAMPLE_RATE(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
