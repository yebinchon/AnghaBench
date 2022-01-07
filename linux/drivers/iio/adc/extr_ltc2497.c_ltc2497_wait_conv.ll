; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_wait_conv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/adc/extr_ltc2497.c_ltc2497_wait_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ltc2497_st = type { i32 }

@LTC2497_CONVERSION_TIME_MS = common dso_local global i64 0, align 8
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ltc2497_st*)* @ltc2497_wait_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltc2497_wait_conv(%struct.ltc2497_st* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ltc2497_st*, align 8
  %4 = alloca i64, align 8
  store %struct.ltc2497_st* %0, %struct.ltc2497_st** %3, align 8
  %5 = call i32 (...) @ktime_get()
  %6 = load %struct.ltc2497_st*, %struct.ltc2497_st** %3, align 8
  %7 = getelementptr inbounds %struct.ltc2497_st, %struct.ltc2497_st* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @ktime_ms_delta(i32 %5, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @LTC2497_CONVERSION_TIME_MS, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @LTC2497_CONVERSION_TIME_MS, align 8
  %15 = load i64, i64* %4, align 8
  %16 = sub nsw i64 %14, %15
  %17 = call i64 @msleep_interruptible(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %30

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @LTC2497_CONVERSION_TIME_MS, align 8
  %26 = sub nsw i64 %24, %25
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %28, %22, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i64 @ktime_ms_delta(i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @msleep_interruptible(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
