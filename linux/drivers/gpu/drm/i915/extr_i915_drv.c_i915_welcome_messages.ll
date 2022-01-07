; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_welcome_messages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_drv.c_i915_welcome_messages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.drm_printer = type { i32 }
%struct.TYPE_3__ = type { i32 }

@drm_debug = common dso_local global i32 0, align 4
@DRM_UT_DRIVER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"i915 device info:\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"pciid=0x%04x rev=0x%02x platform=%s (subplatform=0x%x) gen=%i\0A\00", align 1
@CONFIG_DRM_I915_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DRM_I915_DEBUG enabled\0A\00", align 1
@CONFIG_DRM_I915_DEBUG_GEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"DRM_I915_DEBUG_GEM enabled\0A\00", align 1
@CONFIG_DRM_I915_DEBUG_RUNTIME_PM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"DRM_I915_DEBUG_RUNTIME_PM enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i915_welcome_messages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i915_welcome_messages(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.drm_printer, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %4 = load i32, i32* @drm_debug, align 4
  %5 = load i32, i32* @DRM_UT_DRIVER, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %36

8:                                                ; preds = %1
  %9 = call i32 @drm_debug_printer(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = getelementptr inbounds %struct.drm_printer, %struct.drm_printer* %3, i32 0, i32 0
  store i32 %9, i32* %10, align 4
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %12 = call i32 @INTEL_DEVID(%struct.drm_i915_private* %11)
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %14 = call i32 @INTEL_REVID(%struct.drm_i915_private* %13)
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %16 = call %struct.TYPE_3__* @INTEL_INFO(%struct.drm_i915_private* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @intel_platform_name(i32 %18)
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %21 = call i32 @RUNTIME_INFO(%struct.drm_i915_private* %20)
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call %struct.TYPE_3__* @INTEL_INFO(%struct.drm_i915_private* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @intel_subplatform(i32 %21, i32 %25)
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = call i32 @drm_printf(%struct.drm_printer* %3, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %14, i32 %19, i32 %26, i32 %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %31 = call %struct.TYPE_3__* @INTEL_INFO(%struct.drm_i915_private* %30)
  %32 = call i32 @intel_device_info_dump_flags(%struct.TYPE_3__* %31, %struct.drm_printer* %3)
  %33 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %34 = call i32 @RUNTIME_INFO(%struct.drm_i915_private* %33)
  %35 = call i32 @intel_device_info_dump_runtime(i32 %34, %struct.drm_printer* %3)
  br label %36

36:                                               ; preds = %8, %1
  %37 = load i32, i32* @CONFIG_DRM_I915_DEBUG, align 4
  %38 = call i64 @IS_ENABLED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @DRM_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* @CONFIG_DRM_I915_DEBUG_GEM, align 4
  %44 = call i64 @IS_ENABLED(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = call i32 @DRM_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* @CONFIG_DRM_I915_DEBUG_RUNTIME_PM, align 4
  %50 = call i64 @IS_ENABLED(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = call i32 @DRM_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %48
  ret void
}

declare dso_local i32 @drm_debug_printer(i8*) #1

declare dso_local i32 @drm_printf(%struct.drm_printer*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTEL_DEVID(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_REVID(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_platform_name(i32) #1

declare dso_local %struct.TYPE_3__* @INTEL_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_subplatform(i32, i32) #1

declare dso_local i32 @RUNTIME_INFO(%struct.drm_i915_private*) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_device_info_dump_flags(%struct.TYPE_3__*, %struct.drm_printer*) #1

declare dso_local i32 @intel_device_info_dump_runtime(i32, %struct.drm_printer*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @DRM_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
