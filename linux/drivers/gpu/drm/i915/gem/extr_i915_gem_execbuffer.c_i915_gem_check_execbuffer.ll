; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_gem_check_execbuffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/extr_i915_gem_execbuffer.c_i915_gem_check_execbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_execbuffer2 = type { i32, i32, i32, i32, i64, i64, i64 }

@__I915_EXEC_ILLEGAL_FLAGS = common dso_local global i32 0, align 4
@I915_EXEC_FENCE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"UXA submitting garbage DR4, fixing up\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_gem_execbuffer2*)* @i915_gem_check_execbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i915_gem_check_execbuffer(%struct.drm_i915_gem_execbuffer2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_gem_execbuffer2*, align 8
  store %struct.drm_i915_gem_execbuffer2* %0, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %4 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %5 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @__I915_EXEC_ILLEGAL_FLAGS, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

11:                                               ; preds = %1
  %12 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %13 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @I915_EXEC_FENCE_ARRAY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %11
  %19 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %20 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %25 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %62

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %29, %11
  %31 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %32 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %38 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %41 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %46 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 0, i32* %2, align 4
  br label %62

50:                                               ; preds = %44
  %51 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %52 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.drm_i915_gem_execbuffer2*, %struct.drm_i915_gem_execbuffer2** %3, align 8
  %55 = getelementptr inbounds %struct.drm_i915_gem_execbuffer2, %struct.drm_i915_gem_execbuffer2* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %53, %56
  %58 = and i32 %57, 7
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  store i32 0, i32* %2, align 4
  br label %62

61:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %60, %49, %28, %10
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @DRM_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
