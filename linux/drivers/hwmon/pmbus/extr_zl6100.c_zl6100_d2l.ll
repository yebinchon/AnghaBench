; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_d2l.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_d2l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_MANTISSA = common dso_local global i64 0, align 8
@MIN_MANTISSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @zl6100_d2l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zl6100_d2l(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %3, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  store i32 1, i32* %6, align 4
  %14 = load i64, i64* %3, align 8
  %15 = sub nsw i64 0, %14
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %13, %10
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @MAX_MANTISSA, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 15
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ]
  br i1 %25, label %26, label %31

26:                                               ; preds = %24
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i64, i64* %3, align 8
  %30 = ashr i64 %29, 1
  store i64 %30, i64* %3, align 8
  br label %17

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %41, %31
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @MIN_MANTISSA, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %4, align 4
  %38 = icmp sgt i32 %37, -15
  br label %39

39:                                               ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  %44 = load i64, i64* %3, align 8
  %45 = shl i64 %44, 1
  store i64 %45, i64* %3, align 8
  br label %32

46:                                               ; preds = %39
  %47 = load i64, i64* %3, align 8
  %48 = call i32 @DIV_ROUND_CLOSEST(i64 %47, i32 1000)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 1023
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 1023, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 2047
  %61 = load i32, i32* %4, align 4
  %62 = shl i32 %61, 11
  %63 = and i32 %62, 63488
  %64 = or i32 %60, %63
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %58, %9
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
