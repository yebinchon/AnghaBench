; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_intel_fbc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.drm_i915_private = type { %struct.intel_fbc }
%struct.intel_fbc = type { i32, i32, i8*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@intel_fbc_underrun_work_fn = common dso_local global i32 0, align 4
@i915_modparams = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"Sanitized enable_fbc value: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"unsupported by this chipset\00", align 1
@FBC_CONTROL = common dso_local global i32 0, align 4
@FBC_CTL_INTERVAL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_fbc_init(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 0
  store %struct.intel_fbc* %5, %struct.intel_fbc** %3, align 8
  %6 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %7 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %6, i32 0, i32 4
  %8 = load i32, i32* @intel_fbc_underrun_work_fn, align 4
  %9 = call i32 @INIT_WORK(i32* %7, i32 %8)
  %10 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %11 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %10, i32 0, i32 3
  %12 = call i32 @mutex_init(i32* %11)
  %13 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %14 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %16 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %18 = call i64 @need_fbc_vtd_wa(%struct.drm_i915_private* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %22 = call %struct.TYPE_5__* @mkwrite_device_info(%struct.drm_i915_private* %21)
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %1
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i32 @intel_sanitize_fbc_option(%struct.drm_i915_private* %26)
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 4
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call i32 @HAS_FBC(%struct.drm_i915_private* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load %struct.intel_fbc*, %struct.intel_fbc** %3, align 8
  %35 = getelementptr inbounds %struct.intel_fbc, %struct.intel_fbc* %34, i32 0, i32 2
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8** %35, align 8
  br label %56

36:                                               ; preds = %25
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sle i32 %38, 4
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %42 = call i32 @IS_GM45(%struct.drm_i915_private* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @FBC_CONTROL, align 4
  %46 = load i32, i32* @FBC_CTL_INTERVAL_SHIFT, align 4
  %47 = shl i32 500, %46
  %48 = call i32 @I915_WRITE(i32 %45, i32 %47)
  br label %49

49:                                               ; preds = %44, %40, %36
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %51 = call i64 @intel_fbc_hw_is_active(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = call i32 @intel_fbc_hw_deactivate(%struct.drm_i915_private* %54)
  br label %56

56:                                               ; preds = %33, %53, %49
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @need_fbc_vtd_wa(%struct.drm_i915_private*) #1

declare dso_local %struct.TYPE_5__* @mkwrite_device_info(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_sanitize_fbc_option(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @HAS_FBC(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GM45(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @intel_fbc_hw_is_active(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_fbc_hw_deactivate(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
