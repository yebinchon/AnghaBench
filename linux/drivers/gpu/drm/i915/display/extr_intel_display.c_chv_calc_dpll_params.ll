; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_calc_dpll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_chv_calc_dpll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpll = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chv_calc_dpll_params(i32 %0, %struct.dpll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpll*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.dpll* %1, %struct.dpll** %5, align 8
  %6 = load %struct.dpll*, %struct.dpll** %5, align 8
  %7 = getelementptr inbounds %struct.dpll, %struct.dpll* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.dpll*, %struct.dpll** %5, align 8
  %10 = getelementptr inbounds %struct.dpll, %struct.dpll* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = mul nsw i32 %8, %11
  %13 = load %struct.dpll*, %struct.dpll** %5, align 8
  %14 = getelementptr inbounds %struct.dpll, %struct.dpll* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.dpll*, %struct.dpll** %5, align 8
  %16 = getelementptr inbounds %struct.dpll, %struct.dpll* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dpll*, %struct.dpll** %5, align 8
  %19 = getelementptr inbounds %struct.dpll, %struct.dpll* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  %22 = load %struct.dpll*, %struct.dpll** %5, align 8
  %23 = getelementptr inbounds %struct.dpll, %struct.dpll* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.dpll*, %struct.dpll** %5, align 8
  %25 = getelementptr inbounds %struct.dpll, %struct.dpll* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load %struct.dpll*, %struct.dpll** %5, align 8
  %30 = getelementptr inbounds %struct.dpll, %struct.dpll* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %2
  %34 = phi i1 [ true, %2 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  %36 = call i64 @WARN_ON(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %65

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.dpll*, %struct.dpll** %5, align 8
  %42 = getelementptr inbounds %struct.dpll, %struct.dpll* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mul_u32_u32(i32 %40, i32 %43)
  %45 = load %struct.dpll*, %struct.dpll** %5, align 8
  %46 = getelementptr inbounds %struct.dpll, %struct.dpll* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 22
  %49 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %44, i32 %48)
  %50 = load %struct.dpll*, %struct.dpll** %5, align 8
  %51 = getelementptr inbounds %struct.dpll, %struct.dpll* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dpll*, %struct.dpll** %5, align 8
  %53 = getelementptr inbounds %struct.dpll, %struct.dpll* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dpll*, %struct.dpll** %5, align 8
  %56 = getelementptr inbounds %struct.dpll, %struct.dpll* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @DIV_ROUND_CLOSEST(i32 %54, i32 %57)
  %59 = load %struct.dpll*, %struct.dpll** %5, align 8
  %60 = getelementptr inbounds %struct.dpll, %struct.dpll* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.dpll*, %struct.dpll** %5, align 8
  %62 = getelementptr inbounds %struct.dpll, %struct.dpll* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 5
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %39, %38
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @mul_u32_u32(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
