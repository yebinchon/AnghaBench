; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_report_ts_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_report_ts_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i32, i32, i32, i32 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_report_ts_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_report_ts_event(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %3 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %4 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ABS_X, align 4
  %7 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %8 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @input_report_abs(i32 %5, i32 %6, i32 %9)
  %11 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %12 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ABS_Y, align 4
  %15 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %16 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @input_report_abs(i32 %13, i32 %14, i32 %17)
  %19 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %20 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ABS_PRESSURE, align 4
  %23 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %24 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @input_report_abs(i32 %21, i32 %22, i32 %25)
  %27 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %28 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @BTN_TOUCH, align 4
  %31 = call i32 @input_report_key(i32 %29, i32 %30, i32 1)
  %32 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %33 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @input_sync(i32 %34)
  ret void
}

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
