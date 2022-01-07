; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_calc_dpll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_i9xx_calc_dpll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpll = type { i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.dpll*)* @i9xx_calc_dpll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i9xx_calc_dpll_params(i32 %0, %struct.dpll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dpll* %1, %struct.dpll** %5, align 8
  %6 = load %struct.dpll*, %struct.dpll** %5, align 8
  %7 = call i32 @i9xx_dpll_compute_m(%struct.dpll* %6)
  %8 = load %struct.dpll*, %struct.dpll** %5, align 8
  %9 = getelementptr inbounds %struct.dpll, %struct.dpll* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.dpll*, %struct.dpll** %5, align 8
  %11 = getelementptr inbounds %struct.dpll, %struct.dpll* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.dpll*, %struct.dpll** %5, align 8
  %14 = getelementptr inbounds %struct.dpll, %struct.dpll* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %12, %15
  %17 = load %struct.dpll*, %struct.dpll** %5, align 8
  %18 = getelementptr inbounds %struct.dpll, %struct.dpll* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.dpll*, %struct.dpll** %5, align 8
  %20 = getelementptr inbounds %struct.dpll, %struct.dpll* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 2
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.dpll*, %struct.dpll** %5, align 8
  %26 = getelementptr inbounds %struct.dpll, %struct.dpll* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br label %29

29:                                               ; preds = %24, %2
  %30 = phi i1 [ true, %2 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %63

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.dpll*, %struct.dpll** %5, align 8
  %38 = getelementptr inbounds %struct.dpll, %struct.dpll* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 %36, %39
  %41 = load %struct.dpll*, %struct.dpll** %5, align 8
  %42 = getelementptr inbounds %struct.dpll, %struct.dpll* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 2
  %45 = call i8* @DIV_ROUND_CLOSEST(i32 %40, i64 %44)
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.dpll*, %struct.dpll** %5, align 8
  %48 = getelementptr inbounds %struct.dpll, %struct.dpll* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.dpll*, %struct.dpll** %5, align 8
  %50 = getelementptr inbounds %struct.dpll, %struct.dpll* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.dpll*, %struct.dpll** %5, align 8
  %53 = getelementptr inbounds %struct.dpll, %struct.dpll* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = call i8* @DIV_ROUND_CLOSEST(i32 %51, i64 %55)
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.dpll*, %struct.dpll** %5, align 8
  %59 = getelementptr inbounds %struct.dpll, %struct.dpll* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.dpll*, %struct.dpll** %5, align 8
  %61 = getelementptr inbounds %struct.dpll, %struct.dpll* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %35, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @i9xx_dpll_compute_m(%struct.dpll*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
