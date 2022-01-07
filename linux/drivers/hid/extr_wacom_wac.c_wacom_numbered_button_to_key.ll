; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_numbered_button_to_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_numbered_button_to_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BTN_0 = common dso_local global i32 0, align 4
@BTN_A = common dso_local global i32 0, align 4
@BTN_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @wacom_numbered_button_to_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_numbered_button_to_key(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp slt i32 %4, 10
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load i32, i32* @BTN_0, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %7, %8
  store i32 %9, i32* %2, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 16
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  %14 = load i32, i32* @BTN_A, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sub nsw i32 %15, 10
  %17 = add nsw i32 %14, %16
  store i32 %17, i32* %2, align 4
  br label %27

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = icmp slt i32 %19, 18
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load i32, i32* @BTN_BASE, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sub nsw i32 %23, 16
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %21, %13, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
