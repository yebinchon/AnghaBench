; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_preprocess_temp_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_preprocess_temp_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLX90632_REF_3 = common dso_local global i64 0, align 8
@MLX90632_REF_12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32, i32, i32)* @mlx90632_preprocess_temp_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx90632_preprocess_temp_obj(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = sext i32 %14 to i64
  %16 = mul nsw i64 %15, 1000
  %17 = ashr i64 %16, 10
  store i64 %17, i64* %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 1000000
  %21 = load i64, i64* %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = mul nsw i64 %23, 1000
  %25 = load i64, i64* @MLX90632_REF_3, align 8
  %26 = call i64 @div64_s64(i64 %24, i64 %25)
  %27 = mul nsw i64 %21, %26
  %28 = add nsw i64 %20, %27
  store i64 %28, i64* %11, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %29, %30
  %32 = sdiv i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 1000000000000
  %35 = load i64, i64* @MLX90632_REF_12, align 8
  %36 = call i64 @div64_s64(i64 %34, i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @div64_s64(i64 %36, i64 %37)
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* %13, align 8
  %40 = shl i64 %39, 19
  %41 = call i64 @div64_s64(i64 %40, i64 1000)
  ret i64 %41
}

declare dso_local i64 @div64_s64(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
