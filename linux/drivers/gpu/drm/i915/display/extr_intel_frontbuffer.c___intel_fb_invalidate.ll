; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_frontbuffer.c___intel_fb_invalidate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_frontbuffer.c___intel_fb_invalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_frontbuffer = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }

@ORIGIN_CS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__intel_fb_invalidate(%struct.intel_frontbuffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_frontbuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_frontbuffer* %0, %struct.intel_frontbuffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.intel_frontbuffer*, %struct.intel_frontbuffer** %4, align 8
  %9 = getelementptr inbounds %struct.intel_frontbuffer, %struct.intel_frontbuffer* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.drm_i915_private* @to_i915(i32 %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ORIGIN_CS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %3
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %23
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %37 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock(i32* %38)
  br label %40

40:                                               ; preds = %18, %3
  %41 = call i32 (...) @might_sleep()
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @intel_psr_invalidate(%struct.drm_i915_private* %42, i32 %43, i32 %44)
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @intel_edp_drrs_invalidate(%struct.drm_i915_private* %46, i32 %47)
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @intel_fbc_invalidate(%struct.drm_i915_private* %49, i32 %50, i32 %51)
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @intel_psr_invalidate(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @intel_edp_drrs_invalidate(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_fbc_invalidate(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
