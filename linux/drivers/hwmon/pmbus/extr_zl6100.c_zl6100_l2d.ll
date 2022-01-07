; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_l2d.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/pmbus/extr_zl6100.c_zl6100_l2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @zl6100_l2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @zl6100_l2d(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = ashr i32 %6, 11
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = and i32 %8, 2047
  %10 = shl i32 %9, 5
  %11 = ashr i32 %10, 5
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = mul nsw i64 %14, 1000
  store i64 %15, i64* %5, align 8
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = load i64, i64* %5, align 8
  %21 = zext i32 %19 to i64
  %22 = shl i64 %20, %21
  store i64 %22, i64* %5, align 8
  br label %29

23:                                               ; preds = %1
  %24 = load i32, i32* %3, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i64, i64* %5, align 8
  %27 = zext i32 %25 to i64
  %28 = ashr i64 %26, %27
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %23, %18
  %30 = load i64, i64* %5, align 8
  ret i64 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
