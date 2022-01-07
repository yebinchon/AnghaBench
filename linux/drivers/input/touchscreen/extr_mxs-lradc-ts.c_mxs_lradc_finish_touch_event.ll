; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_finish_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_finish_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i32, i64, i32, i32 }

@BTN_TOUCH = common dso_local global i32 0, align 4
@LRADC_TOUCH = common dso_local global i32 0, align 4
@LRADC_CTRL1_TOUCH_DETECT_IRQ = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_CTRL1_TOUCH_DETECT_IRQ_EN = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*, i32)* @mxs_lradc_finish_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_finish_touch_event(%struct.mxs_lradc_ts* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_lradc_ts*, align 8
  %4 = alloca i32, align 4
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %9 = call i64 @mxs_lradc_check_touch_event(%struct.mxs_lradc_ts* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %7
  %12 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %15 = call i32 @mxs_lradc_report_ts_event(%struct.mxs_lradc_ts* %14)
  br label %16

16:                                               ; preds = %11, %7, %2
  %17 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %18 = call i64 @mxs_lradc_check_touch_event(%struct.mxs_lradc_ts* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %22 = call i32 @mxs_lradc_prepare_y_pos(%struct.mxs_lradc_ts* %21)
  br label %80

23:                                               ; preds = %16
  %24 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %25 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %30 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %29, i32 0, i32 0
  store i32 0, i32* %30, align 8
  %31 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %32 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @BTN_TOUCH, align 4
  %35 = call i32 @input_report_key(i32 %33, i32 %34, i32 0)
  %36 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %37 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @input_sync(i32 %38)
  br label %40

40:                                               ; preds = %28, %23
  %41 = load i32, i32* @LRADC_TOUCH, align 4
  %42 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %43 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %45 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @LRADC_DELAY(i32 2)
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 0, i64 %48)
  %50 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %51 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @LRADC_DELAY(i32 3)
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 0, i64 %54)
  %56 = load i32, i32* @LRADC_CTRL1_TOUCH_DETECT_IRQ, align 4
  %57 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %58 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 %57)
  %59 = or i32 %56, %58
  %60 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %61 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %60)
  %62 = or i32 %59, %61
  %63 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %64 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LRADC_CTRL1, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %62, i64 %69)
  %71 = load i32, i32* @LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, align 4
  %72 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %3, align 8
  %73 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LRADC_CTRL1, align 8
  %76 = add nsw i64 %74, %75
  %77 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %71, i64 %78)
  br label %80

80:                                               ; preds = %40, %20
  ret void
}

declare dso_local i64 @mxs_lradc_check_touch_event(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_report_ts_event(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @mxs_lradc_prepare_y_pos(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
