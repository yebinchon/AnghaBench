; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_get_multipliers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_get_multipliers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @skl_wrpll_get_multipliers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_wrpll_get_multipliers(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = urem i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %4
  %14 = load i32, i32* %5, align 4
  %15 = udiv i32 %14, 2
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %27, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 5
  br i1 %26, label %27, label %32

27:                                               ; preds = %24, %21, %18, %13
  %28 = load i32*, i32** %6, align 8
  store i32 2, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  store i32 1, i32* %29, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32*, i32** %8, align 8
  store i32 %30, i32* %31, align 4
  br label %65

32:                                               ; preds = %24
  %33 = load i32, i32* %9, align 4
  %34 = urem i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* %9, align 4
  %39 = udiv i32 %38, 2
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 2, i32* %41, align 4
  br label %64

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = urem i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  store i32 3, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = udiv i32 %48, 3
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 2, i32* %51, align 4
  br label %63

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = urem i32 %53, 7
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32*, i32** %6, align 8
  store i32 7, i32* %57, align 4
  %58 = load i32, i32* %9, align 4
  %59 = udiv i32 %58, 7
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32*, i32** %8, align 8
  store i32 2, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %52
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %36
  br label %65

65:                                               ; preds = %64, %27
  br label %115

66:                                               ; preds = %4
  %67 = load i32, i32* %5, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 9
  br i1 %71, label %72, label %78

72:                                               ; preds = %69, %66
  %73 = load i32*, i32** %6, align 8
  store i32 3, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  store i32 1, i32* %74, align 4
  %75 = load i32, i32* %5, align 4
  %76 = udiv i32 %75, 3
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  br label %114

78:                                               ; preds = %69
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 5
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = icmp eq i32 %82, 7
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %5, align 4
  %86 = load i32*, i32** %6, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  store i32 1, i32* %87, align 4
  %88 = load i32*, i32** %8, align 8
  store i32 1, i32* %88, align 4
  br label %113

89:                                               ; preds = %81
  %90 = load i32, i32* %5, align 4
  %91 = icmp eq i32 %90, 15
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = load i32*, i32** %6, align 8
  store i32 3, i32* %93, align 4
  %94 = load i32*, i32** %7, align 8
  store i32 1, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 5, i32* %95, align 4
  br label %112

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = icmp eq i32 %97, 21
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load i32*, i32** %6, align 8
  store i32 7, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 1, i32* %101, align 4
  %102 = load i32*, i32** %8, align 8
  store i32 3, i32* %102, align 4
  br label %111

103:                                              ; preds = %96
  %104 = load i32, i32* %5, align 4
  %105 = icmp eq i32 %104, 35
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32*, i32** %6, align 8
  store i32 7, i32* %107, align 4
  %108 = load i32*, i32** %7, align 8
  store i32 1, i32* %108, align 4
  %109 = load i32*, i32** %8, align 8
  store i32 5, i32* %109, align 4
  br label %110

110:                                              ; preds = %106, %103
  br label %111

111:                                              ; preds = %110, %99
  br label %112

112:                                              ; preds = %111, %92
  br label %113

113:                                              ; preds = %112, %84
  br label %114

114:                                              ; preds = %113, %72
  br label %115

115:                                              ; preds = %114, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
