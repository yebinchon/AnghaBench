; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/temperature/extr_mlx90632.c_mlx90632_calc_temp_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i64, i64, i32, i32, i32)* @mlx90632_calc_temp_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx90632_calc_temp_object(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i64 %4, i64* %15, align 8
  store i64 %5, i64* %16, align 8
  store i64 %6, i64* %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i64 25000, i64* %24, align 8
  %26 = load i64, i64* %13, align 8
  %27 = mul nsw i64 %26, 1000
  %28 = ashr i64 %27, 16
  store i64 %28, i64* %21, align 8
  %29 = load i64, i64* %14, align 8
  %30 = mul nsw i64 %29, 1000
  %31 = ashr i64 %30, 8
  store i64 %31, i64* %22, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %22, align 8
  %34 = sub nsw i64 %32, %33
  %35 = mul nsw i64 %34, 1000000
  %36 = load i64, i64* %21, align 8
  %37 = call i64 @div64_s64(i64 %35, i64 %36)
  %38 = add nsw i64 %37, 25000000
  store i64 %38, i64* %23, align 8
  store i32 0, i32* %25, align 4
  br label %39

39:                                               ; preds = %53, %10
  %40 = load i32, i32* %25, align 4
  %41 = icmp slt i32 %40, 5
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load i64, i64* %24, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %23, align 8
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %16, align 8
  %48 = load i64, i64* %17, align 8
  %49 = load i32, i32* %18, align 4
  %50 = load i32, i32* %19, align 4
  %51 = load i32, i32* %20, align 4
  %52 = call i64 @mlx90632_calc_temp_object_iteration(i64 %43, i64 %44, i64 %45, i64 %46, i64 %47, i64 %48, i32 %49, i32 %50, i32 %51)
  store i64 %52, i64* %24, align 8
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %25, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %25, align 4
  br label %39

56:                                               ; preds = %39
  %57 = load i64, i64* %24, align 8
  ret i64 %57
}

declare dso_local i64 @div64_s64(i64, i64) #1

declare dso_local i64 @mlx90632_calc_temp_object_iteration(i64, i64, i64, i64, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
