; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_keymap_atcom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_keymap_atcom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_NUMERIC_0 = common dso_local global i16 0, align 2
@KEY_NUMERIC_1 = common dso_local global i16 0, align 2
@KEY_NUMERIC_2 = common dso_local global i16 0, align 2
@KEY_NUMERIC_3 = common dso_local global i16 0, align 2
@KEY_NUMERIC_4 = common dso_local global i16 0, align 2
@KEY_NUMERIC_5 = common dso_local global i16 0, align 2
@KEY_NUMERIC_6 = common dso_local global i16 0, align 2
@KEY_NUMERIC_7 = common dso_local global i16 0, align 2
@KEY_NUMERIC_8 = common dso_local global i16 0, align 2
@KEY_NUMERIC_9 = common dso_local global i16 0, align 2
@KEY_NUMERIC_POUND = common dso_local global i16 0, align 2
@KEY_NUMERIC_STAR = common dso_local global i16 0, align 2
@KEY_ENTER = common dso_local global i16 0, align 2
@KEY_ESC = common dso_local global i16 0, align 2
@KEY_LEFT = common dso_local global i16 0, align 2
@KEY_RIGHT = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @keymap_atcom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @keymap_atcom(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %37 [
    i32 130, label %5
    i32 17, label %7
    i32 18, label %9
    i32 20, label %11
    i32 33, label %13
    i32 34, label %15
    i32 36, label %17
    i32 65, label %19
    i32 66, label %21
    i32 68, label %23
    i32 132, label %25
    i32 129, label %27
    i32 24, label %29
    i32 40, label %31
    i32 72, label %33
    i32 136, label %35
  ]

5:                                                ; preds = %1
  %6 = load i16, i16* @KEY_NUMERIC_0, align 2
  store i16 %6, i16* %2, align 2
  br label %40

7:                                                ; preds = %1
  %8 = load i16, i16* @KEY_NUMERIC_1, align 2
  store i16 %8, i16* %2, align 2
  br label %40

9:                                                ; preds = %1
  %10 = load i16, i16* @KEY_NUMERIC_2, align 2
  store i16 %10, i16* %2, align 2
  br label %40

11:                                               ; preds = %1
  %12 = load i16, i16* @KEY_NUMERIC_3, align 2
  store i16 %12, i16* %2, align 2
  br label %40

13:                                               ; preds = %1
  %14 = load i16, i16* @KEY_NUMERIC_4, align 2
  store i16 %14, i16* %2, align 2
  br label %40

15:                                               ; preds = %1
  %16 = load i16, i16* @KEY_NUMERIC_5, align 2
  store i16 %16, i16* %2, align 2
  br label %40

17:                                               ; preds = %1
  %18 = load i16, i16* @KEY_NUMERIC_6, align 2
  store i16 %18, i16* %2, align 2
  br label %40

19:                                               ; preds = %1
  %20 = load i16, i16* @KEY_NUMERIC_7, align 2
  store i16 %20, i16* %2, align 2
  br label %40

21:                                               ; preds = %1
  %22 = load i16, i16* @KEY_NUMERIC_8, align 2
  store i16 %22, i16* %2, align 2
  br label %40

23:                                               ; preds = %1
  %24 = load i16, i16* @KEY_NUMERIC_9, align 2
  store i16 %24, i16* %2, align 2
  br label %40

25:                                               ; preds = %1
  %26 = load i16, i16* @KEY_NUMERIC_POUND, align 2
  store i16 %26, i16* %2, align 2
  br label %40

27:                                               ; preds = %1
  %28 = load i16, i16* @KEY_NUMERIC_STAR, align 2
  store i16 %28, i16* %2, align 2
  br label %40

29:                                               ; preds = %1
  %30 = load i16, i16* @KEY_ENTER, align 2
  store i16 %30, i16* %2, align 2
  br label %40

31:                                               ; preds = %1
  %32 = load i16, i16* @KEY_ESC, align 2
  store i16 %32, i16* %2, align 2
  br label %40

33:                                               ; preds = %1
  %34 = load i16, i16* @KEY_LEFT, align 2
  store i16 %34, i16* %2, align 2
  br label %40

35:                                               ; preds = %1
  %36 = load i16, i16* @KEY_RIGHT, align 2
  store i16 %36, i16* %2, align 2
  br label %40

37:                                               ; preds = %1
  %38 = load i32, i32* %3, align 4
  %39 = call zeroext i16 @special_keymap(i32 %38)
  store i16 %39, i16* %2, align 2
  br label %40

40:                                               ; preds = %37, %35, %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %41 = load i16, i16* %2, align 2
  ret i16 %41
}

declare dso_local zeroext i16 @special_keymap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
