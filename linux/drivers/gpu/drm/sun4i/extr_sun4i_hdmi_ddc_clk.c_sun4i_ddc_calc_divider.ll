; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_ddc_clk.c_sun4i_ddc_calc_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_ddc_clk.c_sun4i_ddc_calc_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32, i32*, i32*)* @sun4i_ddc_calc_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun4i_ddc_calc_divider(i64 %0, i64 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %19

19:                                               ; preds = %63, %6
  %20 = load i32, i32* %16, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %66

22:                                               ; preds = %19
  store i32 0, i32* %17, align 4
  br label %23

23:                                               ; preds = %59, %22
  %24 = load i32, i32* %17, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %62

26:                                               ; preds = %23
  %27 = load i64, i64* %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %27, %29
  %31 = udiv i64 %30, 10
  %32 = load i32, i32* %17, align 4
  %33 = zext i32 %32 to i64
  %34 = lshr i64 %31, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %34, %38
  store i64 %39, i64* %18, align 8
  %40 = load i64, i64* %18, align 8
  %41 = load i64, i64* %7, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %59

44:                                               ; preds = %26
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* %18, align 8
  %47 = sub i64 %45, %46
  %48 = call i64 @abs(i64 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %13, align 8
  %51 = sub i64 %49, %50
  %52 = call i64 @abs(i64 %51)
  %53 = icmp slt i64 %48, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load i64, i64* %18, align 8
  store i64 %55, i64* %13, align 8
  %56 = load i32, i32* %16, align 4
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %17, align 4
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %54, %44
  br label %59

59:                                               ; preds = %58, %43
  %60 = load i32, i32* %17, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %17, align 4
  br label %23

62:                                               ; preds = %23
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %19

66:                                               ; preds = %19
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32*, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %72, %69, %66
  %78 = load i64, i64* %13, align 8
  ret i64 %78
}

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
