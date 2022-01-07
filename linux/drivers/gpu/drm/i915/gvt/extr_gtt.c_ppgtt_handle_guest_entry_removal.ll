; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_entry_removal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_entry_removal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_10__, %struct.intel_vgpu* }
%struct.TYPE_10__ = type { i64 }
%struct.intel_vgpu = type { %struct.TYPE_9__, i32, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i64 (%struct.intel_gvt_gtt_entry*)*, i32 (%struct.intel_gvt_gtt_entry.0*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type opaque
%struct.intel_gvt_gtt_entry.1 = type { i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"destroy old shadow entry, type %d, index %lu, value %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"fail to find guest page\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@GTT_TYPE_PPGTT_PTE_64K_ENTRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"suspicious 64K entry\0A\00", align 1
@.str.4 = private unnamed_addr constant [49 x i8] c"fail: shadow page %p guest entry 0x%llx type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*, i64)* @ppgtt_handle_guest_entry_removal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_handle_guest_entry_removal(%struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_gvt_gtt_entry.1* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_gvt_gtt_entry.1*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  store %struct.intel_gvt_gtt_entry.1* %1, %struct.intel_gvt_gtt_entry.1** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %12, i32 0, i32 1
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %8, align 8
  %15 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %15, i32 0, i32 2
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %19, align 8
  store %struct.intel_gvt_gtt_pte_ops* %20, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %21 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %21, i32 0, i32 1
  %23 = load %struct.intel_vgpu*, %struct.intel_vgpu** %22, align 8
  %24 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %27 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %28 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %32 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @trace_spt_guest_change(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %26, i64 %30, i32 %33, i64 %34)
  %36 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %41 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %39, i32 %42)
  %44 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %45 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %44, i32 0, i32 1
  %46 = load i32 (%struct.intel_gvt_gtt_entry.0*)*, i32 (%struct.intel_gvt_gtt_entry.0*)** %45, align 8
  %47 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %48 = bitcast %struct.intel_gvt_gtt_entry.1* %47 to %struct.intel_gvt_gtt_entry.0*
  %49 = call i32 %46(%struct.intel_gvt_gtt_entry.0* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %123

52:                                               ; preds = %3
  %53 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %54 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %53, i32 0, i32 0
  %55 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %54, align 8
  %56 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %57 = bitcast %struct.intel_gvt_gtt_entry.1* %56 to %struct.intel_gvt_gtt_entry*
  %58 = call i64 %55(%struct.intel_gvt_gtt_entry* %57)
  %59 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %60 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %64 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %58, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %52
  store i32 0, i32* %4, align 4
  br label %123

72:                                               ; preds = %52
  %73 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %74 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @get_next_pt_type(i64 %75)
  %77 = call i64 @gtt_type_is_pt(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %101

79:                                               ; preds = %72
  %80 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %81 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %9, align 8
  %82 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %81, i32 0, i32 0
  %83 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %82, align 8
  %84 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %85 = bitcast %struct.intel_gvt_gtt_entry.1* %84 to %struct.intel_gvt_gtt_entry*
  %86 = call i64 %83(%struct.intel_gvt_gtt_entry* %85)
  %87 = call %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu* %80, i64 %86)
  store %struct.intel_vgpu_ppgtt_spt* %87, %struct.intel_vgpu_ppgtt_spt** %11, align 8
  %88 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %11, align 8
  %89 = icmp ne %struct.intel_vgpu_ppgtt_spt* %88, null
  br i1 %89, label %94, label %90

90:                                               ; preds = %79
  %91 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %92 = load i32, i32* @ENXIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %10, align 4
  br label %113

94:                                               ; preds = %79
  %95 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %11, align 8
  %96 = call i32 @ppgtt_invalidate_spt(%struct.intel_vgpu_ppgtt_spt* %95)
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  br label %113

100:                                              ; preds = %94
  br label %112

101:                                              ; preds = %72
  %102 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %103 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @GTT_TYPE_PPGTT_PTE_64K_ENTRY, align 8
  %106 = icmp eq i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @WARN(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %109 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %110 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %111 = call i32 @ppgtt_invalidate_pte(%struct.intel_vgpu_ppgtt_spt* %109, %struct.intel_gvt_gtt_entry.1* %110)
  br label %112

112:                                              ; preds = %101, %100
  store i32 0, i32* %4, align 4
  br label %123

113:                                              ; preds = %99, %90
  %114 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %115 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %116 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.intel_gvt_gtt_entry.1*, %struct.intel_gvt_gtt_entry.1** %6, align 8
  %119 = getelementptr inbounds %struct.intel_gvt_gtt_entry.1, %struct.intel_gvt_gtt_entry.1* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i8*, ...) @gvt_vgpu_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %114, i32 %117, i64 %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %113, %112, %71, %51
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @trace_spt_guest_change(i32, i8*, %struct.intel_vgpu_ppgtt_spt*, i64, i32, i64) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i64, i64, i32) #1

declare dso_local i64 @gtt_type_is_pt(i32) #1

declare dso_local i32 @get_next_pt_type(i64) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*, ...) #1

declare dso_local i32 @ppgtt_invalidate_spt(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @ppgtt_invalidate_pte(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
