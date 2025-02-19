; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pll.c_amdgpu_pll_reduce_ratio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_pll.c_amdgpu_pll_reduce_ratio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @amdgpu_pll_reduce_ratio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdgpu_pll_reduce_ratio(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gcd(i32 %11, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = udiv i32 %17, %15
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = udiv i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DIV_ROUND_UP(i32 %28, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %33, align 4
  %35 = mul i32 %34, %32
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %37, align 4
  %39 = mul i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %27, %4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load i32, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @DIV_ROUND_UP(i32 %46, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %52, %50
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
