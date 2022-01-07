; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_calc_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun4i_hdmi_tmds_clk.c_sun4i_tmds_calc_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i32, i32*, i32*)* @sun4i_tmds_calc_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sun4i_tmds_calc_divider(i64 %0, i64 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  br label %21

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %20, %19
  %22 = phi i32 [ %17, %19 ], [ 1, %20 ]
  store i32 %22, i32* %13, align 4
  br label %23

23:                                               ; preds = %67, %21
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 16, %25
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  store i32 1, i32* %15, align 4
  br label %29

29:                                               ; preds = %63, %28
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %66

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = udiv i64 %33, %35
  %37 = load i32, i32* %15, align 4
  %38 = sext i32 %37 to i64
  %39 = udiv i64 %36, %38
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  br label %63

44:                                               ; preds = %32
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %16, align 8
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %6, align 8
  %52 = load i64, i64* %11, align 8
  %53 = sub i64 %51, %52
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47, %44
  %56 = load i64, i64* %16, align 8
  store i64 %56, i64* %11, align 8
  %57 = load i32, i32* %13, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 2
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 1, i32 0
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %55, %47
  br label %63

63:                                               ; preds = %62, %43
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %29

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %23

70:                                               ; preds = %23
  %71 = load i32*, i32** %9, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %14, align 4
  %80 = load i32*, i32** %10, align 8
  store i32 %79, i32* %80, align 4
  br label %81

81:                                               ; preds = %76, %73, %70
  %82 = load i64, i64* %11, align 8
  ret i64 %82
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
