; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_dcc_support_swizzle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn20/extr_dcn20_hubbub.c_hubbub2_dcc_support_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@segment_order__contiguous = common dso_local global i32 0, align 4
@segment_order__na = common dso_local global i32 0, align 4
@segment_order__non_contiguous = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hubbub2_dcc_support_swizzle(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %17 [
    i32 138, label %14
    i32 133, label %14
    i32 129, label %14
    i32 137, label %14
    i32 132, label %14
    i32 128, label %14
    i32 134, label %15
    i32 140, label %16
    i32 136, label %16
    i32 131, label %16
    i32 139, label %16
    i32 135, label %16
    i32 130, label %16
  ]

14:                                               ; preds = %4, %4, %4, %4, %4, %4
  store i32 1, i32* %10, align 4
  br label %18

15:                                               ; preds = %4
  store i32 1, i32* %12, align 4
  br label %18

16:                                               ; preds = %4, %4, %4, %4, %4, %4
  store i32 1, i32* %11, align 4
  br label %18

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %17, %16, %15, %14
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* @segment_order__contiguous, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @segment_order__na, align 4
  %28 = load i32*, i32** %9, align 8
  store i32 %27, i32* %28, align 4
  store i32 1, i32* %5, align 4
  br label %94

29:                                               ; preds = %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load i32, i32* @segment_order__non_contiguous, align 4
  %34 = load i32*, i32** %8, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @segment_order__contiguous, align 4
  %36 = load i32*, i32** %9, align 8
  store i32 %35, i32* %36, align 4
  store i32 1, i32* %5, align 4
  br label %94

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load i32, i32* @segment_order__non_contiguous, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @segment_order__contiguous, align 4
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  store i32 1, i32* %5, align 4
  br label %94

45:                                               ; preds = %37
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 8
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @segment_order__na, align 4
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @segment_order__contiguous, align 4
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  store i32 1, i32* %5, align 4
  br label %94

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %18
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 2
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* @segment_order__contiguous, align 4
  %62 = load i32*, i32** %8, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @segment_order__contiguous, align 4
  %64 = load i32*, i32** %9, align 8
  store i32 %63, i32* %64, align 4
  store i32 1, i32* %5, align 4
  br label %94

65:                                               ; preds = %57
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32, i32* @segment_order__non_contiguous, align 4
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @segment_order__contiguous, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  store i32 1, i32* %5, align 4
  br label %94

73:                                               ; preds = %65
  %74 = load i32, i32* %7, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* @segment_order__contiguous, align 4
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @segment_order__non_contiguous, align 4
  %80 = load i32*, i32** %9, align 8
  store i32 %79, i32* %80, align 4
  store i32 1, i32* %5, align 4
  br label %94

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = icmp eq i32 %86, 8
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = load i32, i32* @segment_order__contiguous, align 4
  %90 = load i32*, i32** %8, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32, i32* @segment_order__non_contiguous, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  store i32 1, i32* %5, align 4
  br label %94

93:                                               ; preds = %85, %82
  store i32 0, i32* %5, align 4
  br label %94

94:                                               ; preds = %93, %88, %76, %68, %60, %48, %40, %32, %24
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
