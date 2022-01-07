; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_get_next_level_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_get_next_level_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32 }
%struct.intel_vgpu_ppgtt_spt = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.0*, i64, i32)* @ppgtt_get_next_level_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_get_next_level_entry(%struct.intel_vgpu_mm* %0, %struct.intel_gvt_gtt_entry.0* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu_mm*, align 8
  %7 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.intel_vgpu*, align 8
  %11 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %12 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %6, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %6, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %13, i32 0, i32 0
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %14, align 8
  store %struct.intel_vgpu* %15, %struct.intel_vgpu** %10, align 8
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %20, align 8
  store %struct.intel_gvt_gtt_pte_ops* %21, %struct.intel_gvt_gtt_pte_ops** %11, align 8
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  %23 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %11, align 8
  %24 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %23, i32 0, i32 0
  %25 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %24, align 8
  %26 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %7, align 8
  %27 = bitcast %struct.intel_gvt_gtt_entry.0* %26 to %struct.intel_gvt_gtt_entry*
  %28 = call i32 %25(%struct.intel_gvt_gtt_entry* %27)
  %29 = call %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu* %22, i32 %28)
  store %struct.intel_vgpu_ppgtt_spt* %29, %struct.intel_vgpu_ppgtt_spt** %12, align 8
  %30 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %12, align 8
  %31 = icmp ne %struct.intel_vgpu_ppgtt_spt* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %49

35:                                               ; preds = %4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %12, align 8
  %40 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %39, %struct.intel_gvt_gtt_entry.0* %40, i64 %41)
  br label %48

43:                                               ; preds = %35
  %44 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %12, align 8
  %45 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @ppgtt_get_guest_entry(%struct.intel_vgpu_ppgtt_spt* %44, %struct.intel_gvt_gtt_entry.0* %45, i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %32
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.0*, i64) #1

declare dso_local i32 @ppgtt_get_guest_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.0*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
