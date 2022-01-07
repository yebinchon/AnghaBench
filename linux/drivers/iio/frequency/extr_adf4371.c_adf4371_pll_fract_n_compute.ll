; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_pll_fract_n_compute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/frequency/extr_adf4371.c_adf4371_pll_fract_n_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADF4371_MODULUS1 = common dso_local global i64 0, align 8
@ADF4371_MAX_MODULUS2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i32*, i32*, i32*)* @adf4371_pll_fract_n_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adf4371_pll_fract_n_compute(i64 %0, i64 %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i8* @do_div(i64 %15, i64 %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %13, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i64, i64* @ADF4371_MODULUS1, align 8
  %21 = mul i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @do_div(i64 %22, i64 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %11, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i64, i64* %7, align 8
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %9, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %13, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32*, i32** %10, align 8
  store i32 %31, i32* %32, align 4
  %33 = load i64, i64* %8, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32*, i32** %12, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %41, %6
  %37 = load i32*, i32** %12, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ADF4371_MAX_MODULUS2, align 4
  %40 = icmp ugt i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %42, align 4
  %44 = lshr i32 %43, 1
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = lshr i32 %46, 1
  store i32 %47, i32* %45, align 4
  br label %36

48:                                               ; preds = %36
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gcd(i32 %50, i32 %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %55, align 4
  %57 = udiv i32 %56, %54
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %14, align 4
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = udiv i32 %60, %58
  store i32 %61, i32* %59, align 4
  ret void
}

declare dso_local i8* @do_div(i64, i64) #1

declare dso_local i32 @gcd(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
