; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_vgpu_gm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_aperture_gm.c_alloc_vgpu_gm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_3__, i32, %struct.intel_gvt* }
%struct.TYPE_3__ = type { i32 }
%struct.intel_gvt = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"vgpu%d: alloc low GM start %llx size %llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"vgpu%d: alloc high GM start %llx size %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*)* @alloc_vgpu_gm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_vgpu_gm(%struct.intel_vgpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %7 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %8 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %7, i32 0, i32 2
  %9 = load %struct.intel_gvt*, %struct.intel_gvt** %8, align 8
  store %struct.intel_gvt* %9, %struct.intel_gvt** %4, align 8
  %10 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %11 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %10, i32 0, i32 0
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  store %struct.drm_i915_private* %12, %struct.drm_i915_private** %5, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %14 = call i32 @alloc_gm(%struct.intel_vgpu* %13, i32 0)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %56

19:                                               ; preds = %1
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %21 = call i32 @alloc_gm(%struct.intel_vgpu* %20, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %42

25:                                               ; preds = %19
  %26 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %27 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %30 = call i32 @vgpu_aperture_offset(%struct.intel_vgpu* %29)
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %32 = call i32 @vgpu_aperture_sz(%struct.intel_vgpu* %31)
  %33 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30, i32 %32)
  %34 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %35 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %38 = call i32 @vgpu_hidden_offset(%struct.intel_vgpu* %37)
  %39 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %40 = call i32 @vgpu_hidden_sz(%struct.intel_vgpu* %39)
  %41 = call i32 @gvt_dbg_core(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %38, i32 %40)
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %24
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %44 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 @drm_mm_remove_node(i32* %49)
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %52 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %42, %25, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @alloc_gm(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @gvt_dbg_core(i8*, i32, i32, i32) #1

declare dso_local i32 @vgpu_aperture_offset(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_aperture_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_hidden_offset(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_hidden_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @drm_mm_remove_node(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
