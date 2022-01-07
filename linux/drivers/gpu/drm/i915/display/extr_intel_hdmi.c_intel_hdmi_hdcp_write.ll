; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_hdcp_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_digital_port = type { %struct.TYPE_6__, %struct.intel_hdmi }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_i915_private* }
%struct.drm_i915_private = type { i32 }
%struct.intel_hdmi = type { i32 }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i64, i32*, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DRM_HDCP_DDC_ADDR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_digital_port*, i32, i8*, i64)* @intel_hdmi_hdcp_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdmi_hdcp_write(%struct.intel_digital_port* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_digital_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.intel_hdmi*, align 8
  %11 = alloca %struct.drm_i915_private*, align 8
  %12 = alloca %struct.i2c_adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.i2c_msg, align 8
  store %struct.intel_digital_port* %0, %struct.intel_digital_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 1
  store %struct.intel_hdmi* %17, %struct.intel_hdmi** %10, align 8
  %18 = load %struct.intel_digital_port*, %struct.intel_digital_port** %6, align 8
  %19 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.drm_i915_private*, %struct.drm_i915_private** %23, align 8
  store %struct.drm_i915_private* %24, %struct.drm_i915_private** %11, align 8
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %11, align 8
  %26 = load %struct.intel_hdmi*, %struct.intel_hdmi** %10, align 8
  %27 = getelementptr inbounds %struct.intel_hdmi, %struct.intel_hdmi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private* %25, i32 %28)
  store %struct.i2c_adapter* %29, %struct.i2c_adapter** %12, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @kzalloc(i64 %31, i32 %32)
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %73

39:                                               ; preds = %4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 255
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @memcpy(i32* %45, i8* %46, i64 %47)
  %49 = load i32, i32* @DRM_HDCP_DDC_ADDR, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %15, i32 0, i32 1
  store i32* %55, i32** %56, align 8
  %57 = load %struct.i2c_adapter*, %struct.i2c_adapter** %12, align 8
  %58 = call i32 @i2c_transfer(%struct.i2c_adapter* %57, %struct.i2c_msg* %15, i32 1)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %62

61:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %69

62:                                               ; preds = %39
  %63 = load i32, i32* %13, align 4
  %64 = icmp sge i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EIO, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %13, align 4
  br label %68

68:                                               ; preds = %65, %62
  br label %69

69:                                               ; preds = %68, %61
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32, i32* %13, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %36
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.i2c_adapter* @intel_gmbus_get_adapter(%struct.drm_i915_private*, i32) #1

declare dso_local i32* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
