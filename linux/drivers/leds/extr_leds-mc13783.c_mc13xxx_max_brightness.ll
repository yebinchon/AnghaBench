; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mc13783.c_mc13xxx_max_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-mc13783.c_mc13xxx_max_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MC13783_LED_MD = common dso_local global i32 0, align 4
@MC13783_LED_KP = common dso_local global i32 0, align 4
@MC13783_LED_R1 = common dso_local global i32 0, align 4
@MC13783_LED_B3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mc13xxx_max_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc13xxx_max_brightness(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MC13783_LED_MD, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @MC13783_LED_KP, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 15, i32* %2, align 4
  br label %23

12:                                               ; preds = %7, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MC13783_LED_R1, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @MC13783_LED_B3, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 31, i32* %2, align 4
  br label %23

21:                                               ; preds = %16, %12
  br label %22

22:                                               ; preds = %21
  store i32 63, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %11
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
