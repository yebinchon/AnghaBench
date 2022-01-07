; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_fault_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lp8860.c_lp8860_fault_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp8860_led = type { i32 }

@LP8860_LED_FAULT = common dso_local global i32 0, align 4
@LP8860_FAULT = common dso_local global i32 0, align 4
@LP8860_FAULT_CLEAR = common dso_local global i32 0, align 4
@LP8860_CLEAR_FAULTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp8860_led*)* @lp8860_fault_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8860_fault_check(%struct.lp8860_led* %0) #0 {
  %2 = alloca %struct.lp8860_led*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lp8860_led* %0, %struct.lp8860_led** %2, align 8
  %6 = load %struct.lp8860_led*, %struct.lp8860_led** %2, align 8
  %7 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LP8860_LED_FAULT, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.lp8860_led*, %struct.lp8860_led** %2, align 8
  %17 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LP8860_FAULT, align 4
  %20 = call i32 @regmap_read(i32 %18, i32 %19, i32* %5)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %38

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.lp8860_led*, %struct.lp8860_led** %2, align 8
  %32 = getelementptr inbounds %struct.lp8860_led, %struct.lp8860_led* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LP8860_FAULT_CLEAR, align 4
  %35 = load i32, i32* @LP8860_CLEAR_FAULTS, align 4
  %36 = call i32 @regmap_write(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %30, %24
  br label %38

38:                                               ; preds = %37, %23, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
