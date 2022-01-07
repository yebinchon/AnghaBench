; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_handle_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_handle_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i32, i32, i8*, i8*, i64 }

@LRADC_CTRL1_TOUCH_DETECT_IRQ = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_handle_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_handle_touch(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %3 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %4 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %51 [
    i32 128, label %6
    i32 129, label %23
    i32 130, label %31
    i32 132, label %39
    i32 131, label %48
  ]

6:                                                ; preds = %1
  %7 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %8 = call i32 @mxs_lradc_check_touch_event(%struct.mxs_lradc_ts* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %12 = call i32 @mxs_lradc_start_touch_event(%struct.mxs_lradc_ts* %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i32, i32* @LRADC_CTRL1_TOUCH_DETECT_IRQ, align 4
  %15 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %16 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @LRADC_CTRL1, align 8
  %19 = add nsw i64 %17, %18
  %20 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %14, i64 %21)
  br label %51

23:                                               ; preds = %1
  %24 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %25 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %26 = call i8* @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts* %24, i32 %25)
  %27 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %28 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %27, i32 0, i32 3
  store i8* %26, i8** %28, align 8
  %29 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %30 = call i32 @mxs_lradc_prepare_x_pos(%struct.mxs_lradc_ts* %29)
  br label %51

31:                                               ; preds = %1
  %32 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %33 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %34 = call i8* @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts* %32, i32 %33)
  %35 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %36 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %38 = call i32 @mxs_lradc_prepare_pressure(%struct.mxs_lradc_ts* %37)
  br label %51

39:                                               ; preds = %1
  %40 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %41 = load i32, i32* @TOUCHSCREEN_VCHANNEL2, align 4
  %42 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %43 = call i32 @mxs_lradc_read_ts_pressure(%struct.mxs_lradc_ts* %40, i32 %41, i32 %42)
  %44 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %45 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %47 = call i32 @mxs_lradc_complete_touch_event(%struct.mxs_lradc_ts* %46)
  br label %51

48:                                               ; preds = %1
  %49 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %50 = call i32 @mxs_lradc_finish_touch_event(%struct.mxs_lradc_ts* %49, i32 1)
  br label %51

51:                                               ; preds = %13, %23, %31, %39, %1, %48
  ret void
}

declare dso_local i32 @mxs_lradc_check_touch_event(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_start_touch_event(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @mxs_lradc_ts_read_raw_channel(%struct.mxs_lradc_ts*, i32) #1

declare dso_local i32 @mxs_lradc_prepare_x_pos(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_prepare_pressure(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_read_ts_pressure(%struct.mxs_lradc_ts*, i32, i32) #1

declare dso_local i32 @mxs_lradc_complete_touch_event(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_finish_touch_event(%struct.mxs_lradc_ts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
