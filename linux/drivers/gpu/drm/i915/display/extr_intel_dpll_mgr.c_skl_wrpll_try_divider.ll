; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_try_divider.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_skl_wrpll_try_divider.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_wrpll_context = type { i64, i32, i64, i64 }

@SKL_DCO_MAX_PDEVIATION = common dso_local global i64 0, align 8
@SKL_DCO_MAX_NDEVIATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_wrpll_context*, i64, i64, i32)* @skl_wrpll_try_divider to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_wrpll_try_divider(%struct.skl_wrpll_context* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.skl_wrpll_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.skl_wrpll_context* %0, %struct.skl_wrpll_context** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @abs_diff(i64 %10, i64 %11)
  %13 = mul nsw i32 10000, %12
  %14 = load i64, i64* %6, align 8
  %15 = call i64 @div64_u64(i32 %13, i64 %14)
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @SKL_DCO_MAX_PDEVIATION, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %26 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %32 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %35 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %38 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %37, i32 0, i32 2
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %41 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %29, %23, %19
  br label %67

43:                                               ; preds = %4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @SKL_DCO_MAX_NDEVIATION, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %50 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %56 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %59 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %58, i32 0, i32 3
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %62 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.skl_wrpll_context*, %struct.skl_wrpll_context** %5, align 8
  %65 = getelementptr inbounds %struct.skl_wrpll_context, %struct.skl_wrpll_context* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %53, %47, %43
  br label %67

67:                                               ; preds = %66, %42
  ret void
}

declare dso_local i64 @div64_u64(i32, i64) #1

declare dso_local i32 @abs_diff(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
