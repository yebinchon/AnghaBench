; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_complete_touch_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_mxs-lradc-ts.c_mxs_lradc_complete_touch_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_lradc_ts = type { i64, i32 }

@LRADC_SAMPLE_VALID = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL1 = common dso_local global i32 0, align 4
@TOUCHSCREEN_VCHANNEL2 = common dso_local global i32 0, align 4
@LRADC_CTRL1 = common dso_local global i64 0, align 8
@STMP_OFFSET_REG_CLR = common dso_local global i64 0, align 8
@LRADC_DELAY_KICK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxs_lradc_ts*)* @mxs_lradc_complete_touch_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxs_lradc_complete_touch_event(%struct.mxs_lradc_ts* %0) #0 {
  %2 = alloca %struct.mxs_lradc_ts*, align 8
  store %struct.mxs_lradc_ts* %0, %struct.mxs_lradc_ts** %2, align 8
  %3 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %4 = call i32 @mxs_lradc_setup_touch_detection(%struct.mxs_lradc_ts* %3)
  %5 = load i32, i32* @LRADC_SAMPLE_VALID, align 4
  %6 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %7 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %9 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %12 = call i64 @LRADC_CH(i32 %11)
  %13 = add nsw i64 %10, %12
  %14 = call i32 @writel(i32 0, i64 %13)
  %15 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %16 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %15)
  %17 = load i32, i32* @TOUCHSCREEN_VCHANNEL2, align 4
  %18 = call i32 @LRADC_CTRL1_LRADC_IRQ(i32 %17)
  %19 = or i32 %16, %18
  %20 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %21 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @LRADC_CTRL1, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @STMP_OFFSET_REG_CLR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %19, i64 %26)
  %28 = load i32, i32* @TOUCHSCREEN_VCHANNEL1, align 4
  %29 = shl i32 1, %28
  %30 = call i32 @LRADC_DELAY_TRIGGER(i32 %29)
  %31 = load i32, i32* @LRADC_DELAY_KICK, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @LRADC_DELAY_DELAY(i32 10)
  %34 = or i32 %32, %33
  %35 = load %struct.mxs_lradc_ts*, %struct.mxs_lradc_ts** %2, align 8
  %36 = getelementptr inbounds %struct.mxs_lradc_ts, %struct.mxs_lradc_ts* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @LRADC_DELAY(i32 2)
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  ret void
}

declare dso_local i32 @mxs_lradc_setup_touch_detection(%struct.mxs_lradc_ts*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @LRADC_CH(i32) #1

declare dso_local i32 @LRADC_CTRL1_LRADC_IRQ(i32) #1

declare dso_local i32 @LRADC_DELAY_TRIGGER(i32) #1

declare dso_local i32 @LRADC_DELAY_DELAY(i32) #1

declare dso_local i64 @LRADC_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
