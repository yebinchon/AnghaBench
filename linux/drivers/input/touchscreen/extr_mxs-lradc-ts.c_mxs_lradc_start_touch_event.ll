; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_start_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_start_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64 }

@LRADC_CTRL1_TOUCH_DETECT_IRQ_EN = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@STMP_OFFSET_REG_SET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_start_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_start_touch_event(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %3 = load i32, i32* @LRADC_CTRL1_TOUCH_DETECT_IRQ_EN, align 4
  %4 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %5 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @LRADC_CTRL1, align 8
  %8 = add nsw i64 %6, %7
  %9 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %3, i64 %10)
  %12 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %13 = call i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32 %12)
  %14 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %15 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @LRADC_CTRL1, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i64, i64* @STMP_OFFSET_REG_SET, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @writel(i32 %13, i64 %20)
  %22 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %23 = call i32 @mxs_lradc_prepare_y_pos(%struct.mxs_lradc_ts* %22)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ_EN(i32) #1

declare dso_local i32 @mxs_lradc_prepare_y_pos(%struct.mxs_lradc_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
