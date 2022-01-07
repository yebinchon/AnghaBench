; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_reset_ggtt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_intel_vgpu_reset_ggtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__, %struct.intel_gvt* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_gvt = type { %struct.TYPE_3__, %struct.drm_i915_private* }
%struct.TYPE_3__ = type { i32, %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.drm_i915_private = type { i32 }
%struct.intel_gvt_gtt_entry.1 = type { i32 }

@GTT_TYPE_GGTT_PTE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_vgpu_reset_ggtt(%struct.intel_vgpu* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_gvt*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %8 = alloca %struct.intel_gvt_gtt_entry.1, align 4
  %9 = alloca %struct.intel_gvt_gtt_entry.1, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %13, align 8
  store %struct.intel_gvt* %14, %struct.intel_gvt** %5, align 8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 1
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %19 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %18, i32 0, i32 1
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %19, align 8
  %21 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %22, align 8
  store %struct.intel_gvt_gtt_pte_ops* %23, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %24 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %8, i32 0, i32 0
  %25 = load i32, i32* @GTT_TYPE_GGTT_PTE, align 4
  store i32 %25, i32* %24, align 4
  %26 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %26, i32 0, i32 1
  %28 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %27, align 8
  %29 = bitcast %struct.intel_gvt_gtt_entry.1* %8 to %struct.intel_gvt_gtt_entry.0*
  %30 = load %struct.intel_gvt*, %struct.intel_gvt** %5, align 8
  %31 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 %28(%struct.intel_gvt_gtt_entry.0* %29, i32 %33)
  %35 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %36, align 8
  %38 = bitcast %struct.intel_gvt_gtt_entry.1* %8 to %struct.intel_gvt_gtt_entry*
  %39 = call i32 %37(%struct.intel_gvt_gtt_entry* %38)
  %40 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %41 = call i32 @vgpu_aperture_gmadr_base(%struct.intel_vgpu* %40)
  %42 = load i32, i32* @PAGE_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %45 = call i32 @vgpu_aperture_sz(%struct.intel_vgpu* %44)
  %46 = load i32, i32* @PAGE_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %64, %2
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %11, align 4
  %51 = icmp ne i32 %49, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %48
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %57 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @ggtt_get_host_entry(i32 %59, %struct.intel_gvt_gtt_entry.1* %9, i32 %60)
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %63 = call i32 @ggtt_invalidate_pte(%struct.intel_vgpu* %62, %struct.intel_gvt_gtt_entry.1* %9)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %66 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  %71 = call i32 @ggtt_set_host_entry(i32 %68, %struct.intel_gvt_gtt_entry.1* %8, i32 %69)
  br label %48

72:                                               ; preds = %48
  %73 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %74 = call i32 @vgpu_hidden_gmadr_base(%struct.intel_vgpu* %73)
  %75 = load i32, i32* @PAGE_SHIFT, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %10, align 4
  %77 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %78 = call i32 @vgpu_hidden_sz(%struct.intel_vgpu* %77)
  %79 = load i32, i32* @PAGE_SHIFT, align 4
  %80 = ashr i32 %78, %79
  store i32 %80, i32* %11, align 4
  br label %81

81:                                               ; preds = %97, %72
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %11, align 4
  %84 = icmp ne i32 %82, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %85
  %89 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %90 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @ggtt_get_host_entry(i32 %92, %struct.intel_gvt_gtt_entry.1* %9, i32 %93)
  %95 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %96 = call i32 @ggtt_invalidate_pte(%struct.intel_vgpu* %95, %struct.intel_gvt_gtt_entry.1* %9)
  br label %97

97:                                               ; preds = %88, %85
  %98 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %99 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = call i32 @ggtt_set_host_entry(i32 %101, %struct.intel_gvt_gtt_entry.1* %8, i32 %102)
  br label %81

105:                                              ; preds = %81
  %106 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %107 = call i32 @ggtt_invalidate(%struct.drm_i915_private* %106)
  ret void
}

declare dso_local i32 @vgpu_aperture_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_aperture_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @ggtt_get_host_entry(i32, %struct.intel_gvt_gtt_entry.1*, i32) #1

declare dso_local i32 @ggtt_invalidate_pte(%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.1*) #1

declare dso_local i32 @ggtt_set_host_entry(i32, %struct.intel_gvt_gtt_entry.1*, i32) #1

declare dso_local i32 @vgpu_hidden_gmadr_base(%struct.intel_vgpu*) #1

declare dso_local i32 @vgpu_hidden_sz(%struct.intel_vgpu*) #1

declare dso_local i32 @ggtt_invalidate(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
