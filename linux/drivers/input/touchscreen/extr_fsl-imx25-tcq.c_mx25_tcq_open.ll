; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_fsl-imx25-tcq.c_mx25_tcq_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.mx25_tcq_priv = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to enable ipg clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to init tcq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @mx25_tcq_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25_tcq_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mx25_tcq_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.mx25_tcq_priv* @dev_get_drvdata(%struct.device* %9)
  store %struct.mx25_tcq_priv* %10, %struct.mx25_tcq_priv** %5, align 8
  %11 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %12 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @clk_prepare_enable(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %23 = call i32 @mx25_tcq_init(%struct.mx25_tcq_priv* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %30 = getelementptr inbounds %struct.mx25_tcq_priv, %struct.mx25_tcq_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_disable_unprepare(i32 %31)
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %37

34:                                               ; preds = %21
  %35 = load %struct.mx25_tcq_priv*, %struct.mx25_tcq_priv** %5, align 8
  %36 = call i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv* %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %26, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.mx25_tcq_priv* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @mx25_tcq_init(%struct.mx25_tcq_priv*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @mx25_tcq_re_enable_touch_detection(%struct.mx25_tcq_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
