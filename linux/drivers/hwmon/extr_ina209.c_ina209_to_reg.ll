; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_to_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_ina209.c_ina209_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @ina209_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ina209_to_reg(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %40 [
    i32 128, label %9
    i32 129, label %9
    i32 136, label %13
    i32 134, label %13
    i32 137, label %13
    i32 135, label %13
    i32 133, label %22
    i32 132, label %30
    i32 130, label %37
    i32 131, label %37
  ]

9:                                                ; preds = %3, %3
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @clamp_val(i64 %10, i32 -320, i32 320)
  %12 = mul nsw i32 %11, 100
  store i32 %12, i32* %4, align 4
  br label %43

13:                                               ; preds = %3, %3, %3, %3
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @clamp_val(i64 %14, i32 0, i32 32000)
  %16 = sext i32 %15 to i64
  %17 = call i32 @DIV_ROUND_CLOSEST(i64 %16, i32 4)
  %18 = shl i32 %17, 3
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 7
  %21 = or i32 %18, %20
  store i32 %21, i32* %4, align 4
  br label %43

22:                                               ; preds = %3
  %23 = load i64, i64* %7, align 8
  %24 = sub nsw i64 0, %23
  %25 = call i32 @clamp_val(i64 %24, i32 0, i32 255)
  %26 = shl i32 %25, 8
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 255
  %29 = or i32 %26, %28
  store i32 %29, i32* %4, align 4
  br label %43

30:                                               ; preds = %3
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @clamp_val(i64 %31, i32 0, i32 255)
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 255
  %36 = or i32 %33, %35
  store i32 %36, i32* %4, align 4
  br label %43

37:                                               ; preds = %3, %3
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @DIV_ROUND_CLOSEST(i64 %38, i32 20000)
  store i32 %39, i32* %4, align 4
  br label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @EACCES, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %37, %30, %22, %13, %9
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
