; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_split_64KB_gtt_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_split_64KB_gtt_entry.c"
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

@.str = private unnamed_addr constant [32 x i8] c"Split 64K gtt entry, index %lu\0A\00", align 1
@GTT_64K_PTE_STRIDE = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_PTE_4K_ENTRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i64, %struct.intel_gvt_gtt_entry.2*)* @split_64KB_gtt_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_64KB_gtt_entry(%struct.intel_vgpu* %0, %struct.intel_vgpu_ppgtt_spt* %1, i64 %2, %struct.intel_gvt_gtt_entry.2* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_vgpu*, align 8
  %7 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.intel_gvt_gtt_entry.2*, align 8
  %10 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %11 = alloca %struct.intel_gvt_gtt_entry.2, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
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
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %25)
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @GTT_64K_PTE_STRIDE, align 8
  %29 = urem i64 %27, %28
  %30 = call i32 @GEM_BUG_ON(i64 %29)
  %31 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %32 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %31, i32 0, i32 0
  %33 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %32, align 8
  %34 = load %struct.intel_gvt_gtt_entry.2*, %struct.intel_gvt_gtt_entry.2** %9, align 8
  %35 = bitcast %struct.intel_gvt_gtt_entry.2* %34 to %struct.intel_gvt_gtt_entry*
  %36 = call i64 %33(%struct.intel_gvt_gtt_entry* %35)
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* @GTT_TYPE_PPGTT_PTE_4K_ENTRY, align 4
  %38 = getelementptr inbounds %struct.intel_gvt_gtt_entry.2, %struct.intel_gvt_gtt_entry.2* %11, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %40 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %39, i32 0, i32 2
  %41 = load i32 (%struct.intel_gvt_gtt_entry.1*)*, i32 (%struct.intel_gvt_gtt_entry.1*)** %40, align 8
  %42 = bitcast %struct.intel_gvt_gtt_entry.2* %11 to %struct.intel_gvt_gtt_entry.1*
  %43 = call i32 %41(%struct.intel_gvt_gtt_entry.1* %42)
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %76, %4
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* @GTT_64K_PTE_STRIDE, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %79

49:                                               ; preds = %44
  %50 = load %struct.intel_vgpu*, %struct.intel_vgpu** %6, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i32, i32* %14, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %51, %53
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = call i32 @intel_gvt_hypervisor_dma_map_guest_page(%struct.intel_vgpu* %50, i64 %54, i32 %55, i32* %13)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %5, align 4
  br label %80

61:                                               ; preds = %49
  %62 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %10, align 8
  %63 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %62, i32 0, i32 1
  %64 = load i32 (%struct.intel_gvt_gtt_entry.0*, i32)*, i32 (%struct.intel_gvt_gtt_entry.0*, i32)** %63, align 8
  %65 = bitcast %struct.intel_gvt_gtt_entry.2* %11 to %struct.intel_gvt_gtt_entry.0*
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = call i32 %64(%struct.intel_gvt_gtt_entry.0* %65, i32 %68)
  %70 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %70, %struct.intel_gvt_gtt_entry.2* %11, i64 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %44

79:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %79, %59
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i64) #2

declare dso_local i32 @GEM_BUG_ON(i64) #2

declare dso_local i32 @intel_gvt_hypervisor_dma_map_guest_page(%struct.intel_vgpu*, i64, i32, i32*) #2

declare dso_local i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.2*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
