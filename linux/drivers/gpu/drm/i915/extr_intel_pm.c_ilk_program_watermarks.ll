; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ilk_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_pipe_wm = type { i32 }
%struct.ilk_wm_maximums = type { i32 }
%struct.intel_wm_config = type { i32, i64 }
%struct.ilk_wm_values = type { i32 }

@INTEL_DDB_PART_1_2 = common dso_local global i32 0, align 4
@INTEL_DDB_PART_5_6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ilk_program_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_program_watermarks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_pipe_wm, align 4
  %4 = alloca %struct.intel_pipe_wm, align 4
  %5 = alloca %struct.intel_pipe_wm*, align 8
  %6 = alloca %struct.ilk_wm_maximums, align 4
  %7 = alloca %struct.intel_wm_config, align 8
  %8 = alloca %struct.ilk_wm_values, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %10 = bitcast %struct.intel_pipe_wm* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = bitcast %struct.intel_pipe_wm* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = bitcast %struct.intel_wm_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 16, i1 false)
  %13 = bitcast %struct.ilk_wm_values* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i32 @ilk_compute_wm_config(%struct.drm_i915_private* %14, %struct.intel_wm_config* %7)
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = load i32, i32* @INTEL_DDB_PART_1_2, align 4
  %18 = call i32 @ilk_compute_wm_maximums(%struct.drm_i915_private* %16, i32 1, %struct.intel_wm_config* %7, i32 %17, %struct.ilk_wm_maximums* %6)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i32 @ilk_wm_merge(%struct.drm_i915_private* %19, %struct.intel_wm_config* %7, %struct.ilk_wm_maximums* %6, %struct.intel_pipe_wm* %3)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call i32 @INTEL_GEN(%struct.drm_i915_private* %21)
  %23 = icmp sge i32 %22, 7
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %40

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.intel_wm_config, %struct.intel_wm_config* %7, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = load i32, i32* @INTEL_DDB_PART_5_6, align 4
  %35 = call i32 @ilk_compute_wm_maximums(%struct.drm_i915_private* %33, i32 1, %struct.intel_wm_config* %7, i32 %34, %struct.ilk_wm_maximums* %6)
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = call i32 @ilk_wm_merge(%struct.drm_i915_private* %36, %struct.intel_wm_config* %7, %struct.ilk_wm_maximums* %6, %struct.intel_pipe_wm* %4)
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %39 = call %struct.intel_pipe_wm* @ilk_find_best_result(%struct.drm_i915_private* %38, %struct.intel_pipe_wm* %3, %struct.intel_pipe_wm* %4)
  store %struct.intel_pipe_wm* %39, %struct.intel_pipe_wm** %5, align 8
  br label %41

40:                                               ; preds = %28, %24, %1
  store %struct.intel_pipe_wm* %3, %struct.intel_pipe_wm** %5, align 8
  br label %41

41:                                               ; preds = %40, %32
  %42 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %5, align 8
  %43 = icmp eq %struct.intel_pipe_wm* %42, %3
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @INTEL_DDB_PART_1_2, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @INTEL_DDB_PART_5_6, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %9, align 4
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = load %struct.intel_pipe_wm*, %struct.intel_pipe_wm** %5, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ilk_compute_wm_results(%struct.drm_i915_private* %50, %struct.intel_pipe_wm* %51, i32 %52, %struct.ilk_wm_values* %8)
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = call i32 @ilk_write_wm_values(%struct.drm_i915_private* %54, %struct.ilk_wm_values* %8)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ilk_compute_wm_config(%struct.drm_i915_private*, %struct.intel_wm_config*) #2

declare dso_local i32 @ilk_compute_wm_maximums(%struct.drm_i915_private*, i32, %struct.intel_wm_config*, i32, %struct.ilk_wm_maximums*) #2

declare dso_local i32 @ilk_wm_merge(%struct.drm_i915_private*, %struct.intel_wm_config*, %struct.ilk_wm_maximums*, %struct.intel_pipe_wm*) #2

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #2

declare dso_local %struct.intel_pipe_wm* @ilk_find_best_result(%struct.drm_i915_private*, %struct.intel_pipe_wm*, %struct.intel_pipe_wm*) #2

declare dso_local i32 @ilk_compute_wm_results(%struct.drm_i915_private*, %struct.intel_pipe_wm*, i32, %struct.ilk_wm_values*) #2

declare dso_local i32 @ilk_write_wm_values(%struct.drm_i915_private*, %struct.ilk_wm_values*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
