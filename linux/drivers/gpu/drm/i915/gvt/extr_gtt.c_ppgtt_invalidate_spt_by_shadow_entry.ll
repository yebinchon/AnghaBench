; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_invalidate_spt_by_shadow_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_invalidate_spt_by_shadow_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.intel_gvt_gtt_pte_ops* }
%struct.intel_gvt_gtt_pte_ops = type { i64 (%struct.intel_gvt_gtt_entry*)* }
%struct.intel_gvt_gtt_entry = type opaque
%struct.intel_gvt_gtt_entry.0 = type { i64 }
%struct.intel_vgpu_ppgtt_spt = type { i32 }

@GTT_TYPE_PPGTT_ROOT_L3_ENTRY = common dso_local global i64 0, align 8
@GTT_TYPE_PPGTT_ROOT_L4_ENTRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Invalid page table type, cur_pt_type is: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"fail to find shadow page: mfn: 0x%lx\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry.0*)* @ppgtt_invalidate_spt_by_shadow_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_invalidate_spt_by_shadow_entry(%struct.intel_vgpu* %0, %struct.intel_gvt_gtt_entry.0* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_gvt_gtt_entry.0*, align 8
  %6 = alloca %struct.intel_gvt_gtt_pte_ops*, align 8
  %7 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %8 = alloca i32, align 4
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store %struct.intel_gvt_gtt_entry.0* %1, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %9 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %10 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %13, align 8
  store %struct.intel_gvt_gtt_pte_ops* %14, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %15 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %16 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @get_next_pt_type(i64 %17)
  %19 = call i32 @gtt_type_is_pt(i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @GEM_BUG_ON(i32 %22)
  %24 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %25 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @GTT_TYPE_PPGTT_ROOT_L3_ENTRY, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %2
  %30 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %31 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @GTT_TYPE_PPGTT_ROOT_L4_ENTRY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %29
  %36 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %37 = getelementptr inbounds %struct.intel_gvt_gtt_entry.0, %struct.intel_gvt_gtt_entry.0* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @get_next_pt_type(i64 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @gtt_type_is_pt(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load i32, i32* %8, align 4
  %45 = add i32 %44, 1
  %46 = call i32 @gtt_type_is_pt(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43, %35
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %98

53:                                               ; preds = %43
  %54 = load i32, i32* %8, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %57 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %56, i32 0, i32 0
  %58 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %57, align 8
  %59 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %60 = bitcast %struct.intel_gvt_gtt_entry.0* %59 to %struct.intel_gvt_gtt_entry*
  %61 = call i64 %58(%struct.intel_gvt_gtt_entry* %60)
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %63 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %61, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %98

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %29, %2
  %75 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %76 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %77 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %76, i32 0, i32 0
  %78 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %77, align 8
  %79 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %80 = bitcast %struct.intel_gvt_gtt_entry.0* %79 to %struct.intel_gvt_gtt_entry*
  %81 = call i64 %78(%struct.intel_gvt_gtt_entry* %80)
  %82 = call %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu* %75, i64 %81)
  store %struct.intel_vgpu_ppgtt_spt* %82, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %83 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %84 = icmp ne %struct.intel_vgpu_ppgtt_spt* %83, null
  br i1 %84, label %95, label %85

85:                                               ; preds = %74
  %86 = load %struct.intel_gvt_gtt_pte_ops*, %struct.intel_gvt_gtt_pte_ops** %6, align 8
  %87 = getelementptr inbounds %struct.intel_gvt_gtt_pte_ops, %struct.intel_gvt_gtt_pte_ops* %86, i32 0, i32 0
  %88 = load i64 (%struct.intel_gvt_gtt_entry*)*, i64 (%struct.intel_gvt_gtt_entry*)** %87, align 8
  %89 = load %struct.intel_gvt_gtt_entry.0*, %struct.intel_gvt_gtt_entry.0** %5, align 8
  %90 = bitcast %struct.intel_gvt_gtt_entry.0* %89 to %struct.intel_gvt_gtt_entry*
  %91 = call i64 %88(%struct.intel_gvt_gtt_entry* %90)
  %92 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %91)
  %93 = load i32, i32* @ENXIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %98

95:                                               ; preds = %74
  %96 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %7, align 8
  %97 = call i32 @ppgtt_invalidate_spt(%struct.intel_vgpu_ppgtt_spt* %96)
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %95, %85, %72, %48
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @gtt_type_is_pt(i32) #1

declare dso_local i32 @get_next_pt_type(i64) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @intel_vgpu_find_spt_by_mfn(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*, i64) #1

declare dso_local i32 @ppgtt_invalidate_spt(%struct.intel_vgpu_ppgtt_spt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
