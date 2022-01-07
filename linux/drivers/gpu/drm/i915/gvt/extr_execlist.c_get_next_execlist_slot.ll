; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_get_next_execlist_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_execlist.c_get_next_execlist_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_execlist_slot = type { i32 }
%struct.intel_vgpu_execlist = type { i32, %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32 }
%struct.execlist_status_format = type { i64, i64, i8*, i8* }

@_EL_OFFSET_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"virtual execlist slots are full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_vgpu_execlist_slot* (%struct.intel_vgpu_execlist*)* @get_next_execlist_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_vgpu_execlist_slot* @get_next_execlist_slot(%struct.intel_vgpu_execlist* %0) #0 {
  %2 = alloca %struct.intel_vgpu_execlist_slot*, align 8
  %3 = alloca %struct.intel_vgpu_execlist*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.execlist_status_format, align 8
  store %struct.intel_vgpu_execlist* %0, %struct.intel_vgpu_execlist** %3, align 8
  %8 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %8, i32 0, i32 2
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  store %struct.intel_vgpu* %10, %struct.intel_vgpu** %4, align 8
  %11 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %3, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %15 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @_EL_OFFSET_STATUS, align 4
  %19 = call i64 @execlist_ring_mmio(i32 %16, i32 %17, i32 %18)
  store i64 %19, i64* %6, align 8
  %20 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @vgpu_vreg(%struct.intel_vgpu* %20, i64 %21)
  %23 = getelementptr inbounds %struct.execlist_status_format, %struct.execlist_status_format* %7, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, 4
  %27 = call i8* @vgpu_vreg(%struct.intel_vgpu* %24, i64 %26)
  %28 = getelementptr inbounds %struct.execlist_status_format, %struct.execlist_status_format* %7, i32 0, i32 2
  store i8* %27, i8** %28, align 8
  %29 = getelementptr inbounds %struct.execlist_status_format, %struct.execlist_status_format* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.intel_vgpu_execlist_slot* null, %struct.intel_vgpu_execlist_slot** %2, align 8
  br label %41

34:                                               ; preds = %1
  %35 = load %struct.intel_vgpu_execlist*, %struct.intel_vgpu_execlist** %3, align 8
  %36 = getelementptr inbounds %struct.intel_vgpu_execlist, %struct.intel_vgpu_execlist* %35, i32 0, i32 1
  %37 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %36, align 8
  %38 = getelementptr inbounds %struct.execlist_status_format, %struct.execlist_status_format* %7, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.intel_vgpu_execlist_slot, %struct.intel_vgpu_execlist_slot* %37, i64 %39
  store %struct.intel_vgpu_execlist_slot* %40, %struct.intel_vgpu_execlist_slot** %2, align 8
  br label %41

41:                                               ; preds = %34, %32
  %42 = load %struct.intel_vgpu_execlist_slot*, %struct.intel_vgpu_execlist_slot** %2, align 8
  ret %struct.intel_vgpu_execlist_slot* %42
}

declare dso_local i64 @execlist_ring_mmio(i32, i32, i32) #1

declare dso_local i8* @vgpu_vreg(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
