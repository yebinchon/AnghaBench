; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ggtt_driver_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ggtt_driver_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pagevec }
%struct.pagevec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i915_ggtt_driver_release(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.pagevec*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  %6 = call i32 @fini_aliasing_ppgtt(i32* %5)
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  %9 = call i32 @ggtt_cleanup_hw(i32* %8)
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.pagevec* %13, %struct.pagevec** %3, align 8
  %14 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %15 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %20 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %23 = getelementptr inbounds %struct.pagevec, %struct.pagevec* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @set_pages_array_wb(i32 %21, i64 %24)
  %26 = load %struct.pagevec*, %struct.pagevec** %3, align 8
  %27 = call i32 @__pagevec_release(%struct.pagevec* %26)
  br label %28

28:                                               ; preds = %18, %1
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %30 = call i32 @i915_gem_cleanup_stolen(%struct.drm_i915_private* %29)
  ret void
}

declare dso_local i32 @fini_aliasing_ppgtt(i32*) #1

declare dso_local i32 @ggtt_cleanup_hw(i32*) #1

declare dso_local i32 @set_pages_array_wb(i32, i64) #1

declare dso_local i32 @__pagevec_release(%struct.pagevec*) #1

declare dso_local i32 @i915_gem_cleanup_stolen(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
