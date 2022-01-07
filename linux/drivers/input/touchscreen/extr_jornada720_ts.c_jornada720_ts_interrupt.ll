; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_jornada720_ts.c_jornada720_ts_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_jornada720_ts.c_jornada720_ts_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.jornada_ts = type { i32, i32, i32, %struct.input_dev* }
%struct.input_dev = type { i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@GETTOUCHSAMPLES = common dso_local global i32 0, align 4
@TXDUMMY = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jornada720_ts_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jornada720_ts_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.jornada_ts*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.platform_device*
  store %struct.platform_device* %11, %struct.platform_device** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %13 = call %struct.jornada_ts* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.jornada_ts* %13, %struct.jornada_ts** %6, align 8
  %14 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %15 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %14, i32 0, i32 3
  %16 = load %struct.input_dev*, %struct.input_dev** %15, align 8
  store %struct.input_dev* %16, %struct.input_dev** %7, align 8
  %17 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %18 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @gpiod_get_value(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %24 = load i32, i32* @BTN_TOUCH, align 4
  %25 = call i32 @input_report_key(%struct.input_dev* %23, i32 %24, i32 0)
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = call i32 @input_sync(%struct.input_dev* %26)
  br label %60

28:                                               ; preds = %2
  %29 = call i32 (...) @jornada_ssp_start()
  %30 = load i32, i32* @GETTOUCHSAMPLES, align 4
  %31 = call i64 @jornada_ssp_inout(i32 %30)
  %32 = load i64, i64* @TXDUMMY, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %58

34:                                               ; preds = %28
  %35 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %36 = call i32 @jornada720_ts_collect_data(%struct.jornada_ts* %35)
  %37 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %38 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @jornada720_ts_average(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.jornada_ts*, %struct.jornada_ts** %6, align 8
  %42 = getelementptr inbounds %struct.jornada_ts, %struct.jornada_ts* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @jornada720_ts_average(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %46 = load i32, i32* @BTN_TOUCH, align 4
  %47 = call i32 @input_report_key(%struct.input_dev* %45, i32 %46, i32 1)
  %48 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %49 = load i32, i32* @ABS_X, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @input_report_abs(%struct.input_dev* %48, i32 %49, i32 %50)
  %52 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %53 = load i32, i32* @ABS_Y, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @input_report_abs(%struct.input_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %57 = call i32 @input_sync(%struct.input_dev* %56)
  br label %58

58:                                               ; preds = %34, %28
  %59 = call i32 (...) @jornada_ssp_end()
  br label %60

60:                                               ; preds = %58, %22
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local %struct.jornada_ts* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i64 @gpiod_get_value(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @jornada_ssp_start(...) #1

declare dso_local i64 @jornada_ssp_inout(i32) #1

declare dso_local i32 @jornada720_ts_collect_data(%struct.jornada_ts*) #1

declare dso_local i32 @jornada720_ts_average(i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @jornada_ssp_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
