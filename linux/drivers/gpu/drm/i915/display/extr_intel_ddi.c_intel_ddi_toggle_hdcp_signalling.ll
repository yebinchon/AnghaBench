; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_toggle_hdcp_signalling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_toggle_hdcp_signalling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, i32 (%struct.intel_encoder*, i32*)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.drm_device* }
%struct.drm_device = type { i32 }
%struct.drm_i915_private = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TRANS_DDI_HDCP_SIGNALLING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_ddi_toggle_hdcp_signalling(%struct.intel_encoder* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %13 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.drm_device*, %struct.drm_device** %14, align 8
  store %struct.drm_device* %15, %struct.drm_device** %6, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call %struct.drm_i915_private* @to_i915(%struct.drm_device* %16)
  store %struct.drm_i915_private* %17, %struct.drm_i915_private** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %19 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %20 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private* %18, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %74

32:                                               ; preds = %2
  %33 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %34 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %33, i32 0, i32 1
  %35 = load i32 (%struct.intel_encoder*, i32*)*, i32 (%struct.intel_encoder*, i32*)** %34, align 8
  %36 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %37 = call i32 %35(%struct.intel_encoder* %36, i32* %9)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @WARN_ON(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %10, align 4
  br label %66

46:                                               ; preds = %32
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @TRANS_DDI_FUNC_CTL(i32 %47)
  %49 = call i32 @I915_READ(i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32, i32* @TRANS_DDI_HDCP_SIGNALLING, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %61

56:                                               ; preds = %46
  %57 = load i32, i32* @TRANS_DDI_HDCP_SIGNALLING, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @TRANS_DDI_FUNC_CTL(i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @I915_WRITE(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %43
  %67 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %68 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %69 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @intel_display_power_put(%struct.drm_i915_private* %67, i32 %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %66, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.drm_i915_private* @to_i915(%struct.drm_device*) #1

declare dso_local i32 @intel_display_power_get_if_enabled(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @TRANS_DDI_FUNC_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @intel_display_power_put(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
