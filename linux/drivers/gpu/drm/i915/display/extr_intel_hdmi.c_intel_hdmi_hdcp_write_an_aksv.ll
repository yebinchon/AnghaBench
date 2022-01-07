; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_write_an_aksv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_write_an_aksv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_6__, %struct.intel_hdmi }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.i2c_adapter = type { i32 }

@DRM_HDCP_DDC_AN = common dso_local global i32 0, align 4
@DRM_HDCP_AN_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Write An over DDC failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to output aksv (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32*)* @intel_hdmi_hdcp_write_an_aksv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_hdcp_write_an_aksv(%struct.intel_digital_port* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_digital_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.intel_hdmi*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %11 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %10, i32 0, i32 1
  store %struct.intel_hdmi* %11, %struct.intel_hdmi** %6, align 8
  %12 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %13 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %17, align 8
  store %struct.drm_i915_private* %18, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %20 = load %struct.intel_hdmi*, %struct.intel_hdmi** %6, align 8
  %21 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %19, i32 %22)
  store %struct.i2c_adapter* %23, %struct.i2c_adapter** %8, align 8
  %24 = load %struct.intel_digital_port*, %struct.intel_digital_port** %4, align 8
  %25 = load i32, i32* @DRM_HDCP_DDC_AN, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @DRM_HDCP_AN_LEN, align 4
  %28 = call i32 @intel_hdmi_hdcp_write(%struct.intel_digital_port* %24, i32 %25, i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %37 = call i32 @intel_gmbus_output_aksv(%struct.i2c_adapter* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %3, align 4
  br label %45

44:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %40, %31
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @intel_hdmi_hdcp_write(%struct.intel_digital_port*, i32, i32*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32) #1

declare dso_local i32 @intel_gmbus_output_aksv(%struct.i2c_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
