; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c___setup_engine_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c___setup_engine_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { i64, i64, i32, i32, %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_2__ = type { i32 }

@VIDEO_DECODE_CLASS = common dso_local global i64 0, align 8
@I915_VIDEO_CLASS_CAPABILITY_HEVC = common dso_local global i32 0, align 4
@I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC = common dso_local global i32 0, align 4
@VIDEO_ENHANCEMENT_CLASS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_engine_cs*)* @__setup_engine_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__setup_engine_capabilities(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  store %struct.drm_i915_private* %6, %struct.drm_i915_private** %3, align 8
  %7 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %8 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @VIDEO_DECODE_CLASS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %61

12:                                               ; preds = %1
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %14 = call i32 @INTEL_GEN(%struct.drm_i915_private* %13)
  %15 = icmp sge i32 %14, 11
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 9
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %22 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %12
  %26 = load i32, i32* @I915_VIDEO_CLASS_CAPABILITY_HEVC, align 4
  %27 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %28 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %25, %20, %16
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = call i32 @INTEL_GEN(%struct.drm_i915_private* %32)
  %34 = icmp sge i32 %33, 11
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %41 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %35, %31
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = call i32 @INTEL_GEN(%struct.drm_i915_private* %46)
  %48 = icmp sge i32 %47, 9
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  %50 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %51 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %35
  %55 = load i32, i32* @I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC, align 4
  %56 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %57 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %49, %45
  br label %79

61:                                               ; preds = %1
  %62 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %63 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VIDEO_ENHANCEMENT_CLASS, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %69 = call i32 @INTEL_GEN(%struct.drm_i915_private* %68)
  %70 = icmp sge i32 %69, 9
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* @I915_VIDEO_AND_ENHANCE_CLASS_CAPABILITY_SFC, align 4
  %73 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %74 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %60
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_2__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
