; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_generate_shadow_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_generate_shadow_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_5__, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.1*)* }
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type opaque
%struct.intel_gvt_gtt_entry = type { i64, i32 }

@GTT_TYPE_PPGTT_PDE_ENTRY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gvt_gtt_entry*, %struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry*)* @ppgtt_generate_shadow_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppgtt_generate_shadow_entry(%struct.intel_gvt_gtt_entry* %0, %struct.intel_vgpu_ppgtt_spt* %1, %struct.intel_gvt_gtt_entry* %2) #0 {
  %4 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %7 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  store %struct.intel_gvt_gtt_entry* %0, %struct.intel_gvt_gtt_entry** %4, align 8
  store %struct.intel_vgpu_ppgtt_spt* %1, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  store %struct.intel_gvt_gtt_entry* %2, %struct.intel_gvt_gtt_entry** %6, align 8
  %8 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %8, i32 0, i32 1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %14, align 8
  store %struct.intel_gvt_gtt_pte_ops* %15, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %16 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %17 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %4, align 8
  %20 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %22 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %4, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %4, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GTT_TYPE_PPGTT_PDE_ENTRY, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  %32 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %33 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %32, i32 0, i32 1
  %34 = load i32 (%struct.intel_gvt_gtt_entry.1*)*, i32 (%struct.intel_gvt_gtt_entry.1*)** %33, align 8
  %35 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %4, align 8
  %36 = bitcast %struct.intel_gvt_gtt_entry* %35 to %struct.intel_gvt_gtt_entry.1*
  %37 = call i32 %34(%struct.intel_gvt_gtt_entry.1* %36)
  br label %38

38:                                               ; preds = %31, %3
  %39 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %40 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %40, align 8
  %42 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %4, align 8
  %43 = bitcast %struct.intel_gvt_gtt_entry* %42 to %struct.intel_gvt_gtt_entry.0*
  %44 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %45 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %41(%struct.intel_gvt_gtt_entry.0* %43, i32 %47)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
