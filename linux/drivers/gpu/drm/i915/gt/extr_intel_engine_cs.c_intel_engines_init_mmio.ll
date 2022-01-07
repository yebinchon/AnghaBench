; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engines_init_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_engine_cs.c_intel_engines_init_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_device_info = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@I915_NUM_ENGINES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@intel_engines = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_engines_init_mmio(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_device_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %10 = call %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private* %9)
  store %struct.intel_device_info* %10, %struct.intel_device_info** %4, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = call %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @BITS_PER_TYPE(i32 %20)
  %22 = sub nsw i64 %21, 1
  %23 = load i32, i32* @I915_NUM_ENGINES, align 4
  %24 = call i32 @GENMASK(i64 %22, i32 %23)
  %25 = and i32 %19, %24
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i64 @i915_inject_probe_failure(%struct.drm_i915_private* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %58, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @intel_engines, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = icmp ult i32 %35, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @HAS_ENGINE(%struct.drm_i915_private* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %58

45:                                               ; preds = %39
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @intel_engine_setup(i32* %47, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %83

53:                                               ; preds = %45
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %53, %44
  %59 = load i32, i32* %7, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %34

61:                                               ; preds = %34
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i64 @WARN_ON(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.intel_device_info*, %struct.intel_device_info** %4, align 8
  %71 = getelementptr inbounds %struct.intel_device_info, %struct.intel_device_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %61
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @hweight32(i32 %73)
  %75 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %76 = call %struct.TYPE_3__* @RUNTIME_INFO(%struct.drm_i915_private* %75)
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  %78 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %79 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %78, i32 0, i32 0
  %80 = call i32 @intel_gt_check_and_clear_faults(i32* %79)
  %81 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %82 = call i32 @intel_setup_engine_capabilities(%struct.drm_i915_private* %81)
  store i32 0, i32* %2, align 4
  br label %87

83:                                               ; preds = %52
  %84 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %85 = call i32 @intel_engines_cleanup(%struct.drm_i915_private* %84)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %83, %72, %30
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.intel_device_info* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_4__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i64 @BITS_PER_TYPE(i32) #1

declare dso_local i64 @i915_inject_probe_failure(%struct.drm_i915_private*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @HAS_ENGINE(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_engine_setup(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local %struct.TYPE_3__* @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_gt_check_and_clear_faults(i32*) #1

declare dso_local i32 @intel_setup_engine_capabilities(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_engines_cleanup(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
