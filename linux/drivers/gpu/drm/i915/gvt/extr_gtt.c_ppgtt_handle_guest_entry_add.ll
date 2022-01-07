; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_gtt.c_ppgtt_handle_guest_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_ppgtt_spt = type { %struct.TYPE_2__, %struct.intel_vgpu* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_vgpu = type { i32 }
%struct.intel_gvt_gtt_entry = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"add shadow entry: type %d, index %lu, value %llx\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"fail: spt %p guest entry 0x%llx type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry*, i64)* @ppgtt_handle_guest_entry_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppgtt_handle_guest_entry_add(%struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_gvt_gtt_entry* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %6 = alloca %struct.intel_gvt_gtt_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.intel_vgpu*, align 8
  %9 = alloca %struct.intel_gvt_gtt_entry, align 4
  %10 = alloca %struct.intel_vgpu_ppgtt_spt*, align 8
  %11 = alloca i32, align 4
  store %struct.intel_vgpu_ppgtt_spt* %0, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  store %struct.intel_gvt_gtt_entry* %1, %struct.intel_gvt_gtt_entry** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %13 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %12, i32 0, i32 1
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %13, align 8
  store %struct.intel_vgpu* %14, %struct.intel_vgpu** %8, align 8
  %15 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %16 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %15, i32 0, i32 1
  %17 = load %struct.intel_vgpu*, %struct.intel_vgpu** %16, align 8
  %18 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %21 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %22 = getelementptr inbounds %struct.intel_vgpu_ppgtt_spt, %struct.intel_vgpu_ppgtt_spt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %26 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @trace_spt_guest_change(i32 %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %20, i32 %24, i32 %27, i64 %28)
  %30 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %31 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %35 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gvt_vdbg_mm(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %32, i64 %33, i32 %36)
  %38 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %39 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_next_pt_type(i32 %40)
  %42 = call i64 @gtt_type_is_pt(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %64

44:                                               ; preds = %3
  %45 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %46 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %47 = call %struct.intel_vgpu_ppgtt_spt* @ppgtt_populate_spt_by_guest_entry(%struct.intel_vgpu* %45, %struct.intel_gvt_gtt_entry* %46)
  store %struct.intel_vgpu_ppgtt_spt* %47, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %48 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %49 = call i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %53 = call i32 @PTR_ERR(%struct.intel_vgpu_ppgtt_spt* %52)
  store i32 %53, i32* %11, align 4
  br label %75

54:                                               ; preds = %44
  %55 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %55, %struct.intel_gvt_gtt_entry* %9, i64 %56)
  %58 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %10, align 8
  %59 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %60 = call i32 @ppgtt_generate_shadow_entry(%struct.intel_gvt_gtt_entry* %9, %struct.intel_vgpu_ppgtt_spt* %58, %struct.intel_gvt_gtt_entry* %59)
  %61 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt* %61, %struct.intel_gvt_gtt_entry* %9, i64 %62)
  br label %74

64:                                               ; preds = %3
  %65 = load %struct.intel_vgpu*, %struct.intel_vgpu** %8, align 8
  %66 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %69 = call i32 @ppgtt_populate_shadow_entry(%struct.intel_vgpu* %65, %struct.intel_vgpu_ppgtt_spt* %66, i64 %67, %struct.intel_gvt_gtt_entry* %68)
  store i32 %69, i32* %11, align 4
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %75

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %54
  store i32 0, i32* %4, align 4
  br label %85

75:                                               ; preds = %72, %51
  %76 = load %struct.intel_vgpu_ppgtt_spt*, %struct.intel_vgpu_ppgtt_spt** %5, align 8
  %77 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %78 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.intel_gvt_gtt_entry*, %struct.intel_gvt_gtt_entry** %6, align 8
  %81 = getelementptr inbounds %struct.intel_gvt_gtt_entry, %struct.intel_gvt_gtt_entry* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.intel_vgpu_ppgtt_spt* %76, i32 %79, i32 %82)
  %84 = load i32, i32* %11, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %75, %74
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @trace_spt_guest_change(i32, i8*, %struct.intel_vgpu_ppgtt_spt*, i32, i32, i64) #1

declare dso_local i32 @gvt_vdbg_mm(i8*, i32, i64, i32) #1

declare dso_local i64 @gtt_type_is_pt(i32) #1

declare dso_local i32 @get_next_pt_type(i32) #1

declare dso_local %struct.intel_vgpu_ppgtt_spt* @ppgtt_populate_spt_by_guest_entry(%struct.intel_vgpu*, %struct.intel_gvt_gtt_entry*) #1

declare dso_local i64 @IS_ERR(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_vgpu_ppgtt_spt*) #1

declare dso_local i32 @ppgtt_get_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry*, i64) #1

declare dso_local i32 @ppgtt_generate_shadow_entry(%struct.intel_gvt_gtt_entry*, %struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry*) #1

declare dso_local i32 @ppgtt_set_shadow_entry(%struct.intel_vgpu_ppgtt_spt*, %struct.intel_gvt_gtt_entry*, i64) #1

declare dso_local i32 @ppgtt_populate_shadow_entry(%struct.intel_vgpu*, %struct.intel_vgpu_ppgtt_spt*, i64, %struct.intel_gvt_gtt_entry*) #1

declare dso_local i32 @gvt_vgpu_err(i8*, %struct.intel_vgpu_ppgtt_spt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
