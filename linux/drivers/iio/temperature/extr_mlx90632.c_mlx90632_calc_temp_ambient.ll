; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_ambient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_ambient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i64, i64, i64, i64, i32)* @mlx90632_calc_temp_ambient to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx90632_calc_temp_ambient(i32 %0, i32 %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i64 @mlx90632_preprocess_temp_amb(i32 %22, i32 %23, i32 %24)
  store i64 %25, i64* %20, align 8
  %26 = load i64, i64* %10, align 8
  %27 = mul nsw i64 %26, 10000000000
  %28 = ashr i64 %27, 44
  store i64 %28, i64* %15, align 8
  %29 = load i64, i64* %20, align 8
  %30 = load i64, i64* %11, align 8
  %31 = mul nsw i64 %30, 1000
  %32 = ashr i64 %31, 8
  %33 = sub nsw i64 %29, %32
  store i64 %33, i64* %16, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i64, i64* %16, align 8
  %36 = load i64, i64* %16, align 8
  %37 = mul nsw i64 %35, %36
  %38 = mul nsw i64 %34, %37
  store i64 %38, i64* %17, align 8
  %39 = load i64, i64* %16, align 8
  %40 = mul nsw i64 %39, 10000000
  %41 = load i64, i64* %12, align 8
  %42 = call i64 @div64_s64(i64 %40, i64 %41)
  %43 = shl i64 %42, 20
  store i64 %43, i64* %18, align 8
  %44 = load i64, i64* %13, align 8
  %45 = mul nsw i64 %44, 10000000000
  %46 = ashr i64 %45, 8
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %17, align 8
  %48 = call i64 @div64_s64(i64 %47, i64 1000000)
  %49 = load i64, i64* %18, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i64, i64* %19, align 8
  %52 = add nsw i64 %50, %51
  store i64 %52, i64* %21, align 8
  %53 = load i64, i64* %21, align 8
  %54 = call i64 @div64_s64(i64 %53, i64 10000000)
  ret i64 %54
}

declare dso_local i64 @mlx90632_preprocess_temp_amb(i32, i32, i32) #1

declare dso_local i64 @div64_s64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
