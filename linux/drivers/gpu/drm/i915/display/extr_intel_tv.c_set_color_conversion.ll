; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_set_color_conversion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_tv.c_set_color_conversion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.color_conversion = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@TV_CSC_Y = common dso_local global i32 0, align 4
@TV_CSC_Y2 = common dso_local global i32 0, align 4
@TV_CSC_U = common dso_local global i32 0, align 4
@TV_CSC_U2 = common dso_local global i32 0, align 4
@TV_CSC_V = common dso_local global i32 0, align 4
@TV_CSC_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.color_conversion*)* @set_color_conversion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_color_conversion(%struct.drm_i915_private* %0, %struct.color_conversion* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.color_conversion*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.color_conversion* %1, %struct.color_conversion** %4, align 8
  %5 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %6 = icmp ne %struct.color_conversion* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %69

8:                                                ; preds = %2
  %9 = load i32, i32* @TV_CSC_Y, align 4
  %10 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %11 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = shl i32 %12, 16
  %14 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %15 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %13, %16
  %18 = call i32 @I915_WRITE(i32 %9, i32 %17)
  %19 = load i32, i32* @TV_CSC_Y2, align 4
  %20 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %21 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %25 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %23, %26
  %28 = call i32 @I915_WRITE(i32 %19, i32 %27)
  %29 = load i32, i32* @TV_CSC_U, align 4
  %30 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %31 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %35 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = call i32 @I915_WRITE(i32 %29, i32 %37)
  %39 = load i32, i32* @TV_CSC_U2, align 4
  %40 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %41 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 16
  %44 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %45 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %43, %46
  %48 = call i32 @I915_WRITE(i32 %39, i32 %47)
  %49 = load i32, i32* @TV_CSC_V, align 4
  %50 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %51 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 16
  %54 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %55 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %54, i32 0, i32 9
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = call i32 @I915_WRITE(i32 %49, i32 %57)
  %59 = load i32, i32* @TV_CSC_V2, align 4
  %60 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %61 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.color_conversion*, %struct.color_conversion** %4, align 8
  %65 = getelementptr inbounds %struct.color_conversion, %struct.color_conversion* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  %68 = call i32 @I915_WRITE(i32 %59, i32 %67)
  br label %69

69:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
