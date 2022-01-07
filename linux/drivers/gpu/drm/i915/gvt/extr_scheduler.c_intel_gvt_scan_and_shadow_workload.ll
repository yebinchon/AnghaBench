; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_gvt_scan_and_shadow_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_gvt_scan_and_shadow_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i32, i64, %struct.TYPE_9__, %struct.intel_vgpu* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.intel_vgpu = type { %struct.TYPE_6__*, %struct.intel_vgpu_submission }
%struct.TYPE_6__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.intel_vgpu_submission = type { i32*, i32 }

@RCS0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_gvt_scan_and_shadow_workload(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_submission*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  %8 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %8, i32 0, i32 3
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  store %struct.intel_vgpu* %10, %struct.intel_vgpu** %4, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  store %struct.intel_vgpu_submission* %12, %struct.intel_vgpu_submission** %5, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

27:                                               ; preds = %1
  %28 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @test_and_set_bit(i64 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %38 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %41 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %46 = call i32 @shadow_context_descriptor_update(i32 %44, %struct.intel_vgpu_workload* %45)
  br label %47

47:                                               ; preds = %36, %27
  %48 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %49 = call i32 @intel_gvt_scan_and_shadow_ringbuffer(%struct.intel_vgpu_workload* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %2, align 4
  br label %83

54:                                               ; preds = %47
  %55 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %56 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RCS0, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %62 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %60
  %68 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %69 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %68, i32 0, i32 2
  %70 = call i32 @intel_gvt_scan_and_shadow_wa_ctx(%struct.TYPE_9__* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %78

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %60, %54
  %76 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %77 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  store i32 0, i32* %2, align 4
  br label %83

78:                                               ; preds = %73
  %79 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %80 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %79, i32 0, i32 2
  %81 = call i32 @release_shadow_wa_ctx(%struct.TYPE_9__* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %75, %52, %26
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @test_and_set_bit(i64, i32) #1

declare dso_local i32 @shadow_context_descriptor_update(i32, %struct.intel_vgpu_workload*) #1

declare dso_local i32 @intel_gvt_scan_and_shadow_ringbuffer(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @intel_gvt_scan_and_shadow_wa_ctx(%struct.TYPE_9__*) #1

declare dso_local i32 @release_shadow_wa_ctx(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
