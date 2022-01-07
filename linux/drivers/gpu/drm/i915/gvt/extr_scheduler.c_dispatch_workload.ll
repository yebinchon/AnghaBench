; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_dispatch_workload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gvt/extr_scheduler.c_dispatch_workload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_vgpu_workload = type { i32, i32, i32, %struct.intel_vgpu_workload*, i32, %struct.intel_vgpu* }
%struct.intel_vgpu = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i915_request = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ring id %d prepare to dispatch workload %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ring id %d submit workload to i915 %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_vgpu_workload*)* @dispatch_workload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispatch_workload(%struct.intel_vgpu_workload* %0) #0 {
  %2 = alloca %struct.intel_vgpu_workload*, align 8
  %3 = alloca %struct.intel_vgpu*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.i915_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_vgpu_workload* %0, %struct.intel_vgpu_workload** %2, align 8
  %8 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %9 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %8, i32 0, i32 5
  %10 = load %struct.intel_vgpu*, %struct.intel_vgpu** %9, align 8
  store %struct.intel_vgpu* %10, %struct.intel_vgpu** %3, align 8
  %11 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %12 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %14, align 8
  store %struct.drm_i915_private* %15, %struct.drm_i915_private** %4, align 8
  %16 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %17 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %21 = call i32 @gvt_dbg_sched(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.intel_vgpu_workload* %20)
  %22 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %23 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %30 = call i32 @intel_gvt_workload_req_alloc(%struct.intel_vgpu_workload* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %80

34:                                               ; preds = %1
  %35 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %36 = call i32 @intel_gvt_scan_and_shadow_workload(%struct.intel_vgpu_workload* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %52

40:                                               ; preds = %34
  %41 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %42 = call i32 @populate_shadow_context(%struct.intel_vgpu_workload* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %47 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %46, i32 0, i32 4
  %48 = call i32 @release_shadow_wa_ctx(i32* %47)
  br label %52

49:                                               ; preds = %40
  %50 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %51 = call i32 @prepare_workload(%struct.intel_vgpu_workload* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %45, %39
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %57 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %56, i32 0, i32 3
  %58 = call %struct.i915_request* @fetch_and_zero(%struct.intel_vgpu_workload** %57)
  store %struct.i915_request* %58, %struct.i915_request** %5, align 8
  %59 = load %struct.i915_request*, %struct.i915_request** %5, align 8
  %60 = call i32 @i915_request_put(%struct.i915_request* %59)
  br label %61

61:                                               ; preds = %55, %52
  %62 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %63 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %62, i32 0, i32 3
  %64 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %63, align 8
  %65 = call i32 @IS_ERR_OR_NULL(%struct.intel_vgpu_workload* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %79, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %70 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %69, i32 0, i32 3
  %71 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %70, align 8
  %72 = call i32 @gvt_dbg_sched(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %68, %struct.intel_vgpu_workload* %71)
  %73 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %74 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %73, i32 0, i32 3
  %75 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %74, align 8
  %76 = call i32 @i915_request_add(%struct.intel_vgpu_workload* %75)
  %77 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %78 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %77, i32 0, i32 1
  store i32 1, i32* %78, align 4
  br label %79

79:                                               ; preds = %67, %61
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.intel_vgpu_workload*, %struct.intel_vgpu_workload** %2, align 8
  %86 = getelementptr inbounds %struct.intel_vgpu_workload, %struct.intel_vgpu_workload* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  br label %87

87:                                               ; preds = %83, %80
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %89 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load %struct.intel_vgpu*, %struct.intel_vgpu** %3, align 8
  %93 = getelementptr inbounds %struct.intel_vgpu, %struct.intel_vgpu* %92, i32 0, i32 0
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @gvt_dbg_sched(i8*, i32, %struct.intel_vgpu_workload*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_gvt_workload_req_alloc(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @intel_gvt_scan_and_shadow_workload(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @populate_shadow_context(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @release_shadow_wa_ctx(i32*) #1

declare dso_local i32 @prepare_workload(%struct.intel_vgpu_workload*) #1

declare dso_local %struct.i915_request* @fetch_and_zero(%struct.intel_vgpu_workload**) #1

declare dso_local i32 @i915_request_put(%struct.i915_request*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @i915_request_add(%struct.intel_vgpu_workload*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
