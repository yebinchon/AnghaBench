; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm8350.c_wm8350_led_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm8350.c_wm8350_led_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.wm8350_led = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@LED_OFF = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@isink_cur = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"Failed to set %duA: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @wm8350_led_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_led_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350_led*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %11 = call %struct.wm8350_led* @to_wm8350_led(%struct.led_classdev* %10)
  store %struct.wm8350_led* %11, %struct.wm8350_led** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %14 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %16 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %15, i32 0, i32 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %20 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @LED_OFF, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %26 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %25, i32 0, i32 4
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %30 = call i32 @wm8350_led_disable(%struct.wm8350_led* %29)
  store i32 %30, i32* %3, align 4
  br label %83

31:                                               ; preds = %2
  %32 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %33 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %36 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load i32, i32* @LED_FULL, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %42 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %41, i32 0, i32 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32*, i32** @isink_cur, align 8
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = icmp sge i32 %45, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @BUG_ON(i32 %49)
  %51 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %52 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @isink_cur, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @isink_cur, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regulator_set_current_limit(i32 %53, i32 %58, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %31
  %68 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %69 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** @isink_cur, align 8
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %83

80:                                               ; preds = %31
  %81 = load %struct.wm8350_led*, %struct.wm8350_led** %6, align 8
  %82 = call i32 @wm8350_led_enable(%struct.wm8350_led* %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %80, %67, %24
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.wm8350_led* @to_wm8350_led(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wm8350_led_disable(%struct.wm8350_led*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @regulator_set_current_limit(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @wm8350_led_enable(%struct.wm8350_led*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
