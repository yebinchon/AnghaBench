; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_atomic_duplicate_dpll_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_atomic_duplicate_dpll_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.intel_shared_dpll* }
%struct.intel_shared_dpll = type { %struct.intel_shared_dpll_state }
%struct.intel_shared_dpll_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll_state*)* @intel_atomic_duplicate_dpll_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_atomic_duplicate_dpll_state(%struct.drm_i915_private* %0, %struct.intel_shared_dpll_state* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll_state* %1, %struct.intel_shared_dpll_state** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %14, i32 0, i32 1
  %16 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %16, i64 %18
  store %struct.intel_shared_dpll* %19, %struct.intel_shared_dpll** %6, align 8
  %20 = load %struct.intel_shared_dpll_state*, %struct.intel_shared_dpll_state** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.intel_shared_dpll_state, %struct.intel_shared_dpll_state* %20, i64 %22
  %24 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %6, align 8
  %25 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %24, i32 0, i32 0
  %26 = bitcast %struct.intel_shared_dpll_state* %23 to i8*
  %27 = bitcast %struct.intel_shared_dpll_state* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  br label %28

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %7

31:                                               ; preds = %7
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
