; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ggtt_get_host_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ggtt_get_host_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i32*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32 }

@INTEL_GVT_MM_GGTT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.0*, i64)* @ggtt_get_host_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ggtt_get_host_entry(%struct.intel_vgpu_mm* %0, %struct.intel_gvt_gtt_entry.0* %1, i64 %2) #0 {
  %4 = alloca %struct.intel_vgpu_mm*, align 8
  %5 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %4, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %14, align 8
  store %struct.intel_gvt_gtt_pte_ops* %15, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %16 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTEL_GVT_MM_GGTT, align 8
  %20 = icmp ne i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @GEM_BUG_ON(i32 %21)
  %23 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %7, align 8
  %24 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %23, i32 0, i32 0
  %25 = load i32 (i32*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)*, i32 (i32*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)** %24, align 8
  %26 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %27 = bitcast %struct.intel_gvt_gtt_entry.0* %26 to %struct.intel_gvt_gtt_entry*
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %4, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 %25(i32* null, %struct.intel_gvt_gtt_entry* %27, i64 %28, i32 0, i32 0, %struct.TYPE_6__* %31)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
