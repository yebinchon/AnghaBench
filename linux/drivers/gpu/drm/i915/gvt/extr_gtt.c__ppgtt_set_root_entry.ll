; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c__ppgtt_set_root_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c__ppgtt_set_root_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_8__*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.TYPE_7__ = type { i32, i32 }
%struct.intel_gvt_gtt_entry.0 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.0*, i64, i32)* @_ppgtt_set_root_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ppgtt_set_root_entry(%struct.intel_vgpu_mm* %0, %struct.intel_gvt_gtt_entry.0* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.intel_vgpu_mm*, align 8
  %6 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %5, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %16, align 8
  store %struct.intel_gvt_gtt_pte_ops* %17, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %18 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %19 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_8__*)*, i32 (i32, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_8__*)** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %33

28:                                               ; preds = %4
  %29 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %33

33:                                               ; preds = %28, %23
  %34 = phi i32 [ %27, %23 ], [ %32, %28 ]
  %35 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %6, align 8
  %36 = bitcast %struct.intel_gvt_gtt_entry.0* %35 to %struct.intel_gvt_gtt_entry*
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %5, align 8
  %39 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = call i32 %20(i32 %34, %struct.intel_gvt_gtt_entry* %36, i64 %37, i32 0, i32 0, %struct.TYPE_8__* %40)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
