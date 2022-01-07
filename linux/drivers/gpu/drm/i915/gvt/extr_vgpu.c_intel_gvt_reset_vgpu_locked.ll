; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_reset_vgpu_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_vgpu.c_intel_gvt_reset_vgpu_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu = type { i32, i32, i32, i64, i32, %struct.intel_gvt* }
%struct.intel_gvt = type { %struct.intel_gvt_workload_scheduler }
%struct.intel_gvt_workload_scheduler = type { i32* }

@ALL_ENGINES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"resseting vgpu%d, dmlr %d, engine_mask %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reset vgpu%d done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_gvt_reset_vgpu_locked(%struct.intel_vgpu* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.intel_gvt*, align 8
  %8 = alloca %struct.intel_gvt_workload_scheduler*, align 8
  %9 = alloca i64, align 8
  store %struct.intel_vgpu* %0, %struct.intel_vgpu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %11 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %10, i32 0, i32 5
  %12 = load %struct.intel_gvt*, %struct.intel_gvt** %11, align 8
  store %struct.intel_gvt* %12, %struct.intel_gvt** %7, align 8
  %13 = load %struct.intel_gvt*, %struct.intel_gvt** %7, align 8
  %14 = getelementptr inbounds %struct.intel_gvt, %struct.intel_gvt* %13, i32 0, i32 0
  store %struct.intel_gvt_workload_scheduler* %14, %struct.intel_gvt_workload_scheduler** %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i64, i64* @ALL_ENGINES, align 8
  br label %21

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %9, align 8
  %23 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %25 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %27, i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %34 = call i32 @intel_vgpu_stop_schedule(%struct.intel_vgpu* %33)
  %35 = load %struct.intel_gvt_workload_scheduler*, %struct.intel_gvt_workload_scheduler** %8, align 8
  %36 = getelementptr inbounds %struct.intel_gvt_workload_scheduler, %struct.intel_gvt_workload_scheduler* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %21
  %40 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %40, i32 0, i32 4
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %44 = call i32 @intel_gvt_wait_vgpu_idle(%struct.intel_vgpu* %43)
  %45 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %46 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %45, i32 0, i32 4
  %47 = call i32 @mutex_lock(i32* %46)
  br label %48

48:                                               ; preds = %39, %21
  %49 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @intel_vgpu_reset_submission(%struct.intel_vgpu* %49, i64 %50)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @ALL_ENGINES, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %55, %48
  %59 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %60 = load i64, i64* @ALL_ENGINES, align 8
  %61 = call i32 @intel_vgpu_select_submission_ops(%struct.intel_vgpu* %59, i64 %60, i32 0)
  %62 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %63 = call i32 @intel_vgpu_invalidate_ppgtt(%struct.intel_vgpu* %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %58
  %67 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %68 = call i32 @intel_vgpu_reset_gtt(%struct.intel_vgpu* %67)
  %69 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %70 = call i32 @intel_vgpu_reset_resource(%struct.intel_vgpu* %69)
  br label %71

71:                                               ; preds = %66, %58
  %72 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @intel_vgpu_reset_mmio(%struct.intel_vgpu* %72, i32 %73)
  %75 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %76 = call i32 @populate_pvinfo_page(%struct.intel_vgpu* %75)
  %77 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %78 = call i32 @intel_vgpu_reset_display(%struct.intel_vgpu* %77)
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %71
  %82 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %83 = call i32 @intel_vgpu_reset_cfg_space(%struct.intel_vgpu* %82)
  %84 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %85 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  %86 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %87 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %71
  br label %89

89:                                               ; preds = %88, %55
  %90 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %91 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %90, i32 0, i32 3
  store i64 0, i64* %91, align 8
  %92 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %93 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %94)
  %96 = call i32 (i8*, ...) @gvt_dbg_core(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @gvt_dbg_core(i8*, ...) #1

declare dso_local i32 @intel_vgpu_stop_schedule(%struct.intel_vgpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @intel_gvt_wait_vgpu_idle(%struct.intel_vgpu*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_vgpu_reset_submission(%struct.intel_vgpu*, i64) #1

declare dso_local i32 @intel_vgpu_select_submission_ops(%struct.intel_vgpu*, i64, i32) #1

declare dso_local i32 @intel_vgpu_invalidate_ppgtt(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_gtt(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_resource(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_mmio(%struct.intel_vgpu*, i32) #1

declare dso_local i32 @populate_pvinfo_page(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_display(%struct.intel_vgpu*) #1

declare dso_local i32 @intel_vgpu_reset_cfg_space(%struct.intel_vgpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
