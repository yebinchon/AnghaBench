; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_update_shadow_pdps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_update_shadow_pdps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.drm_i915_gem_object* }
%struct.drm_i915_gem_object = type { i32 }
%struct.execlist_ring_context = type { i32 }
%struct.page = type { i32 }

@LRC_STATE_PN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_workload*)* @update_shadow_pdps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_shadow_pdps(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca %struct.intel_vgpu_workload*, align 8
  %3 = alloca %struct.drm_i915_gem_object*, align 8
  %4 = alloca %struct.execlist_ring_context*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %2, align 8
  %6 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %7 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %6, i32 0, i32 1
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %13, align 8
  store %struct.drm_i915_gem_object* %14, %struct.drm_i915_gem_object** %3, align 8
  %15 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = icmp ne %struct.TYPE_10__* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %53

24:                                               ; preds = %1
  %25 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = call i32 @atomic_read(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %24
  br label %53

36:                                               ; preds = %24
  %37 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %3, align 8
  %38 = load i32, i32* @LRC_STATE_PN, align 4
  %39 = call %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object* %37, i32 %38)
  store %struct.page* %39, %struct.page** %5, align 8
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call %struct.execlist_ring_context* @kmap(%struct.page* %40)
  store %struct.execlist_ring_context* %41, %struct.execlist_ring_context** %4, align 8
  %42 = load %struct.execlist_ring_context*, %struct.execlist_ring_context** %4, align 8
  %43 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %44 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @set_context_pdp_root_pointer(%struct.execlist_ring_context* %42, i8* %49)
  %51 = load %struct.page*, %struct.page** %5, align 8
  %52 = call i32 @kunmap(%struct.page* %51)
  br label %53

53:                                               ; preds = %36, %35, %23
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.page* @i915_gem_object_get_page(%struct.drm_i915_gem_object*, i32) #1

declare dso_local %struct.execlist_ring_context* @kmap(%struct.page*) #1

declare dso_local i32 @set_context_pdp_root_pointer(%struct.execlist_ring_context*, i8*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
