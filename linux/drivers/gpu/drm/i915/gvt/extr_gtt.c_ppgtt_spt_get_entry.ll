; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_spt_get_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_spt_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_5__, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"invalid entry type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I915_GTT_PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"read ppgtt entry, spt type %d, entry type %d, index %lu, value %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, i8*, i32, %struct.intel_gvt_gtt_entry.0*, i64, i32)* @ppgtt_spt_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_spt_get_entry(%struct.intel_vgpu_ppgtt_spt* %0, i8* %1, i32 %2, %struct.intel_gvt_gtt_entry.0* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.intel_gvt*, align 8
  %15 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %16 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.intel_gvt_gtt_entry.0* %3, %struct.intel_gvt_gtt_entry.0** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.intel_gvt*, %struct.intel_gvt** %20, align 8
  store %struct.intel_gvt* %21, %struct.intel_gvt** %14, align 8
  %22 = load %struct.intel_gvt*, %struct.intel_gvt** %14, align 8
  %23 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %24, align 8
  store %struct.intel_gvt_gtt_pte_ops* %25, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @get_entry_type(i32 %26)
  %28 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %29 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %31 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @gtt_type_is_entry(i32 %32)
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN(i32 %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %6
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %88

42:                                               ; preds = %6
  %43 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  %44 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %43, i32 0, i32 0
  %45 = load i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)*, i32 (i8*, %struct.intel_gvt_gtt_entry*, i64, i32, i32, %struct.TYPE_6__*)** %44, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %48 = bitcast %struct.intel_gvt_gtt_entry.0* %47 to %struct.intel_gvt_gtt_entry*
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %52 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @I915_GTT_PAGE_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %58 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 %45(i8* %46, %struct.intel_gvt_gtt_entry* %48, i64 %49, i32 %50, i32 %56, %struct.TYPE_6__* %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %42
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %7, align 4
  br label %88

65:                                               ; preds = %42
  %66 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %15, align 8
  %67 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %8, align 8
  %72 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  br label %76

75:                                               ; preds = %65
  br label %76

76:                                               ; preds = %75, %70
  %77 = phi i32 [ %74, %70 ], [ 0, %75 ]
  %78 = call i32 @update_entry_type_for_real(%struct.intel_gvt_gtt_pte_ops* %66, %struct.intel_gvt_gtt_entry.0* %67, i32 %77)
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %81 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %12, align 8
  %84 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %11, align 8
  %85 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %82, i64 %83, i32 %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %76, %63, %39
  %89 = load i32, i32* %7, align 4
  ret i32 %89
}

declare dso_local i32 @get_entry_type(i32) #1

declare dso_local i64 @WARN(i32, i8*) #1

declare dso_local i32 @gtt_type_is_entry(i32) #1

declare dso_local i32 @update_entry_type_for_real(%struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_entry.0*, i32) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
