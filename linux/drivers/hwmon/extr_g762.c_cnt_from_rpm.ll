; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_cnt_from_rpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_g762.c_cnt_from_rpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i64, i32, i32, i32, i32)* @cnt_from_rpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @cnt_from_rpm(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %8, align 4
  %15 = mul nsw i32 %14, 30
  %16 = load i32, i32* %11, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %5
  store i8 -1, i8* %6, align 1
  br label %41

26:                                               ; preds = %5
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = mul i64 255, %29
  %31 = udiv i64 %28, %30
  %32 = load i64, i64* @ULONG_MAX, align 8
  %33 = load i64, i64* %13, align 8
  %34 = udiv i64 %32, %33
  %35 = call i64 @clamp_val(i64 %27, i64 %31, i64 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %13, align 8
  %39 = mul i64 %37, %38
  %40 = call zeroext i8 @DIV_ROUND_CLOSEST(i64 %36, i64 %39)
  store i8 %40, i8* %6, align 1
  br label %41

41:                                               ; preds = %26, %25
  %42 = load i8, i8* %6, align 1
  ret i8 %42
}

declare dso_local i64 @clamp_val(i64, i64, i64) #1

declare dso_local zeroext i8 @DIV_ROUND_CLOSEST(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
