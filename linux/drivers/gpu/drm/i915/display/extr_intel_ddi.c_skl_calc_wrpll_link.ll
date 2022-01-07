; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_calc_wrpll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_calc_wrpll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dpll_hw_state = type { i32, i32 }

@DPLL_CFGCR2_PDIV_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR2_KDIV_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR2_QDIV_RATIO_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR1_DCO_INTEGER_MASK = common dso_local global i32 0, align 4
@DPLL_CFGCR1_DCO_FRACTION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_dpll_hw_state*)* @skl_calc_wrpll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_calc_wrpll_link(%struct.intel_dpll_hw_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_dpll_hw_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dpll_hw_state* %0, %struct.intel_dpll_hw_state** %3, align 8
  %8 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %9 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @DPLL_CFGCR2_PDIV_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %14 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @DPLL_CFGCR2_KDIV_MASK, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %19 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DPLL_CFGCR2_QDIV_MODE(i32 1)
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %26 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DPLL_CFGCR2_QDIV_RATIO_MASK, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 8
  store i32 %30, i32* %5, align 4
  br label %32

31:                                               ; preds = %1
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %38 [
    i32 131, label %34
    i32 130, label %35
    i32 129, label %36
    i32 128, label %37
  ]

34:                                               ; preds = %32
  store i32 1, i32* %4, align 4
  br label %38

35:                                               ; preds = %32
  store i32 2, i32* %4, align 4
  br label %38

36:                                               ; preds = %32
  store i32 3, i32* %4, align 4
  br label %38

37:                                               ; preds = %32
  store i32 7, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %37, %36, %35, %34
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %44 [
    i32 132, label %40
    i32 134, label %41
    i32 133, label %42
    i32 135, label %43
  ]

40:                                               ; preds = %38
  store i32 5, i32* %6, align 4
  br label %44

41:                                               ; preds = %38
  store i32 2, i32* %6, align 4
  br label %44

42:                                               ; preds = %38
  store i32 3, i32* %6, align 4
  br label %44

43:                                               ; preds = %38
  store i32 1, i32* %6, align 4
  br label %44

44:                                               ; preds = %38, %43, %42, %41, %40
  %45 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %46 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DPLL_CFGCR1_DCO_INTEGER_MASK, align 4
  %49 = and i32 %47, %48
  %50 = mul nsw i32 %49, 24
  %51 = mul nsw i32 %50, 1000
  store i32 %51, i32* %7, align 4
  %52 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %3, align 8
  %53 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DPLL_CFGCR1_DCO_FRACTION_MASK, align 4
  %56 = and i32 %54, %55
  %57 = ashr i32 %56, 9
  %58 = mul nsw i32 %57, 24
  %59 = mul nsw i32 %58, 1000
  %60 = sdiv i32 %59, 32768
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %44
  %66 = load i32, i32* %5, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %68, %65, %44
  %72 = phi i1 [ true, %65 ], [ true, %44 ], [ %70, %68 ]
  %73 = zext i1 %72 to i32
  %74 = call i64 @WARN_ON(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 0, i32* %2, align 4
  br label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %5, align 4
  %81 = mul nsw i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = mul nsw i32 %81, %82
  %84 = mul nsw i32 %83, 5
  %85 = sdiv i32 %78, %84
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %77, %76
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @DPLL_CFGCR2_QDIV_MODE(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
