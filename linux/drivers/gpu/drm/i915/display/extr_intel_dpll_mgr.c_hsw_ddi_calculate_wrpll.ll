; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_calculate_wrpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_hsw_ddi_calculate_wrpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsw_wrpll_rnp = type { i32, i32, i32, i32, i32, i32 }

@LC_FREQ = common dso_local global i32 0, align 4
@REF_MAX = common dso_local global i32 0, align 4
@REF_MIN = common dso_local global i32 0, align 4
@VCO_MIN = common dso_local global i32 0, align 4
@VCO_MAX = common dso_local global i32 0, align 4
@P_MIN = common dso_local global i32 0, align 4
@P_MAX = common dso_local global i32 0, align 4
@P_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*)* @hsw_ddi_calculate_wrpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_ddi_calculate_wrpll(i32 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hsw_wrpll_rnp, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = bitcast %struct.hsw_wrpll_rnp* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 24, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = sdiv i32 %16, 100
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @hsw_wrpll_get_budget_for_freq(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 5400000
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  store i32 2, i32* %23, align 4
  %24 = load i32*, i32** %8, align 8
  store i32 1, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  store i32 2, i32* %25, align 4
  br label %91

26:                                               ; preds = %4
  %27 = load i32, i32* @LC_FREQ, align 4
  %28 = mul nsw i32 %27, 2
  %29 = load i32, i32* @REF_MAX, align 4
  %30 = sdiv i32 %28, %29
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %78, %26
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @LC_FREQ, align 4
  %35 = mul nsw i32 %34, 2
  %36 = load i32, i32* @REF_MIN, align 4
  %37 = sdiv i32 %35, %36
  %38 = icmp ule i32 %33, %37
  br i1 %38, label %39, label %81

39:                                               ; preds = %32
  %40 = load i32, i32* @VCO_MIN, align 4
  %41 = load i32, i32* %12, align 4
  %42 = mul i32 %40, %41
  %43 = load i32, i32* @LC_FREQ, align 4
  %44 = udiv i32 %42, %43
  %45 = add i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %74, %39
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @VCO_MAX, align 4
  %49 = load i32, i32* %12, align 4
  %50 = mul i32 %48, %49
  %51 = load i32, i32* @LC_FREQ, align 4
  %52 = udiv i32 %50, %51
  %53 = icmp ule i32 %47, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %46
  %55 = load i32, i32* @P_MIN, align 4
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @P_MAX, align 4
  %59 = icmp ule i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @hsw_wrpll_update_rnp(i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, %struct.hsw_wrpll_rnp* %13)
  br label %67

67:                                               ; preds = %60
  %68 = load i64, i64* @P_INC, align 8
  %69 = load i32, i32* %10, align 4
  %70 = zext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %10, align 4
  br label %56

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %11, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %11, align 4
  br label %46

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %32

81:                                               ; preds = %32
  %82 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %13, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %7, align 8
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %13, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %8, align 8
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds %struct.hsw_wrpll_rnp, %struct.hsw_wrpll_rnp* %13, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %6, align 8
  store i32 %89, i32* %90, align 4
  br label %91

91:                                               ; preds = %81, %22
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hsw_wrpll_get_budget_for_freq(i32) #2

declare dso_local i32 @hsw_wrpll_update_rnp(i32, i32, i32, i32, i32, %struct.hsw_wrpll_rnp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
