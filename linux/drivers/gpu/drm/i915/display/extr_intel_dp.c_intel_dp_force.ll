; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_force.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_force.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_dp = type { i32 }
%struct.intel_digital_port = type { %struct.intel_encoder }
%struct.intel_encoder = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[CONNECTOR:%d:%s]\0A\00", align 1
@connector_status_connected = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_connector*)* @intel_dp_force to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_force(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca %struct.intel_encoder*, align 8
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %9 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %10 = call %struct.intel_dp* @intel_attached_dp(%struct.drm_connector* %9)
  store %struct.intel_dp* %10, %struct.intel_dp** %3, align 8
  %11 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %12 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %11)
  store %struct.intel_digital_port* %12, %struct.intel_digital_port** %4, align 8
  %13 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %14 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %13, i32 0, i32 0
  store %struct.intel_encoder* %14, %struct.intel_encoder** %5, align 8
  %15 = load %struct.intel_encoder*, %struct.intel_encoder** %5, align 8
  %16 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.drm_i915_private* @to_i915(i32 %18)
  store %struct.drm_i915_private* %19, %struct.drm_i915_private** %6, align 8
  %20 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %21 = call i32 @intel_aux_power_domain(%struct.intel_digital_port* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %23 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %27 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %31 = call i32 @intel_dp_unset_edid(%struct.intel_dp* %30)
  %32 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %33 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @connector_status_connected, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %48

38:                                               ; preds = %1
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @intel_display_power_get(%struct.drm_i915_private* %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %43 = call i32 @intel_dp_set_edid(%struct.intel_dp* %42)
  %44 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @intel_display_power_put(%struct.drm_i915_private* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.intel_dp* @intel_attached_dp(%struct.drm_connector*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local i32 @intel_aux_power_domain(%struct.intel_digital_port*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @intel_dp_unset_edid(%struct.intel_dp*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_dp_set_edid(%struct.intel_dp*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
