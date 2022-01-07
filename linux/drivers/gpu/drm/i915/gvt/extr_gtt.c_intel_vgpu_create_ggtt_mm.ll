; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_create_ggtt_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_create_ggtt_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INTEL_GVT_MM_GGTT = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_mm* (%struct.intel_vgpu*)* @intel_vgpu_create_ggtt_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_mm* @intel_vgpu_create_ggtt_mm(%struct.intel_vgpu* %0) #0 {
  %2 = alloca %struct.intel_vgpu_mm*, align 8
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_vgpu_mm*, align 8
  %5 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  %6 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %7 = call %struct.intel_vgpu_mm* @vgpu_alloc_mm(%struct.intel_vgpu* %6)
  store %struct.intel_vgpu_mm* %7, %struct.intel_vgpu_mm** %4, align 8
  %8 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %9 = icmp ne %struct.intel_vgpu_mm* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.intel_vgpu_mm* @ERR_PTR(i32 %12)
  store %struct.intel_vgpu_mm* %13, %struct.intel_vgpu_mm** %2, align 8
  br label %49

14:                                               ; preds = %1
  %15 = load i32, i32* @INTEL_GVT_MM_GGTT, align 4
  %16 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = call i64 @gvt_ggtt_gm_sz(%struct.TYPE_6__* %20)
  %22 = load i64, i64* @I915_GTT_PAGE_SHIFT, align 8
  %23 = lshr i64 %21, %22
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %26 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @array_size(i64 %24, i32 %30)
  %32 = call i32 @vzalloc(i32 %31)
  %33 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %34 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %37 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %14
  %42 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %43 = call i32 @vgpu_free_mm(%struct.intel_vgpu_mm* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.intel_vgpu_mm* @ERR_PTR(i32 %45)
  store %struct.intel_vgpu_mm* %46, %struct.intel_vgpu_mm** %2, align 8
  br label %49

47:                                               ; preds = %14
  %48 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  store %struct.intel_vgpu_mm* %48, %struct.intel_vgpu_mm** %2, align 8
  br label %49

49:                                               ; preds = %47, %41, %10
  %50 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  ret %struct.intel_vgpu_mm* %50
}

declare dso_local %struct.intel_vgpu_mm* @vgpu_alloc_mm(%struct.intel_vgpu*) #1

declare dso_local %struct.intel_vgpu_mm* @ERR_PTR(i32) #1

declare dso_local i64 @gvt_ggtt_gm_sz(%struct.TYPE_6__*) #1

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @array_size(i64, i32) #1

declare dso_local i32 @vgpu_free_mm(%struct.intel_vgpu_mm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
