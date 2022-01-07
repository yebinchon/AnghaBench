; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_h_coef.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_gsc.c_gsc_set_h_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsc_context = type { i32 }

@GSC_SC_UP_MAX_RATIO = common dso_local global i64 0, align 8
@GSC_SC_DOWN_RATIO_7_8 = common dso_local global i64 0, align 8
@GSC_SC_DOWN_RATIO_6_8 = common dso_local global i64 0, align 8
@GSC_SC_DOWN_RATIO_5_8 = common dso_local global i64 0, align 8
@GSC_SC_DOWN_RATIO_4_8 = common dso_local global i64 0, align 8
@GSC_SC_DOWN_RATIO_3_8 = common dso_local global i64 0, align 8
@GSC_COEF_PHASE = common dso_local global i32 0, align 4
@GSC_COEF_H_8T = common dso_local global i32 0, align 4
@GSC_COEF_DEPTH = common dso_local global i32 0, align 4
@h_coef_8t = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsc_context*, i64)* @gsc_set_h_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsc_set_h_coef(%struct.gsc_context* %0, i64 %1) #0 {
  %3 = alloca %struct.gsc_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gsc_context* %0, %struct.gsc_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @GSC_SC_UP_MAX_RATIO, align 8
  %11 = icmp ule i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @GSC_SC_DOWN_RATIO_7_8, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %8, align 4
  br label %43

18:                                               ; preds = %13
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @GSC_SC_DOWN_RATIO_6_8, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 2, i32* %8, align 4
  br label %42

23:                                               ; preds = %18
  %24 = load i64, i64* %4, align 8
  %25 = load i64, i64* @GSC_SC_DOWN_RATIO_5_8, align 8
  %26 = icmp ule i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 3, i32* %8, align 4
  br label %41

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @GSC_SC_DOWN_RATIO_4_8, align 8
  %31 = icmp ule i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 4, i32* %8, align 4
  br label %40

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @GSC_SC_DOWN_RATIO_3_8, align 8
  %36 = icmp ule i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 5, i32* %8, align 4
  br label %39

38:                                               ; preds = %33
  store i32 6, i32* %8, align 4
  br label %39

39:                                               ; preds = %38, %37
  br label %40

40:                                               ; preds = %39, %32
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %17
  br label %44

44:                                               ; preds = %43, %12
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %86, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @GSC_COEF_PHASE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  br label %50

50:                                               ; preds = %82, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @GSC_COEF_H_8T, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %78, %54
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @GSC_COEF_DEPTH, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %81

59:                                               ; preds = %55
  %60 = load i32***, i32**** @h_coef_8t, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32**, i32*** %60, i64 %62
  %64 = load i32**, i32*** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @GSC_HCOEF(i32 %73, i32 %74, i32 %75)
  %77 = call i32 @gsc_write(i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %59
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  br label %55

81:                                               ; preds = %55
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  br label %50

85:                                               ; preds = %50
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  br label %45

89:                                               ; preds = %45
  ret void
}

declare dso_local i32 @gsc_write(i32, i32) #1

declare dso_local i32 @GSC_HCOEF(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
