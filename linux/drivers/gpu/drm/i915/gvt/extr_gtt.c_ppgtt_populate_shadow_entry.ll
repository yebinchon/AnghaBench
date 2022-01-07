; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_populate_shadow_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_populate_shadow_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i64 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.1*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type opaque
%struct.intel_vgpu_ppgtt_spt = type { i32 }
%struct.intel_gvt_gtt_entry.2 = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"shadow 4K gtt entry\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"shadow 64K gtt entry\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"shadow 2M gtt entry\0A\00", align 1
@I915_GTT_PAGE_SIZE_2M = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"GVT doesn't support 1GB entry\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i64, %struct.intel_gvt_gtt_entry.2*)* @ppgtt_populate_shadow_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_populate_shadow_entry(%struct.intel_vgpu* %0, %struct.intel_vgpu_ppgtt_spt* %1, i64 %2, %struct.intel_gvt_gtt_entry.2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_gvt_gtt_entry.2*, align 8
  %10 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %11 = alloca %struct.intel_gvt_gtt_entry.2, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %6, align 8
  store %struct.intel_vgpu_ppgtt_spt* %1, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.intel_gvt_gtt_entry.2* %3, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %16 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %20, align 8
  store %struct.intel_gvt_gtt_pte_ops* %21, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %22 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %23 = bitcast %struct.intel_gvt_gtt_entry.2* %11 to i8*
  %24 = bitcast %struct.intel_gvt_gtt_entry.2* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 4, i1 false)
  %25 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %25, i64* %13, align 8
  %26 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %27 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %26, i32 0, i32 2
  %28 = load i32 (%struct.intel_gvt_gtt_entry.1*)*, i32 (%struct.intel_gvt_gtt_entry.1*)** %27, align 8
  %29 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %30 = bitcast %struct.intel_gvt_gtt_entry.2* %29 to %struct.intel_gvt_gtt_entry.1*
  %31 = call i32 %28(%struct.intel_gvt_gtt_entry.1* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %100

34:                                               ; preds = %4
  %35 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %35, i32 0, i32 0
  %37 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %36, align 8
  %38 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %39 = bitcast %struct.intel_gvt_gtt_entry.2* %38 to %struct.intel_gvt_gtt_entry*
  %40 = call i64 %37(%struct.intel_gvt_gtt_entry* %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %42 = getelementptr inbounds %struct.intel_gvt_gtt_entry.2, %struct.intel_gvt_gtt_entry.2* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  switch i32 %43, label %76 [
    i32 129, label %44
    i32 128, label %46
    i32 130, label %52
    i32 131, label %72
  ]

44:                                               ; preds = %34
  %45 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %78

46:                                               ; preds = %34
  %47 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %49 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i32 @split_64KB_gtt_entry(%struct.intel_vgpu* %48, %struct.intel_vgpu_ppgtt_spt* %49, i64 %50, %struct.intel_gvt_gtt_entry.2* %11)
  store i32 %51, i32* %5, align 4
  br label %100

52:                                               ; preds = %34
  %53 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %55 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %56 = call i32 @is_2MB_gtt_possible(%struct.intel_vgpu* %54, %struct.intel_gvt_gtt_entry.2* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %61 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %62 = load i64, i64* %8, align 8
  %63 = call i32 @split_2MB_gtt_entry(%struct.intel_vgpu* %60, %struct.intel_vgpu_ppgtt_spt* %61, i64 %62, %struct.intel_gvt_gtt_entry.2* %11)
  store i32 %63, i32* %5, align 4
  br label %100

64:                                               ; preds = %52
  %65 = load i32, i32* %15, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %5, align 4
  br label %100

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* @I915_GTT_PAGE_SIZE_2M, align 8
  store i64 %71, i64* %13, align 8
  br label %78

72:                                               ; preds = %34
  %73 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %100

76:                                               ; preds = %34
  %77 = call i32 @GEM_BUG_ON(i32 1)
  br label %78

78:                                               ; preds = %76, %70, %44
  %79 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load i64, i64* %13, align 8
  %82 = call i32 @intel_gvt_hypervisor_dma_map_guest_page(%struct.intel_vgpu* %79, i64 %80, i64 %81, i32* %14)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @ENXIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %100

88:                                               ; preds = %78
  %89 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %90 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %89, i32 0, i32 1
  %91 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %90, align 8
  %92 = bitcast %struct.intel_gvt_gtt_entry.2* %11 to %struct.intel_gvt_gtt_entry.0*
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @PAGE_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = call i32 %91(%struct.intel_gvt_gtt_entry.0* %92, i32 %95)
  %97 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %97, %struct.intel_gvt_gtt_entry.2* %11, i64 %98)
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %88, %85, %72, %67, %59, %46, %33
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gvt_vdbg_mm(i8*) #2

declare dso_local i32 @split_64KB_gtt_entry(%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i64, %struct.intel_gvt_gtt_entry.2*) #2

declare dso_local i32 @is_2MB_gtt_possible(%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.2*) #2

declare dso_local i32 @split_2MB_gtt_entry(%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i64, %struct.intel_gvt_gtt_entry.2*) #2

declare dso_local i32 @gvt_vgpu_err(i8*) #2

declare dso_local i32 @GEM_BUG_ON(i32) #2

declare dso_local i32 @intel_gvt_hypervisor_dma_map_guest_page(%struct.intel_vgpu*, i64, i64, i32*) #2

declare dso_local i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.2*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
