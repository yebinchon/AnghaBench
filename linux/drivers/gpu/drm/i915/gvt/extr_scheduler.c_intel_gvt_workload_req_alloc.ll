; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_gvt_workload_req_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_intel_gvt_workload_req_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i64, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { %struct.TYPE_4__*, %struct.intel_vgpu_submission }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_vgpu_submission = type { i32* }
%struct.i915_request = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"fail to allocate gem request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_workload*)* @intel_gvt_workload_req_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_gvt_workload_req_alloc(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_vgpu_workload*, align 8
  %4 = alloca %struct.intel_vgpu*, align 8
  %5 = alloca %struct.intel_vgpu_submission*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca %struct.i915_request*, align 8
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %3, align 8
  %8 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %8, i32 0, i32 2
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  store %struct.intel_vgpu* %10, %struct.intel_vgpu** %4, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  store %struct.intel_vgpu_submission* %12, %struct.intel_vgpu_submission** %5, align 8
  %13 = load %struct.intel_vgpu*, %struct.intel_vgpu** %4, align 8
  %14 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %16, align 8
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %6, align 8
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

27:                                               ; preds = %1
  %28 = load %struct.intel_vgpu_submission*, %struct.intel_vgpu_submission** %5, align 8
  %29 = getelementptr inbounds %struct.intel_vgpu_submission, %struct.intel_vgpu_submission* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %32 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.i915_request* @i915_request_create(i32 %35)
  store %struct.i915_request* %36, %struct.i915_request** %7, align 8
  %37 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %38 = call i64 @IS_ERR(%struct.i915_request* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = call i32 @gvt_vgpu_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %43 = call i32 @PTR_ERR(%struct.i915_request* %42)
  store i32 %43, i32* %2, align 4
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.i915_request*, %struct.i915_request** %7, align 8
  %46 = call i32 @i915_request_get(%struct.i915_request* %45)
  %47 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %3, align 8
  %48 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %44, %40, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.i915_request* @i915_request_create(i32) #1

declare dso_local i64 @IS_ERR(%struct.i915_request*) #1

declare dso_local i32 @gvt_vgpu_err(i8*) #1

declare dso_local i32 @PTR_ERR(%struct.i915_request*) #1

declare dso_local i32 @i915_request_get(%struct.i915_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
