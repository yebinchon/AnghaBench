; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_IN_FROM_REG.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_lm93.c_LM93_IN_FROM_REG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lm93_vin_val_max = common dso_local global i32* null, align 8
@lm93_vin_val_min = common dso_local global i32* null, align 8
@lm93_vin_reg_max = common dso_local global i64* null, align 8
@lm93_vin_reg_min = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @LM93_IN_FROM_REG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LM93_IN_FROM_REG(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** @lm93_vin_val_max, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %13, 1000
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i32*, i32** @lm93_vin_val_min, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 1000
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = sub nsw i64 %23, %24
  %26 = load i64*, i64** @lm93_vin_reg_max, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64*, i64** @lm93_vin_reg_min, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %30, %35
  %37 = sdiv i64 %25, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load i64*, i64** @lm93_vin_reg_min, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = mul nsw i64 %39, %44
  %46 = sub nsw i64 %38, %45
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %4, align 8
  %49 = mul nsw i64 %47, %48
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = add nsw i64 %51, 500
  %53 = sdiv i64 %52, 1000
  %54 = trunc i64 %53 to i32
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
