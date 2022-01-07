; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_opregion }
%struct.intel_opregion = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@ASLE_ARDY_NOT_READY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_opregion_suspend(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_opregion*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  store %struct.intel_opregion* %7, %struct.intel_opregion** %5, align 8
  %8 = load %struct.intel_opregion*, %struct.intel_opregion** %5, align 8
  %9 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @intel_opregion_notify_adapter(%struct.drm_i915_private* %14, i32 %15)
  %17 = load %struct.intel_opregion*, %struct.intel_opregion** %5, align 8
  %18 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, i32* @ASLE_ARDY_NOT_READY, align 4
  %23 = load %struct.intel_opregion*, %struct.intel_opregion** %5, align 8
  %24 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %22, i32* %26, align 4
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %29, i32 0, i32 1
  %31 = call i32 @cancel_work_sync(i32* %30)
  %32 = load %struct.intel_opregion*, %struct.intel_opregion** %5, align 8
  %33 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.intel_opregion*, %struct.intel_opregion** %5, align 8
  %38 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  br label %41

41:                                               ; preds = %12, %36, %27
  ret void
}

declare dso_local i32 @intel_opregion_notify_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
