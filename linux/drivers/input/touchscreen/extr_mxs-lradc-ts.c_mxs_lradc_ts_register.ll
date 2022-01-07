; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_ts_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { %struct.input_dev*, %struct.device* }
%struct.input_dev = type { i8*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mxs-lradc-ts\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@mxs_lradc_ts_open = common dso_local global i32 0, align 4
@mxs_lradc_ts_close = common dso_local global i32 0, align 4
@INPUT_PROP_DIRECT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@LRADC_SINGLE_SAMPLE_MASK = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_lradc_ts*)* @mxs_lradc_ts_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_lradc_ts_register(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mxs_lradc_ts*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %3, align 8
  %6 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %7 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %6, i32 0, i32 1
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.input_dev* @devm_input_allocate_device(%struct.device* %9)
  store %struct.input_dev* %10, %struct.input_dev** %4, align 8
  %11 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %12 = icmp ne %struct.input_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %18, align 8
  %19 = load i32, i32* @BUS_HOST, align 4
  %20 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %21 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @mxs_lradc_ts_open, align 4
  %24 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @mxs_lradc_ts_close, align 4
  %27 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %28 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @INPUT_PROP_DIRECT, align 4
  %30 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %31 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  %34 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %35 = load i32, i32* @EV_KEY, align 4
  %36 = load i32, i32* @BTN_TOUCH, align 4
  %37 = call i32 @input_set_capability(%struct.input_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %39 = load i32, i32* @ABS_X, align 4
  %40 = load i32, i32* @LRADC_SINGLE_SAMPLE_MASK, align 4
  %41 = call i32 @input_set_abs_params(%struct.input_dev* %38, i32 %39, i32 0, i32 %40, i32 0, i32 0)
  %42 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %43 = load i32, i32* @ABS_Y, align 4
  %44 = load i32, i32* @LRADC_SINGLE_SAMPLE_MASK, align 4
  %45 = call i32 @input_set_abs_params(%struct.input_dev* %42, i32 %43, i32 0, i32 %44, i32 0, i32 0)
  %46 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %47 = load i32, i32* @ABS_PRESSURE, align 4
  %48 = load i32, i32* @LRADC_SINGLE_SAMPLE_MASK, align 4
  %49 = call i32 @input_set_abs_params(%struct.input_dev* %46, i32 %47, i32 0, i32 %48, i32 0, i32 0)
  %50 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %51 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %52 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %51, i32 0, i32 0
  store %struct.input_dev* %50, %struct.input_dev** %52, align 8
  %53 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %54 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %55 = call i32 @input_set_drvdata(%struct.input_dev* %53, %struct.mxs_lradc_ts* %54)
  %56 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %57 = call i32 @input_register_device(%struct.input_dev* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %16, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.input_dev* @devm_input_allocate_device(%struct.device*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_capability(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.mxs_lradc_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
