; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_clk_div_choose_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_clk_div_choose_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@TIM2_PCD_LO_BITS = common dso_local global i32 0, align 4
@TIM2_PCD_HI_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64*, i32)* @pl111_clk_div_choose_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl111_clk_div_choose_div(%struct.clk_hw* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk_hw*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %18)
  store %struct.clk_hw* %19, %struct.clk_hw** %11, align 8
  store i64 0, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  %20 = load i32, i32* @TIM2_PCD_LO_BITS, align 4
  %21 = load i32, i32* @TIM2_PCD_HI_BITS, align 4
  %22 = add nsw i32 %20, %21
  %23 = shl i32 1, %22
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %14, align 4
  store i32 1, i32* %10, align 4
  br label %25

25:                                               ; preds = %58, %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %34, %36
  %38 = call i64 @clk_hw_round_rate(%struct.clk_hw* %33, i64 %37)
  store i64 %38, i64* %15, align 8
  br label %42

39:                                               ; preds = %29
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %39, %32
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @DIV_ROUND_UP_ULL(i64 %43, i32 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %16, align 8
  %48 = sub i64 %46, %47
  %49 = call i64 @abs(i64 %48)
  store i64 %49, i64* %17, align 8
  %50 = load i64, i64* %17, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %9, align 4
  %55 = load i64, i64* %17, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i64, i64* %15, align 8
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %53, %42
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load i64, i64* %12, align 8
  %63 = load i64*, i64** %7, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i64, i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
