; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_invalidate_ppgtt_mm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_invalidate_ppgtt_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_mm = type { %struct.TYPE_2__, %struct.intel_vgpu* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.intel_vgpu = type { i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.intel_gvt_gtt }
%struct.intel_gvt_gtt = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"destroy root pointer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_vgpu_mm*)* @invalidate_ppgtt_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @invalidate_ppgtt_mm(%struct.intel_vgpu_mm* %0) #0 {
  %2 = alloca %struct.intel_vgpu_mm*, align 8
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.intel_gvt*, align 8
  %5 = alloca %struct.intel_gvt_gtt*, align 8
  %6 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %7 = alloca %struct.intel_gvt_gtt_entry.0, align 8
  %8 = alloca i32, align 4
  store %struct.intel_vgpu_mm* %0, %struct.intel_vgpu_mm** %2, align 8
  %9 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %9, i32 0, i32 1
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %10, align 8
  store %struct.intel_vgpu* %11, %struct.intel_vgpu** %3, align 8
  %12 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %12, i32 0, i32 1
  %14 = load %struct.intel_gvt*, %struct.intel_gvt** %13, align 8
  store %struct.intel_gvt* %14, %struct.intel_gvt** %4, align 8
  %15 = load %struct.intel_gvt*, %struct.intel_gvt** %4, align 8
  %16 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %15, i32 0, i32 0
  store %struct.intel_gvt_gtt* %16, %struct.intel_gvt_gtt** %5, align 8
  %17 = load %struct.intel_gvt_gtt*, %struct.intel_gvt_gtt** %5, align 8
  %18 = getelementptr inbounds %struct.intel_gvt_gtt, %struct.intel_gvt_gtt* %17, i32 0, i32 0
  %19 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %18, align 8
  store %struct.intel_gvt_gtt_pte_ops* %19, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %20 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %21 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %69

26:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %62, %26
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %30 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = icmp slt i32 %28, %33
  br i1 %34, label %35, label %65

35:                                               ; preds = %27
  %36 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @ppgtt_get_shadow_root_entry(%struct.intel_vgpu_mm* %36, %struct.intel_gvt_gtt_entry.0* %7, i32 %37)
  %39 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %40 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %39, i32 0, i32 0
  %41 = load i32 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry*)** %40, align 8
  %42 = bitcast %struct.intel_gvt_gtt_entry.0* %7 to %struct.intel_gvt_gtt_entry*
  %43 = call i32 %41(%struct.intel_gvt_gtt_entry* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %62

46:                                               ; preds = %35
  %47 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %48 = call i32 @ppgtt_invalidate_spt_by_shadow_entry(%struct.intel_vgpu* %47, %struct.intel_gvt_gtt_entry.0* %7)
  %49 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %7, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @ppgtt_set_shadow_root_entry(%struct.intel_vgpu_mm* %50, %struct.intel_gvt_gtt_entry.0* %7, i32 %51)
  %53 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %54 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %7, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %7, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @trace_spt_guest_change(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* null, i32 %57, i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %46, %45
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %27

65:                                               ; preds = %27
  %66 = load %struct.intel_vgpu_mm*, %struct.intel_vgpu_mm** %2, align 8
  %67 = getelementptr inbounds %struct.intel_vgpu_mm, %struct.intel_vgpu_mm* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  br label %69

69:                                               ; preds = %65, %25
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ppgtt_get_shadow_root_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.0*, i32) #1

declare dso_local i32 @ppgtt_invalidate_spt_by_shadow_entry(%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.0*) #1

declare dso_local i32 @ppgtt_set_shadow_root_entry(%struct.intel_vgpu_mm*, %struct.intel_gvt_gtt_entry.0*, i32) #1

declare dso_local i32 @trace_spt_guest_change(i32, i8*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
