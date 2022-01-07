; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_dscceComputeDelay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dml/dcn20/extr_display_mode_vba_20.c_dscceComputeDelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dm_n422 = common dso_local global i32 0, align 4
@dm_420 = common dso_local global i32 0, align 4
@dm_s422 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, double, i32, i32, i32)* @dscceComputeDelay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dscceComputeDelay(i32 %0, double %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store double %1, double* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 8192, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @dm_n422, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @dm_420, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %5
  store i32 2, i32* %12, align 4
  br label %36

35:                                               ; preds = %30
  store i32 1, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load i32, i32* %11, align 4
  %38 = uitofp i32 %37 to double
  %39 = fdiv double %38, 2.000000e+00
  %40 = load double, double* %7, align 8
  %41 = fdiv double %39, %40
  %42 = load i32, i32* %12, align 4
  %43 = uitofp i32 %42 to double
  %44 = fdiv double %41, %43
  %45 = fptoui double %44 to i32
  %46 = call i32 @dml_round(i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp eq i32 %47, 8
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  store i32 81, i32* %14, align 4
  br label %56

50:                                               ; preds = %36
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 10
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 89, i32* %14, align 4
  br label %55

54:                                               ; preds = %50
  store i32 113, i32* %14, align 4
  br label %55

55:                                               ; preds = %54, %53
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %12, align 4
  %59 = udiv i32 %57, %58
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @dm_s422, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  store i32 1, i32* %17, align 4
  br label %65

64:                                               ; preds = %56
  store i32 0, i32* %17, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load i32, i32* %15, align 4
  %67 = add i32 %66, 45
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %16, align 4
  %69 = add i32 %68, 2
  %70 = udiv i32 %69, 3
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = mul i32 3, %71
  %73 = load i32, i32* %16, align 4
  %74 = sub i32 %72, %73
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  %77 = udiv i32 %75, %76
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %20, align 4
  %80 = load i32, i32* %21, align 4
  %81 = mul i32 %79, %80
  %82 = add i32 %78, %81
  store i32 %82, i32* %22, align 4
  %83 = load i32, i32* %22, align 4
  %84 = add i32 %83, 2
  %85 = udiv i32 %84, 3
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %85, %86
  %88 = add i32 %87, 6
  %89 = add i32 %88, 1
  store i32 %89, i32* %23, align 4
  %90 = load i32, i32* %23, align 4
  %91 = load i32, i32* %19, align 4
  %92 = add i32 %90, %91
  %93 = sub i32 %92, 1
  %94 = load i32, i32* %19, align 4
  %95 = udiv i32 %93, %94
  store i32 %95, i32* %24, align 4
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %16, align 4
  %98 = urem i32 %96, %97
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %65
  %101 = load i32, i32* %20, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  store i32 1, i32* %13, align 4
  br label %105

104:                                              ; preds = %100, %65
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %104, %103
  %106 = load i32, i32* %24, align 4
  %107 = load i32, i32* %19, align 4
  %108 = mul i32 %106, %107
  %109 = load i32, i32* %9, align 4
  %110 = sub i32 %109, 1
  %111 = mul i32 %108, %110
  %112 = load i32, i32* %23, align 4
  %113 = add i32 %111, %112
  %114 = load i32, i32* %17, align 4
  %115 = add i32 %113, %114
  %116 = load i32, i32* %13, align 4
  %117 = add i32 %115, %116
  %118 = add i32 %117, 22
  store i32 %118, i32* %25, align 4
  %119 = load i32, i32* %25, align 4
  %120 = mul i32 %119, 3
  %121 = load i32, i32* %12, align 4
  %122 = mul i32 %120, %121
  store i32 %122, i32* %26, align 4
  %123 = load i32, i32* %26, align 4
  ret i32 %123
}

declare dso_local i32 @dml_round(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
