; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_digital_connector_atomic_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_atomic.c_intel_digital_connector_atomic_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_connector_state = type { i32 }
%struct.drm_property = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_i915_private = type { %struct.drm_property*, %struct.drm_property* }
%struct.intel_digital_connector_state = type { i8*, i8* }

@.str = private unnamed_addr constant [31 x i8] c"Unknown property [PROP:%d:%s]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_digital_connector_atomic_set_property(%struct.drm_connector* %0, %struct.drm_connector_state* %1, %struct.drm_property* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_connector*, align 8
  %7 = alloca %struct.drm_connector_state*, align 8
  %8 = alloca %struct.drm_property*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.drm_device*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.intel_digital_connector_state*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %6, align 8
  store %struct.drm_connector_state* %1, %struct.drm_connector_state** %7, align 8
  store %struct.drm_property* %2, %struct.drm_property** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.drm_connector*, %struct.drm_connector** %6, align 8
  %14 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %10, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %10, align 8
  %17 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %11, align 8
  %18 = load %struct.drm_connector_state*, %struct.drm_connector_state** %7, align 8
  %19 = call %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state* %18)
  store %struct.intel_digital_connector_state* %19, %struct.intel_digital_connector_state** %12, align 8
  %20 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %22 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %21, i32 0, i32 1
  %23 = load %struct.drm_property*, %struct.drm_property** %22, align 8
  %24 = icmp eq %struct.drm_property* %20, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i8*, i8** %9, align 8
  %27 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %12, align 8
  %28 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  store i32 0, i32* %5, align 4
  br label %50

29:                                               ; preds = %4
  %30 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %32 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %31, i32 0, i32 0
  %33 = load %struct.drm_property*, %struct.drm_property** %32, align 8
  %34 = icmp eq %struct.drm_property* %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.intel_digital_connector_state*, %struct.intel_digital_connector_state** %12, align 8
  %38 = getelementptr inbounds %struct.intel_digital_connector_state, %struct.intel_digital_connector_state* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  store i32 0, i32* %5, align 4
  br label %50

39:                                               ; preds = %29
  %40 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %41 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.drm_property*, %struct.drm_property** %8, align 8
  %45 = getelementptr inbounds %struct.drm_property, %struct.drm_property* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @DRM_DEBUG_ATOMIC(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %39, %35, %25
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_digital_connector_state* @to_intel_digital_connector_state(%struct.drm_connector_state*) #1

declare dso_local i32 @DRM_DEBUG_ATOMIC(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
