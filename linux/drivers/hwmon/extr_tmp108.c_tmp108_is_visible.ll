; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_is_visible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_tmp108.c_tmp108_is_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hwmon_chip = common dso_local global i32 0, align 4
@hwmon_chip_update_interval = common dso_local global i32 0, align 4
@hwmon_temp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32)* @tmp108_is_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmp108_is_visible(i8* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @hwmon_chip, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @hwmon_chip_update_interval, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 420, i32* %5, align 4
  br label %28

18:                                               ; preds = %13, %4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @hwmon_temp, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %27 [
    i32 134, label %25
    i32 129, label %25
    i32 132, label %25
    i32 130, label %26
    i32 133, label %26
    i32 128, label %26
    i32 131, label %26
  ]

25:                                               ; preds = %23, %23, %23
  store i32 292, i32* %5, align 4
  br label %28

26:                                               ; preds = %23, %23, %23, %23
  store i32 420, i32* %5, align 4
  br label %28

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26, %25, %22, %17
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
