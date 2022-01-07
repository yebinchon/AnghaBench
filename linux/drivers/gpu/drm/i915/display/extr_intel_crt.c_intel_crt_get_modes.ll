; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_get_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_crt.c_intel_crt_get_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_crt = type { %struct.intel_encoder }
%struct.intel_encoder = type { i32 }
%struct.i2c_adapter = type { i32 }

@GMBUS_PIN_DPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*)* @intel_crt_get_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_crt_get_modes(%struct.drm_connector* %0) #0 {
  %2 = alloca %struct.drm_connector*, align 8
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_crt*, align 8
  %6 = alloca %struct.intel_encoder*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.drm_connector* %0, %struct.drm_connector** %2, align 8
  %10 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %11 = getelementptr inbounds %struct.drm_connector, %struct.drm_connector* %10, i32 0, i32 0
  %12 = load %struct.drm_device*, %struct.drm_device** %11, align 8
  store %struct.drm_device* %12, %struct.drm_device** %3, align 8
  %13 = load %struct.drm_device*, %struct.drm_device** %3, align 8
  %14 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %13)
  store %struct.drm_i915_private* %14, %struct.drm_i915_private** %4, align 8
  %15 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %16 = call %struct.intel_crt* @intel_attached_crt(%struct.drm_connector* %15)
  store %struct.intel_crt* %16, %struct.intel_crt** %5, align 8
  %17 = load %struct.intel_crt*, %struct.intel_crt** %5, align 8
  %18 = getelementptr inbounds %struct.intel_crt, %struct.intel_crt* %17, i32 0, i32 0
  store %struct.intel_encoder* %18, %struct.intel_encoder** %6, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %20 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %21 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @intel_display_power_get(%struct.drm_i915_private* %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %24, i32 %28)
  store %struct.i2c_adapter* %29, %struct.i2c_adapter** %8, align 8
  %30 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = call i32 @intel_crt_ddc_get_modes(%struct.drm_connector* %30, %struct.i2c_adapter* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i32 @IS_G4X(%struct.drm_i915_private* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %1
  br label %47

40:                                               ; preds = %35
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = load i32, i32* @GMBUS_PIN_DPB, align 4
  %43 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %41, i32 %42)
  store %struct.i2c_adapter* %43, %struct.i2c_adapter** %8, align 8
  %44 = load %struct.drm_connector*, %struct.drm_connector** %2, align 8
  %45 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %46 = call i32 @intel_crt_ddc_get_modes(%struct.drm_connector* %44, %struct.i2c_adapter* %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %40, %39
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %49 = load %struct.intel_encoder*, %struct.intel_encoder** %6, align 8
  %50 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @intel_display_power_put(%struct.drm_i915_private* %48, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local %struct.intel_crt* @intel_attached_crt(%struct.drm_connector*) #1

declare dso_local i32 @intel_display_power_get(%struct.drm_i915_private*, i32) #1

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_crt_ddc_get_modes(%struct.drm_connector*, %struct.i2c_adapter*) #1

declare dso_local i32 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
