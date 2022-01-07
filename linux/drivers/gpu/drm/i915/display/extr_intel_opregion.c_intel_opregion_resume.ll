; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_opregion_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.intel_opregion }
%struct.intel_opregion = type { %struct.TYPE_3__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@ASLE_TCHE_BLC_EN = common dso_local global i32 0, align 4
@ASLE_ARDY_READY = common dso_local global i32 0, align 4
@PCI_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_opregion_resume(%struct.drm_i915_private* %0) #0 {
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
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %13 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i32 @intel_didl_outputs(%struct.drm_i915_private* %17)
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %20 = call i32 @intel_setup_cadls(%struct.drm_i915_private* %19)
  %21 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %22 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %26 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %16, %11
  %30 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %31 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = icmp ne %struct.TYPE_3__* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load i32, i32* @ASLE_TCHE_BLC_EN, align 4
  %36 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %37 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* @ASLE_ARDY_READY, align 4
  %41 = load %struct.intel_opregion*, %struct.intel_opregion** %3, align 8
  %42 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %34, %29
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = load i32, i32* @PCI_D0, align 4
  %48 = call i32 @intel_opregion_notify_adapter(%struct.drm_i915_private* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %10
  ret void
}

declare dso_local i32 @intel_didl_outputs(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_setup_cadls(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_opregion_notify_adapter(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
