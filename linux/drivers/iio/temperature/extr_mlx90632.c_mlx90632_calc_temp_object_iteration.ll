; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_object_iteration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_object_iteration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64, i32, i32, i32, i64, i64, i32)* @mlx90632_calc_temp_object_iteration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx90632_calc_temp_object_iteration(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i32 %8, i32* %18, align 4
  %26 = load i64, i64* %16, align 8
  %27 = mul nsw i64 %26, 1000000
  %28 = ashr i64 %27, 14
  store i64 %28, i64* %24, align 8
  %29 = load i64, i64* %17, align 8
  %30 = mul nsw i64 %29, 100
  %31 = ashr i64 %30, 10
  store i64 %31, i64* %25, align 8
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %10, align 4
  %35 = sext i32 %34 to i64
  %36 = sub nsw i64 %35, 25000
  %37 = mul nsw i64 %33, %36
  %38 = mul nsw i64 %37, 1000
  %39 = ashr i64 %38, 36
  store i64 %39, i64* %19, align 8
  %40 = load i32, i32* %14, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %12, align 8
  %43 = sub nsw i64 %42, 25000000
  %44 = mul nsw i64 %41, %43
  %45 = ashr i64 %44, 36
  store i64 %45, i64* %20, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, 10000000000
  %49 = ashr i64 %48, 46
  %50 = load i64, i64* %24, align 8
  %51 = mul nsw i64 %49, %50
  %52 = call i32 @div64_s64(i64 %51, i64 1000)
  %53 = sext i32 %52 to i64
  store i64 %53, i64* %23, align 8
  %54 = load i64, i64* %19, align 8
  %55 = add nsw i64 1000000, %54
  %56 = load i64, i64* %20, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i64, i64* %23, align 8
  %59 = mul nsw i64 %58, %57
  store i64 %59, i64* %23, align 8
  %60 = load i32, i32* %18, align 4
  %61 = load i64, i64* %23, align 8
  %62 = call i32 @div64_s64(i64 %61, i64 100000)
  %63 = mul nsw i32 %60, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %23, align 8
  %65 = load i64, i64* %23, align 8
  %66 = call i32 @div64_s64(i64 %65, i64 1000)
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %23, align 8
  %68 = load i64, i64* %11, align 8
  %69 = mul nsw i64 %68, 10000000
  %70 = load i64, i64* %23, align 8
  %71 = call i32 @div64_s64(i64 %69, i64 %70)
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @div64_s64(i64 %73, i64 10000)
  %75 = add nsw i32 %74, 27315
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @div64_s64(i64 %76, i64 10000)
  %78 = add nsw i32 %77, 27315
  %79 = mul nsw i32 %75, %78
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @div64_s64(i64 %80, i64 10000)
  %82 = add nsw i32 %81, 27315
  %83 = mul nsw i32 %79, %82
  %84 = load i64, i64* %12, align 8
  %85 = call i32 @div64_s64(i64 %84, i64 10000)
  %86 = add nsw i32 %85, 27315
  %87 = mul nsw i32 %83, %86
  %88 = sext i32 %87 to i64
  store i64 %88, i64* %22, align 8
  %89 = load i64, i64* %21, align 8
  %90 = mul nsw i64 %89, 1000000000000
  %91 = load i64, i64* %22, align 8
  %92 = add nsw i64 %90, %91
  %93 = trunc i64 %92 to i32
  %94 = call i32 @int_sqrt64(i32 %93)
  %95 = call i32 @int_sqrt64(i32 %94)
  %96 = sub nsw i32 %95, 27315
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %25, align 8
  %99 = sub nsw i64 %97, %98
  %100 = mul nsw i64 %99, 10
  %101 = trunc i64 %100 to i32
  ret i32 %101
}

declare dso_local i32 @div64_s64(i64, i64) #1

declare dso_local i32 @int_sqrt64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
