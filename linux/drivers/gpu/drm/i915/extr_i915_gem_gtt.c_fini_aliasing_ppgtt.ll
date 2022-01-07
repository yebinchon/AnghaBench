; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_fini_aliasing_ppgtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_fini_aliasing_ppgtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ggtt = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, %struct.drm_i915_private* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.i915_ppgtt = type { i32 }

@ggtt_bind_vma = common dso_local global i32 0, align 4
@ggtt_unbind_vma = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_ggtt*)* @fini_aliasing_ppgtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fini_aliasing_ppgtt(%struct.i915_ggtt* %0) #0 {
  %2 = alloca %struct.i915_ggtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ppgtt*, align 8
  store %struct.i915_ggtt* %0, %struct.i915_ggtt** %2, align 8
  %5 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %6 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %14 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %13, i32 0, i32 1
  %15 = call %struct.i915_ppgtt* @fetch_and_zero(i32* %14)
  store %struct.i915_ppgtt* %15, %struct.i915_ppgtt** %4, align 8
  %16 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %17 = icmp ne %struct.i915_ppgtt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %21 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %20, i32 0, i32 0
  %22 = call i32 @i915_vm_put(i32* %21)
  %23 = load i32, i32* @ggtt_bind_vma, align 4
  %24 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %25 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @ggtt_unbind_vma, align 4
  %29 = load %struct.i915_ggtt*, %struct.i915_ggtt** %2, align 8
  %30 = getelementptr inbounds %struct.i915_ggtt, %struct.i915_ggtt* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  br label %33

33:                                               ; preds = %19, %18
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i915_ppgtt* @fetch_and_zero(i32*) #1

declare dso_local i32 @i915_vm_put(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
