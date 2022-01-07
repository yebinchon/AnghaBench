; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, i64 }

@ORIGIN_GTT = common dso_local global i32 0, align 4
@ORIGIN_FLIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"frontbuffer write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_invalidate(%struct.drm_i915_private* %0, i32 %1, i32 %2) #0 {
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
  br label %51

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @ORIGIN_GTT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ORIGIN_FLIP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %14
  br label %51

23:                                               ; preds = %18
  %24 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %25 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %28 = call i32 @intel_fbc_get_frontbuffer_bit(%struct.intel_fbc* %27)
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %32 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %36 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %41 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = call i32 @intel_fbc_deactivate(%struct.drm_i915_private* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %39, %23
  %48 = load %struct.intel_fbc*, %struct.intel_fbc** %7, align 8
  %49 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %22, %13
  ret void
}

declare dso_local i32 @fbc_supported(%struct.drm_i915_private*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_fbc_get_frontbuffer_bit(%struct.intel_fbc*) #1

declare dso_local i32 @intel_fbc_deactivate(%struct.drm_i915_private*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
