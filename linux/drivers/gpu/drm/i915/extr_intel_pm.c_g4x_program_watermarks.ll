; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_program_watermarks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_g4x_program_watermarks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.g4x_wm_values }
%struct.g4x_wm_values = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @g4x_program_watermarks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_program_watermarks(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.g4x_wm_values*, align 8
  %4 = alloca %struct.g4x_wm_values, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.g4x_wm_values* %7, %struct.g4x_wm_values** %3, align 8
  %8 = bitcast %struct.g4x_wm_values* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = call i32 @g4x_merge_wm(%struct.drm_i915_private* %9, %struct.g4x_wm_values* %4)
  %11 = load %struct.g4x_wm_values*, %struct.g4x_wm_values** %3, align 8
  %12 = call i64 @memcmp(%struct.g4x_wm_values* %11, %struct.g4x_wm_values* %4, i32 4)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %43

15:                                               ; preds = %1
  %16 = load %struct.g4x_wm_values*, %struct.g4x_wm_values** %3, align 8
  %17 = getelementptr inbounds %struct.g4x_wm_values, %struct.g4x_wm_values* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.g4x_wm_values, %struct.g4x_wm_values* %4, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @is_disabling(i32 %18, i32 %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %25 = call i32 @_intel_set_memory_cxsr(%struct.drm_i915_private* %24, i32 0)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @g4x_write_wm_values(%struct.drm_i915_private* %27, %struct.g4x_wm_values* %4)
  %29 = load %struct.g4x_wm_values*, %struct.g4x_wm_values** %3, align 8
  %30 = getelementptr inbounds %struct.g4x_wm_values, %struct.g4x_wm_values* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.g4x_wm_values, %struct.g4x_wm_values* %4, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @is_enabling(i32 %31, i32 %33, i32 1)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @_intel_set_memory_cxsr(%struct.drm_i915_private* %37, i32 1)
  br label %39

39:                                               ; preds = %36, %26
  %40 = load %struct.g4x_wm_values*, %struct.g4x_wm_values** %3, align 8
  %41 = bitcast %struct.g4x_wm_values* %40 to i8*
  %42 = bitcast %struct.g4x_wm_values* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 4, i1 false)
  br label %43

43:                                               ; preds = %39, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @g4x_merge_wm(%struct.drm_i915_private*, %struct.g4x_wm_values*) #2

declare dso_local i64 @memcmp(%struct.g4x_wm_values*, %struct.g4x_wm_values*, i32) #2

declare dso_local i64 @is_disabling(i32, i32, i32) #2

declare dso_local i32 @_intel_set_memory_cxsr(%struct.drm_i915_private*, i32) #2

declare dso_local i32 @g4x_write_wm_values(%struct.drm_i915_private*, %struct.g4x_wm_values*) #2

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
