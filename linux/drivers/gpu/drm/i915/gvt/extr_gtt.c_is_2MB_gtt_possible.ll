; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_is_2MB_gtt_possible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_is_2MB_gtt_possible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32 }

@I915_GTT_PAGE_SIZE_2M = common dso_local global i32 0, align 4
@INTEL_GVT_INVALID_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.0*)* @is_2MB_gtt_possible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_2MB_gtt_possible(%struct.intel_vgpu* %0, %struct.intel_gvt_gtt_entry.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %6 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %7 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %8 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %12, align 8
  store %struct.intel_gvt_gtt_pte_ops* %13, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @I915_GTT_PAGE_SIZE_2M, align 4
  %20 = call i32 @HAS_PAGE_SIZES(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %25 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %26 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %26, align 8
  %28 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %29 = bitcast %struct.intel_gvt_gtt_entry.0* %28 to %struct.intel_gvt_gtt_entry*
  %30 = call i32 %27(%struct.intel_gvt_gtt_entry* %29)
  %31 = call i64 @intel_gvt_hypervisor_gfn_to_mfn(%struct.intel_vgpu* %24, i32 %30)
  store i64 %31, i64* %7, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @INTEL_GVT_INVALID_ADDR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %23
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @pfn_to_page(i64 %39)
  %41 = call i32 @PageTransHuge(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %35, %22
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @HAS_PAGE_SIZES(i32, i32) #1

declare dso_local i64 @intel_gvt_hypervisor_gfn_to_mfn(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @PageTransHuge(i32) #1

declare dso_local i32 @pfn_to_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
