; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_gem_gtt.c_i915_ppgtt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_ppgtt = type { i32 }
%struct.drm_i915_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i915_ppgtt* @i915_ppgtt_create(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.i915_ppgtt*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_ppgtt*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %6 = call %struct.i915_ppgtt* @__ppgtt_create(%struct.drm_i915_private* %5)
  store %struct.i915_ppgtt* %6, %struct.i915_ppgtt** %4, align 8
  %7 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %8 = call i64 @IS_ERR(%struct.i915_ppgtt* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  store %struct.i915_ppgtt* %11, %struct.i915_ppgtt** %2, align 8
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  %14 = getelementptr inbounds %struct.i915_ppgtt, %struct.i915_ppgtt* %13, i32 0, i32 0
  %15 = call i32 @trace_i915_ppgtt_create(i32* %14)
  %16 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %4, align 8
  store %struct.i915_ppgtt* %16, %struct.i915_ppgtt** %2, align 8
  br label %17

17:                                               ; preds = %12, %10
  %18 = load %struct.i915_ppgtt*, %struct.i915_ppgtt** %2, align 8
  ret %struct.i915_ppgtt* %18
}

declare dso_local %struct.i915_ppgtt* @__ppgtt_create(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ERR(%struct.i915_ppgtt*) #1

declare dso_local i32 @trace_i915_ppgtt_create(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
