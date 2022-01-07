; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_mg_pll_find_divisors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_mg_pll_find_divisors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dpll_hw_state = type { i32, i32, i32 }

@__const.icl_mg_pll_find_divisors.div1_vals = private unnamed_addr constant [4 x i32] [i32 7, i32 5, i32 3, i32 2], align 16
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2 = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3 = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5 = common dso_local global i32 0, align 4
@MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*, %struct.intel_dpll_hw_state*)* @icl_mg_pll_find_divisors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_mg_pll_find_divisors(i32 %0, i32 %1, i32 %2, i32* %3, %struct.intel_dpll_hw_state* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.intel_dpll_hw_state*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [4 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.intel_dpll_hw_state* %4, %struct.intel_dpll_hw_state** %11, align 8
  %23 = bitcast [4 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %23, i8* align 16 bitcast ([4 x i32]* @__const.icl_mg_pll_find_divisors.div1_vals to i8*), i64 16, i1 false)
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %32

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 8000000, i32 7992000
  br label %32

32:                                               ; preds = %27, %26
  %33 = phi i32 [ 8100000, %26 ], [ %31, %27 ]
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 8100000, i32 10000000
  store i32 %37, i32* %13, align 4
  store i32 0, i32* %15, align 4
  br label %38

38:                                               ; preds = %118, %32
  %39 = load i32, i32* %15, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %41 = call i32 @ARRAY_SIZE(i32* %40)
  %42 = icmp ult i32 %39, %41
  br i1 %42, label %43, label %121

43:                                               ; preds = %38
  %44 = load i32, i32* %15, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %17, align 4
  store i32 10, i32* %16, align 4
  br label %48

48:                                               ; preds = %114, %43
  %49 = load i32, i32* %16, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %117

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %16, align 4
  %54 = mul nsw i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = mul nsw i32 %56, 5
  store i32 %57, i32* %18, align 4
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61, %51
  br label %114

66:                                               ; preds = %61
  %67 = load i32, i32* %16, align 4
  %68 = icmp sge i32 %67, 2
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 10, i32 5
  store i32 %73, i32* %19, align 4
  store i32 2, i32* %20, align 4
  br label %75

74:                                               ; preds = %66
  store i32 5, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %75

75:                                               ; preds = %74, %69
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  store i32 %79, i32* %21, align 4
  %80 = load i32, i32* %17, align 4
  switch i32 %80, label %81 [
    i32 2, label %84
    i32 3, label %86
    i32 5, label %88
    i32 7, label %90
  ]

81:                                               ; preds = %75
  %82 = load i32, i32* %17, align 4
  %83 = call i32 @MISSING_CASE(i32 %82)
  br label %84

84:                                               ; preds = %75, %81
  %85 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_2, align 4
  store i32 %85, i32* %22, align 4
  br label %92

86:                                               ; preds = %75
  %87 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_3, align 4
  store i32 %87, i32* %22, align 4
  br label %92

88:                                               ; preds = %75
  %89 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_5, align 4
  store i32 %89, i32* %22, align 4
  br label %92

90:                                               ; preds = %75
  %91 = load i32, i32* @MG_CLKTOP2_HSCLKCTL_HSDIV_RATIO_7, align 4
  store i32 %91, i32* %22, align 4
  br label %92

92:                                               ; preds = %90, %88, %86, %84
  %93 = load i32, i32* %18, align 4
  %94 = load i32*, i32** %10, align 8
  store i32 %93, i32* %94, align 4
  %95 = call i32 @MG_REFCLKIN_CTL_OD_2_MUX(i32 1)
  %96 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %11, align 8
  %97 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %19, align 4
  %99 = call i32 @MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(i32 %98)
  %100 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %11, align 8
  %101 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %20, align 4
  %103 = call i32 @MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(i32 %102)
  %104 = load i32, i32* %21, align 4
  %105 = call i32 @MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(i32 %104)
  %106 = or i32 %103, %105
  %107 = load i32, i32* %22, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(i32 %109)
  %111 = or i32 %108, %110
  %112 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %11, align 8
  %113 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  store i32 1, i32* %6, align 4
  br label %122

114:                                              ; preds = %65
  %115 = load i32, i32* %16, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %16, align 4
  br label %48

117:                                              ; preds = %48
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %15, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %38

121:                                              ; preds = %38
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %121, %92
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @MISSING_CASE(i32) #2

declare dso_local i32 @MG_REFCLKIN_CTL_OD_2_MUX(i32) #2

declare dso_local i32 @MG_CLKTOP2_CORECLKCTL1_A_DIVRATIO(i32) #2

declare dso_local i32 @MG_CLKTOP2_HSCLKCTL_TLINEDRV_CLKSEL(i32) #2

declare dso_local i32 @MG_CLKTOP2_HSCLKCTL_CORE_INPUTSEL(i32) #2

declare dso_local i32 @MG_CLKTOP2_HSCLKCTL_DSDIV_RATIO(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
