; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_special_keymap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_special_keymap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KEY_MICMUTE = common dso_local global i16 0, align 2
@KEY_MUTE = common dso_local global i16 0, align 2
@KEY_VOLUMEDOWN = common dso_local global i16 0, align 2
@KEY_VOLUMEUP = common dso_local global i16 0, align 2
@KEY_RESERVED = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32)* @special_keymap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @special_keymap(i32 %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp sgt i32 %4, 255
  br i1 %5, label %6, label %18

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  %8 = sub nsw i32 %7, 255
  switch i32 %8, label %17 [
    i32 130, label %9
    i32 131, label %11
    i32 129, label %13
    i32 128, label %15
  ]

9:                                                ; preds = %6
  %10 = load i16, i16* @KEY_MICMUTE, align 2
  store i16 %10, i16* %2, align 2
  br label %20

11:                                               ; preds = %6
  %12 = load i16, i16* @KEY_MUTE, align 2
  store i16 %12, i16* %2, align 2
  br label %20

13:                                               ; preds = %6
  %14 = load i16, i16* @KEY_VOLUMEDOWN, align 2
  store i16 %14, i16* %2, align 2
  br label %20

15:                                               ; preds = %6
  %16 = load i16, i16* @KEY_VOLUMEUP, align 2
  store i16 %16, i16* %2, align 2
  br label %20

17:                                               ; preds = %6
  br label %18

18:                                               ; preds = %17, %1
  %19 = load i16, i16* @KEY_RESERVED, align 2
  store i16 %19, i16* %2, align 2
  br label %20

20:                                               ; preds = %18, %15, %13, %11, %9
  %21 = load i16, i16* %2, align 2
  ret i16 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
