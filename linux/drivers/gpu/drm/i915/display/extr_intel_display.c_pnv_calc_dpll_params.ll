; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pnv_calc_dpll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_pnv_calc_dpll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpll = type { i32, i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dpll*)* @pnv_calc_dpll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnv_calc_dpll_params(i32 %0, %struct.dpll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dpll* %1, %struct.dpll** %5, align 8
  %6 = load %struct.dpll*, %struct.dpll** %5, align 8
  %7 = getelementptr inbounds %struct.dpll, %struct.dpll* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 2
  %10 = load %struct.dpll*, %struct.dpll** %5, align 8
  %11 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load %struct.dpll*, %struct.dpll** %5, align 8
  %13 = getelementptr inbounds %struct.dpll, %struct.dpll* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.dpll*, %struct.dpll** %5, align 8
  %16 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %14, %17
  %19 = load %struct.dpll*, %struct.dpll** %5, align 8
  %20 = getelementptr inbounds %struct.dpll, %struct.dpll* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.dpll*, %struct.dpll** %5, align 8
  %22 = getelementptr inbounds %struct.dpll, %struct.dpll* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %2
  %26 = load %struct.dpll*, %struct.dpll** %5, align 8
  %27 = getelementptr inbounds %struct.dpll, %struct.dpll* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br label %30

30:                                               ; preds = %25, %2
  %31 = phi i1 [ true, %2 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %63

36:                                               ; preds = %30
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.dpll*, %struct.dpll** %5, align 8
  %39 = getelementptr inbounds %struct.dpll, %struct.dpll* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  %42 = load %struct.dpll*, %struct.dpll** %5, align 8
  %43 = getelementptr inbounds %struct.dpll, %struct.dpll* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @DIV_ROUND_CLOSEST(i32 %41, i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.dpll*, %struct.dpll** %5, align 8
  %48 = getelementptr inbounds %struct.dpll, %struct.dpll* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dpll*, %struct.dpll** %5, align 8
  %50 = getelementptr inbounds %struct.dpll, %struct.dpll* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dpll*, %struct.dpll** %5, align 8
  %53 = getelementptr inbounds %struct.dpll, %struct.dpll* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = call i8* @DIV_ROUND_CLOSEST(i32 %51, i64 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.dpll*, %struct.dpll** %5, align 8
  %59 = getelementptr inbounds %struct.dpll, %struct.dpll* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpll*, %struct.dpll** %5, align 8
  %61 = getelementptr inbounds %struct.dpll, %struct.dpll* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %36, %35
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
