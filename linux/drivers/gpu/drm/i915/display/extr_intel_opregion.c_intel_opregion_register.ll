; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_opregion }
%struct.intel_opregion = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@intel_opregion_video_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_opregion_register(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_opregion*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_opregion* %5, %struct.intel_opregion** %3, align 8
  %6 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %7 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %27

11:                                               ; preds = %1
  %12 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %13 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @intel_opregion_video_event, align 4
  %18 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %19 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %22 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %21, i32 0, i32 0
  %23 = call i32 @register_acpi_notifier(%struct.TYPE_2__* %22)
  br label %24

24:                                               ; preds = %16, %11
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %26 = call i32 @intel_opregion_resume(%struct.drm_i915_private* %25)
  br label %27

27:                                               ; preds = %24, %10
  ret void
}

declare dso_local i32 @register_acpi_notifier(%struct.TYPE_2__*) #1

declare dso_local i32 @intel_opregion_resume(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
