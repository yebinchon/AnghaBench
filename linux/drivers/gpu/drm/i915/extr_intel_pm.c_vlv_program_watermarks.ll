; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_vlv_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vlv_wm_values }
%struct.vlv_wm_values = type { i32, i32 }

@VLV_WM_LEVEL_DDR_DVFS = common dso_local global i32 0, align 4
@VLV_WM_LEVEL_PM5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @vlv_program_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlv_program_watermarks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.vlv_wm_values*, align 8
  %4 = alloca %struct.vlv_wm_values, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.vlv_wm_values* %7, %struct.vlv_wm_values** %3, align 8
  %8 = bitcast %struct.vlv_wm_values* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @vlv_merge_wm(%struct.drm_i915_private* %9, %struct.vlv_wm_values* %4)
  %11 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %12 = call i64 @memcmp(%struct.vlv_wm_values* %11, %struct.vlv_wm_values* %4, i32 8)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %91

15:                                               ; preds = %1
  %16 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %17 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VLV_WM_LEVEL_DDR_DVFS, align 4
  %22 = call i64 @is_disabling(i32 %18, i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @chv_set_memory_dvfs(%struct.drm_i915_private* %25, i32 0)
  br label %27

27:                                               ; preds = %24, %15
  %28 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %29 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @VLV_WM_LEVEL_PM5, align 4
  %34 = call i64 @is_disabling(i32 %30, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @chv_set_memory_pm5(%struct.drm_i915_private* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %41 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @is_disabling(i32 %42, i32 %44, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %49 = call i32 @_intel_set_memory_cxsr(%struct.drm_i915_private* %48, i32 0)
  br label %50

50:                                               ; preds = %47, %39
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = call i32 @vlv_write_wm_values(%struct.drm_i915_private* %51, %struct.vlv_wm_values* %4)
  %53 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %54 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @is_enabling(i32 %55, i32 %57, i32 1)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %62 = call i32 @_intel_set_memory_cxsr(%struct.drm_i915_private* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %50
  %64 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %65 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @VLV_WM_LEVEL_PM5, align 4
  %70 = call i64 @is_enabling(i32 %66, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %74 = call i32 @chv_set_memory_pm5(%struct.drm_i915_private* %73, i32 1)
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %77 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.vlv_wm_values, %struct.vlv_wm_values* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @VLV_WM_LEVEL_DDR_DVFS, align 4
  %82 = call i64 @is_enabling(i32 %78, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %75
  %85 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %86 = call i32 @chv_set_memory_dvfs(%struct.drm_i915_private* %85, i32 1)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load %struct.vlv_wm_values*, %struct.vlv_wm_values** %3, align 8
  %89 = bitcast %struct.vlv_wm_values* %88 to i8*
  %90 = bitcast %struct.vlv_wm_values* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %89, i8* align 4 %90, i64 8, i1 false)
  br label %91

91:                                               ; preds = %87, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vlv_merge_wm(%struct.drm_i915_private*, %struct.vlv_wm_values*) #2

declare dso_local i64 @memcmp(%struct.vlv_wm_values*, %struct.vlv_wm_values*, i32) #2

declare dso_local i64 @is_disabling(i32, i32, i32) #2

declare dso_local i32 @chv_set_memory_dvfs(%struct.drm_i915_private*, i32) #2

declare dso_local i32 @chv_set_memory_pm5(%struct.drm_i915_private*, i32) #2

declare dso_local i32 @_intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #2

declare dso_local i32 @vlv_write_wm_values(%struct.drm_i915_private*, %struct.vlv_wm_values*) #2

declare dso_local i64 @is_enabling(i32, i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
