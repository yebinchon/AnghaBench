; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_reg_from_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_reg_from_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @ina209_reg_from_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_reg_from_interval(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp sle i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 8, i32* %6, align 4
  br label %27

10:                                               ; preds = %2
  store i32 15, i32* %6, align 4
  store i32 51, i32* %5, align 4
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* %4, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %11

26:                                               ; preds = %19, %11
  br label %27

27:                                               ; preds = %26, %9
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, 63495
  %30 = load i32, i32* %6, align 4
  %31 = shl i32 %30, 3
  %32 = or i32 %29, %31
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 %33, 7
  %35 = or i32 %32, %34
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
