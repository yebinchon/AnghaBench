; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_hasRadioTuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_tveeprom.c_hasRadioTuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @hasRadioTuner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hasRadioTuner(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %6 [
    i32 18, label %5
    i32 23, label %5
    i32 38, label %5
    i32 16, label %5
    i32 19, label %5
    i32 21, label %5
    i32 24, label %5
    i32 17, label %5
    i32 22, label %5
    i32 20, label %5
    i32 25, label %5
    i32 33, label %5
    i32 42, label %5
    i32 52, label %5
    i32 54, label %5
    i32 44, label %5
    i32 31, label %5
    i32 30, label %5
    i32 46, label %5
    i32 47, label %5
    i32 49, label %5
    i32 60, label %5
    i32 57, label %5
    i32 59, label %5
    i32 58, label %5
    i32 68, label %5
    i32 61, label %5
    i32 78, label %5
    i32 89, label %5
    i32 92, label %5
    i32 105, label %5
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %2, align 4
  br label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %7

7:                                                ; preds = %6, %5
  %8 = load i32, i32* %2, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
