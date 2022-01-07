; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_get_finger_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_cypress_ps2.c_cypress_get_finger_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ABS_HSCROLL_BIT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8)* @cypress_get_finger_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cypress_get_finger_count(i8 zeroext %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8 %0, i8* %3, align 1
  %6 = load i8, i8* %3, align 1
  %7 = zext i8 %6 to i32
  %8 = ashr i32 %7, 6
  %9 = trunc i32 %8 to i8
  store i8 %9, i8* %4, align 1
  %10 = load i8, i8* %4, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 3
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %30

16:                                               ; preds = %1
  %17 = load i8, i8* %3, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @ABS_HSCROLL_BIT, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  switch i32 %24, label %27 [
    i32 0, label %25
    i32 2, label %26
  ]

25:                                               ; preds = %23
  store i32 4, i32* %2, align 4
  br label %30

26:                                               ; preds = %23
  store i32 5, i32* %2, align 4
  br label %30

27:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %30

28:                                               ; preds = %16
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %28, %27, %26, %25, %15
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
