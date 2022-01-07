; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_act_freq_mhz_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sysfs.c_gt_act_freq_mhz_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.drm_i915_private = type { i32 }

@PUNIT_REG_GPU_FREQ_STS = common dso_local global i32 0, align 4
@GEN6_RPSTAT1 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @gt_act_freq_mhz_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gt_act_freq_mhz_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device* %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %7, align 8
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %13 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %12, i32 0, i32 0
  %14 = call i32 @intel_runtime_pm_get(i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %16 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18, %3
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %24 = call i32 @vlv_punit_get(%struct.drm_i915_private* %23)
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %26 = load i32, i32* @PUNIT_REG_GPU_FREQ_STS, align 4
  %27 = call i32 @vlv_punit_read(%struct.drm_i915_private* %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %29 = call i32 @vlv_punit_put(%struct.drm_i915_private* %28)
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  store i32 %32, i32* %9, align 4
  br label %38

33:                                               ; preds = %18
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %35 = load i32, i32* @GEN6_RPSTAT1, align 4
  %36 = call i32 @I915_READ(i32 %35)
  %37 = call i32 @intel_get_cagf(%struct.drm_i915_private* %34, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %33, %22
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %40 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %39, i32 0, i32 0
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @intel_runtime_pm_put(i32* %40, i32 %41)
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @intel_gpu_freq(%struct.drm_i915_private* %45, i32 %46)
  %48 = call i32 @snprintf(i8* %43, i32 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %47)
  ret i32 %48
}

declare dso_local %struct.drm_i915_private* @kdev_minor_to_i915(%struct.device*) #1

declare dso_local i32 @intel_runtime_pm_get(i32*) #1

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_get_cagf(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @intel_runtime_pm_put(i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @intel_gpu_freq(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
