; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_PLL_is_optimal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_vlv_PLL_is_optimal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.dpll = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_device*, i32, %struct.dpll*, %struct.dpll*, i32, i32*)* @vlv_PLL_is_optimal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlv_PLL_is_optimal(%struct.drm_device* %0, i32 %1, %struct.dpll* %2, %struct.dpll* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dpll*, align 8
  %11 = alloca %struct.dpll*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.dpll* %2, %struct.dpll** %10, align 8
  store %struct.dpll* %3, %struct.dpll** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %14 = load %struct.drm_device*, %struct.drm_device** %8, align 8
  %15 = call i32 @to_i915(%struct.drm_device* %14)
  %16 = call i64 @IS_CHERRYVIEW(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %6
  %19 = load i32*, i32** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.dpll*, %struct.dpll** %10, align 8
  %21 = getelementptr inbounds %struct.dpll, %struct.dpll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.dpll*, %struct.dpll** %11, align 8
  %24 = getelementptr inbounds %struct.dpll, %struct.dpll* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %68

28:                                               ; preds = %6
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %7, align 4
  br label %68

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.dpll*, %struct.dpll** %10, align 8
  %40 = getelementptr inbounds %struct.dpll, %struct.dpll* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i64 @abs(i64 %42)
  %44 = mul i64 1000000, %43
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @div_u64(i64 %44, i32 %45)
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32*, i32** %13, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ult i32 %49, 100
  br i1 %50, label %51, label %61

51:                                               ; preds = %36
  %52 = load %struct.dpll*, %struct.dpll** %10, align 8
  %53 = getelementptr inbounds %struct.dpll, %struct.dpll* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.dpll*, %struct.dpll** %11, align 8
  %56 = getelementptr inbounds %struct.dpll, %struct.dpll* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32*, i32** %13, align 8
  store i32 0, i32* %60, align 4
  store i32 1, i32* %7, align 4
  br label %68

61:                                               ; preds = %51, %36
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %62, align 4
  %64 = add i32 %63, 10
  %65 = load i32, i32* %12, align 4
  %66 = icmp ult i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %61, %59, %35, %18
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i64 @IS_CHERRYVIEW(i32) #1

declare dso_local i32 @to_i915(%struct.drm_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @div_u64(i64, i32) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
