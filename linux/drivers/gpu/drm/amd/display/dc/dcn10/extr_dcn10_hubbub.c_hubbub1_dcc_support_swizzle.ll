; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_dcc_support_swizzle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dcn10/extr_dcn10_hubbub.c_hubbub1_dcc_support_swizzle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@segment_order__contiguous = common dso_local global i32 0, align 4
@segment_order__na = common dso_local global i32 0, align 4
@segment_order__non_contiguous = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*)* @hubbub1_dcc_support_swizzle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hubbub1_dcc_support_swizzle(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %15 [
    i32 137, label %13
    i32 133, label %13
    i32 129, label %13
    i32 136, label %13
    i32 132, label %13
    i32 128, label %13
    i32 139, label %14
    i32 135, label %14
    i32 131, label %14
    i32 138, label %14
    i32 134, label %14
    i32 130, label %14
  ]

13:                                               ; preds = %4, %4, %4, %4, %4, %4
  store i32 1, i32* %10, align 4
  br label %16

14:                                               ; preds = %4, %4, %4, %4, %4, %4
  store i32 1, i32* %11, align 4
  br label %16

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15, %14, %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @segment_order__contiguous, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @segment_order__na, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  store i32 1, i32* %5, align 4
  br label %72

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* @segment_order__non_contiguous, align 4
  %35 = load i32*, i32** %8, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* @segment_order__contiguous, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 %36, i32* %37, align 4
  store i32 1, i32* %5, align 4
  br label %72

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @segment_order__non_contiguous, align 4
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* @segment_order__contiguous, align 4
  %48 = load i32*, i32** %9, align 8
  store i32 %47, i32* %48, align 4
  store i32 1, i32* %5, align 4
  br label %72

49:                                               ; preds = %41, %38
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 8
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* @segment_order__na, align 4
  %57 = load i32*, i32** %8, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @segment_order__contiguous, align 4
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  store i32 1, i32* %5, align 4
  br label %72

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %7, align 4
  %62 = icmp eq i32 %61, 8
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* @segment_order__contiguous, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @segment_order__non_contiguous, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  store i32 1, i32* %5, align 4
  br label %72

71:                                               ; preds = %63, %60
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %71, %66, %55, %44, %33, %22
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
