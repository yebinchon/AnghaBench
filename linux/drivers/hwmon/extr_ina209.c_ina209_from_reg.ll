; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_from_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_from_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @ina209_from_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ina209_from_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %33 [
    i32 132, label %7
    i32 129, label %7
    i32 131, label %7
    i32 128, label %7
    i32 130, label %7
    i32 146, label %11
    i32 145, label %11
    i32 144, label %11
    i32 142, label %11
    i32 140, label %11
    i32 143, label %11
    i32 141, label %11
    i32 138, label %16
    i32 139, label %20
    i32 136, label %25
    i32 134, label %25
    i32 133, label %25
    i32 135, label %25
    i32 137, label %30
  ]

7:                                                ; preds = %2, %2, %2, %2, %2
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = call i64 @DIV_ROUND_CLOSEST(i64 %9, i32 100)
  store i64 %10, i64* %3, align 8
  br label %35

11:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 3
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %3, align 8
  br label %35

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 8
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %3, align 8
  br label %35

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 8
  %23 = mul nsw i32 -1, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  br label %35

25:                                               ; preds = %2, %2, %2, %2
  %26 = load i32, i32* %5, align 4
  %27 = mul nsw i32 %26, 20
  %28 = sext i32 %27 to i64
  %29 = mul nsw i64 %28, 1000
  store i64 %29, i64* %3, align 8
  br label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %3, align 8
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @WARN_ON_ONCE(i32 1)
  store i64 0, i64* %3, align 8
  br label %35

35:                                               ; preds = %33, %30, %25, %20, %16, %11, %7
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
