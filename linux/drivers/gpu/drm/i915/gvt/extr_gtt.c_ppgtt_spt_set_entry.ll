; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_spt_set_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_spt_set_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.TYPE_4__ = type { i32 }
%struct.intel_gvt_gtt_entry.0 = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid entry type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"set ppgtt entry, spt type %d, entry type %d, index %lu, value %llx\0A\00", align 1
@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, i8*, i32, %struct.intel_gvt_gtt_entry.0*, i64, i32)* @ppgtt_spt_set_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_spt_set_entry(%struct.intel_vgpu_ppgtt_spt* %0, i8* %1, i32 %2, %struct.intel_gvt_gtt_entry.0* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_gvt*, align 8
  %15 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.intel_gvt_gtt_entry.0* %3, %struct.intel_gvt_gtt_entry.0** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.intel_gvt*, %struct.intel_gvt** %19, align 8
  store %struct.intel_gvt* %20, %struct.intel_gvt** %14, align 8
  %21 = load %struct.intel_gvt*, %struct.intel_gvt** %14, align 8
  %22 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %23, align 8
  store %struct.intel_gvt_gtt_pte_ops* %24, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  %25 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %26 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gtt_type_is_entry(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %65

37:                                               ; preds = %6
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %40 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %12, align 8
  %43 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %44 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %41, i64 %42, i32 %45)
  %47 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  %48 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %47, i32 0, i32 0
  %49 = load i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)*, i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)** %48, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %52 = bitcast %struct.intel_gvt_gtt_entry.0* %51 to %struct.intel_gvt_gtt_entry*
  %53 = load i64, i64* %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 %49(i8* %50, %struct.intel_gvt_gtt_entry* %52, i64 %53, i32 %54, i32 %60, %struct.TYPE_6__* %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %37, %34
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @gtt_type_is_entry(i32) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
