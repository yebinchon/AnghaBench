; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_sirfsoc-onkey.c_sirfsoc_pwrc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_sirfsoc-onkey.c_sirfsoc_pwrc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_pwrc_drvdata = type { i32, i32, i64 }

@PWRC_INT_STATUS = common dso_local global i64 0, align 8
@PWRC_ON_KEY_BIT = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@KEY_POWER = common dso_local global i32 0, align 4
@PWRC_KEY_DETECT_UP_TIME = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sirfsoc_pwrc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_pwrc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sirfsoc_pwrc_drvdata*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.sirfsoc_pwrc_drvdata*
  store %struct.sirfsoc_pwrc_drvdata* %8, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %9 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PWRC_INT_STATUS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @sirfsoc_rtc_iobrg_readl(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @PWRC_ON_KEY_BIT, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %20 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PWRC_INT_STATUS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @sirfsoc_rtc_iobrg_writel(i32 %18, i64 %23)
  %25 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %26 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EV_KEY, align 4
  %29 = load i32, i32* @KEY_POWER, align 4
  %30 = call i32 @input_event(i32 %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @input_sync(i32 %33)
  %35 = load %struct.sirfsoc_pwrc_drvdata*, %struct.sirfsoc_pwrc_drvdata** %5, align 8
  %36 = getelementptr inbounds %struct.sirfsoc_pwrc_drvdata, %struct.sirfsoc_pwrc_drvdata* %35, i32 0, i32 0
  %37 = load i32, i32* @PWRC_KEY_DETECT_UP_TIME, align 4
  %38 = call i32 @msecs_to_jiffies(i32 %37)
  %39 = call i32 @schedule_delayed_work(i32* %36, i32 %38)
  %40 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %40
}

declare dso_local i32 @sirfsoc_rtc_iobrg_readl(i64) #1

declare dso_local i32 @sirfsoc_rtc_iobrg_writel(i32, i64) #1

declare dso_local i32 @input_event(i32, i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
