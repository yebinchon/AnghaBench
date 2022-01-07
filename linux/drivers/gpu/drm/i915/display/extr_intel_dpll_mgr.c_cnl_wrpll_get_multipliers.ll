; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_wrpll_get_multipliers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_cnl_wrpll_get_multipliers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @cnl_wrpll_get_multipliers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnl_wrpll_get_multipliers(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %5, align 4
  %10 = srem i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %64

12:                                               ; preds = %4
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32*, i32** %6, align 8
  store i32 2, i32* %16, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 1, i32* %17, align 4
  %18 = load i32*, i32** %8, align 8
  store i32 1, i32* %18, align 4
  br label %63

19:                                               ; preds = %12
  %20 = load i32, i32* %5, align 4
  %21 = srem i32 %20, 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  store i32 2, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sdiv i32 %25, 4
  %27 = load i32*, i32** %7, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  store i32 2, i32* %28, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32*, i32** %6, align 8
  store i32 3, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sdiv i32 %35, 6
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 2, i32* %38, align 4
  br label %61

39:                                               ; preds = %29
  %40 = load i32, i32* %5, align 4
  %41 = srem i32 %40, 5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32*, i32** %6, align 8
  store i32 5, i32* %44, align 4
  %45 = load i32, i32* %5, align 4
  %46 = sdiv i32 %45, 10
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %8, align 8
  store i32 2, i32* %48, align 4
  br label %60

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = srem i32 %50, 14
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %49
  %54 = load i32*, i32** %6, align 8
  store i32 7, i32* %54, align 4
  %55 = load i32, i32* %5, align 4
  %56 = sdiv i32 %55, 14
  %57 = load i32*, i32** %7, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32*, i32** %8, align 8
  store i32 2, i32* %58, align 4
  br label %59

59:                                               ; preds = %53, %49
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %33
  br label %62

62:                                               ; preds = %61, %23
  br label %63

63:                                               ; preds = %62, %15
  br label %85

64:                                               ; preds = %4
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 5
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 7
  br i1 %72, label %73, label %78

73:                                               ; preds = %70, %67, %64
  %74 = load i32, i32* %5, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  store i32 1, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  store i32 1, i32* %77, align 4
  br label %84

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = sdiv i32 %79, 3
  %81 = load i32*, i32** %6, align 8
  store i32 %80, i32* %81, align 4
  %82 = load i32*, i32** %7, align 8
  store i32 1, i32* %82, align 4
  %83 = load i32*, i32** %8, align 8
  store i32 3, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %84, %63
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
