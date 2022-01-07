; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_tsc_wait_detect_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_imx6ul_tsc.c_tsc_wait_detect_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6ul_tsc = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@REG_TSC_DEBUG_MODE2 = common dso_local global i64 0, align 8
@DETECT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx6ul_tsc*)* @tsc_wait_detect_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc_wait_detect_mode(%struct.imx6ul_tsc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx6ul_tsc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx6ul_tsc* %0, %struct.imx6ul_tsc** %3, align 8
  %7 = load i64, i64* @jiffies, align 8
  %8 = call i64 @msecs_to_jiffies(i32 2)
  %9 = add i64 %7, %8
  store i64 %9, i64* %4, align 8
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i64, i64* @jiffies, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @time_after(i64 %11, i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %10
  %17 = call i32 @usleep_range(i32 200, i32 400)
  %18 = load %struct.imx6ul_tsc*, %struct.imx6ul_tsc** %3, align 8
  %19 = getelementptr inbounds %struct.imx6ul_tsc, %struct.imx6ul_tsc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REG_TSC_DEBUG_MODE2, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 20
  %26 = and i32 %25, 7
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DETECT_MODE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %10, label %31

31:                                               ; preds = %27
  %32 = call i32 @usleep_range(i32 200, i32 400)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
