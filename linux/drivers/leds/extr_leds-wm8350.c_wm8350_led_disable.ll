; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm8350.c_wm8350_led_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-wm8350.c_wm8350_led_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350_led = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Failed to disable DCDC: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to disable ISINK: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Failed to reenable DCDC: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350_led*)* @wm8350_led_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_led_disable(%struct.wm8350_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wm8350_led*, align 8
  %4 = alloca i32, align 4
  store %struct.wm8350_led* %0, %struct.wm8350_led** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %6 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %13 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regulator_disable(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %11
  %19 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %20 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %11
  %27 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %28 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regulator_disable(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %55

33:                                               ; preds = %26
  %34 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %35 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %41 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @regulator_enable(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %33
  %47 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %48 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @dev_err(i32 %50, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %46, %33
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %59

55:                                               ; preds = %26
  %56 = load %struct.wm8350_led*, %struct.wm8350_led** %3, align 8
  %57 = getelementptr inbounds %struct.wm8350_led, %struct.wm8350_led* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %53, %18, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
