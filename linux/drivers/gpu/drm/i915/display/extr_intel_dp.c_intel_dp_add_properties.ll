; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_add_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c_intel_dp_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_connector = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@PORT_A = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_ASPECT = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_FULLSCREEN = common dso_local global i32 0, align 4
@DRM_MODE_SCALE_CENTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, %struct.drm_connector*)* @intel_dp_add_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_dp_add_properties(%struct.intel_dp* %0, %struct.drm_connector* %1) #0 {
  %3 = alloca %struct.intel_dp*, align 8
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %3, align 8
  store %struct.drm_connector* %1, %struct.drm_connector** %4, align 8
  %8 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %9 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.drm_i915_private* @to_i915(i32 %10)
  store %struct.drm_i915_private* %11, %struct.drm_i915_private** %5, align 8
  %12 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %13 = call %struct.TYPE_6__* @dp_to_dig_port(%struct.intel_dp* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %18 = call i32 @IS_G4X(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @PORT_A, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %26 = call i32 @intel_attach_force_audio_property(%struct.drm_connector* %25)
  br label %27

27:                                               ; preds = %24, %20, %2
  %28 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %29 = call i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector* %28)
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %31 = call i64 @HAS_GMCH(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %35 = call i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector* %34, i32 6, i32 10)
  br label %44

36:                                               ; preds = %27
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %38 = call i32 @INTEL_GEN(%struct.drm_i915_private* %37)
  %39 = icmp sge i32 %38, 5
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %42 = call i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector* %41, i32 6, i32 12)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.intel_dp*, %struct.intel_dp** %3, align 8
  %46 = call i64 @intel_dp_is_edp(%struct.intel_dp* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = load i32, i32* @DRM_MODE_SCALE_FULLSCREEN, align 4
  %52 = call i32 @BIT(i32 %51)
  %53 = or i32 %50, %52
  store i32 %53, i32* %7, align 4
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %55 = call i64 @HAS_GMCH(%struct.drm_i915_private* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @DRM_MODE_SCALE_CENTER, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %57, %48
  %63 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @drm_connector_attach_scaling_mode_property(%struct.drm_connector* %63, i32 %64)
  %66 = load i32, i32* @DRM_MODE_SCALE_ASPECT, align 4
  %67 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %68 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 4
  br label %71

71:                                               ; preds = %62, %44
  ret void
}

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.TYPE_6__* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_attach_force_audio_property(%struct.drm_connector*) #1

declare dso_local i32 @intel_attach_broadcast_rgb_property(%struct.drm_connector*) #1

declare dso_local i64 @HAS_GMCH(%struct.drm_i915_private*) #1

declare dso_local i32 @drm_connector_attach_max_bpc_property(%struct.drm_connector*, i32, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_dp_is_edp(%struct.intel_dp*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @drm_connector_attach_scaling_mode_property(%struct.drm_connector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
