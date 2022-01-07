; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_lspcon.c_lspcon_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_5__, %struct.intel_lspcon, %struct.intel_dp }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.intel_lspcon = type { i32, i32 }
%struct.intel_dp = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.drm_connector }
%struct.drm_connector = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"LSPCON is not supported on this platform\0A\00", align 1
@DRM_LSPCON_MODE_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Failed to probe lspcon\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"LSPCON DPCD read failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"LSPCON vendor detection failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Success: LSPCON init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lspcon_init(%struct.intel_digital_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_digital_port*, align 8
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca %struct.intel_lspcon*, align 8
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.drm_connector*, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %3, align 8
  %9 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %10 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %9, i32 0, i32 2
  store %struct.intel_dp* %10, %struct.intel_dp** %4, align 8
  %11 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %12 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %11, i32 0, i32 1
  store %struct.intel_lspcon* %12, %struct.intel_lspcon** %5, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %3, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.drm_device*, %struct.drm_device** %16, align 8
  store %struct.drm_device* %17, %struct.drm_device** %6, align 8
  %18 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %19 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.drm_connector* %23, %struct.drm_connector** %8, align 8
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %25 = call i32 @HAS_LSPCON(%struct.drm_i915_private* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %1
  %28 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

29:                                               ; preds = %1
  %30 = load %struct.intel_lspcon*, %struct.intel_lspcon** %5, align 8
  %31 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @DRM_LSPCON_MODE_INVALID, align 4
  %33 = load %struct.intel_lspcon*, %struct.intel_lspcon** %5, align 8
  %34 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.intel_lspcon*, %struct.intel_lspcon** %5, align 8
  %36 = call i32 @lspcon_probe(%struct.intel_lspcon* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %42 = call i32 @intel_dp_read_dpcd(%struct.intel_dp* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

46:                                               ; preds = %40
  %47 = load %struct.intel_lspcon*, %struct.intel_lspcon** %5, align 8
  %48 = call i32 @lspcon_detect_vendor(%struct.intel_lspcon* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %46
  %51 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %46
  %53 = load %struct.drm_connector*, %struct.drm_connector** %8, align 8
  %54 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  %55 = load %struct.intel_lspcon*, %struct.intel_lspcon** %5, align 8
  %56 = getelementptr inbounds %struct.intel_lspcon, %struct.intel_lspcon* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  %57 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %50, %44, %38, %27
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @HAS_LSPCON(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @lspcon_probe(%struct.intel_lspcon*) #1

declare dso_local i32 @intel_dp_read_dpcd(%struct.intel_dp*) #1

declare dso_local i32 @lspcon_detect_vendor(%struct.intel_lspcon*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
