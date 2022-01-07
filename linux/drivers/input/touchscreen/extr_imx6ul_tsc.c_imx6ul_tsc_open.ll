; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_imx6ul_tsc_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.imx6ul_tsc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Could not prepare or enable the adc clock: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Could not prepare or enable the tsc clock: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @imx6ul_tsc_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx6ul_tsc_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.imx6ul_tsc*, align 8
  %5 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.imx6ul_tsc* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.imx6ul_tsc* %7, %struct.imx6ul_tsc** %4, align 8
  %8 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %9 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_prepare_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %16 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %52

21:                                               ; preds = %1
  %22 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %23 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @clk_prepare_enable(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %30 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %46

34:                                               ; preds = %21
  %35 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %36 = call i32 @imx6ul_tsc_init(%struct.imx6ul_tsc* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %41

40:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %52

41:                                               ; preds = %39
  %42 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %43 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_disable_unprepare(i32 %44)
  br label %46

46:                                               ; preds = %41, %28
  %47 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %4, align 8
  %48 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable_unprepare(i32 %49)
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %40, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local %struct.imx6ul_tsc* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @imx6ul_tsc_init(%struct.imx6ul_tsc*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
