; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, i32, i32, i64, i64 }

@ORIGIN_GTT = common dso_local global i32 0, align 4
@ORIGIN_FLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_flush(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  store %struct.intel_fbc* %9, %struct.intel_fbc** %7, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = call i32 @fbc_supported(%struct.drm_i915_private* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %73

14:                                               ; preds = %3
  %15 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %16 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %5, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %21 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ORIGIN_GTT, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %14
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ORIGIN_FLIP, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %14
  br label %69

32:                                               ; preds = %27
  %33 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %34 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %68, label %37

37:                                               ; preds = %32
  %38 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %39 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %38, i32 0, i32 5
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %45 = call i32 @intel_fbc_get_frontbuffer_bit(%struct.intel_fbc* %44)
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %50 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i32 @intel_fbc_recompress(%struct.drm_i915_private* %54)
  br label %67

56:                                               ; preds = %48
  %57 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %58 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %63 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @__intel_fbc_post_update(i32 %64)
  br label %66

66:                                               ; preds = %61, %56
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %42, %37, %32
  br label %69

69:                                               ; preds = %68, %31
  %70 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %71 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  br label %73

73:                                               ; preds = %69, %13
  ret void
}

declare dso_local i32 @fbc_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_fbc_get_frontbuffer_bit(%struct.intel_fbc*) #1

declare dso_local i32 @intel_fbc_recompress(%struct.drm_i915_private*) #1

declare dso_local i32 @__intel_fbc_post_update(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
