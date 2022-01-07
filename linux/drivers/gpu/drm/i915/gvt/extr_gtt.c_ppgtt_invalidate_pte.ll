; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_invalidate_pte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_invalidate_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_10__, %struct.intel_vgpu* }
%struct.TYPE_10__ = type { i32 }
%struct.intel_vgpu = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i64 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.0*)* @ppgtt_invalidate_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppgtt_invalidate_pte(%struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_gvt_gtt_entry.0* %1) #0 {
  %3 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %4 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %5 = alloca %struct.intel_vgpu*, align 8
  %6 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %4, align 8
  %9 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %9, i32 0, i32 1
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  store %struct.intel_vgpu* %11, %struct.intel_vgpu** %5, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %16, align 8
  store %struct.intel_gvt_gtt_pte_ops* %17, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %18 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %18, i32 0, i32 0
  %20 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %19, align 8
  %21 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %4, align 8
  %22 = bitcast %struct.intel_gvt_gtt_entry.0* %21 to %struct.intel_gvt_gtt_entry*
  %23 = call i64 %20(%struct.intel_gvt_gtt_entry* %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %3, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load i64, i64* %7, align 8
  %32 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %33 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %31, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30, %2
  br label %49

43:                                               ; preds = %30
  %44 = load %struct.intel_vgpu*, %struct.intel_vgpu** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PAGE_SHIFT, align 8
  %47 = shl i64 %45, %46
  %48 = call i32 @intel_gvt_hypervisor_dma_unmap_guest_page(%struct.intel_vgpu* %44, i64 %47)
  br label %49

49:                                               ; preds = %43, %42
  ret void
}

declare dso_local i32 @intel_gvt_hypervisor_dma_unmap_guest_page(%struct.intel_vgpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
