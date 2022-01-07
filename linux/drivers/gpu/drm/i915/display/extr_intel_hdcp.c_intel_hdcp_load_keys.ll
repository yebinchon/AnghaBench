; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_load_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdcp.c_intel_hdcp_load_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@HDCP_KEY_STATUS = common dso_local global i32 0, align 4
@HDCP_KEY_LOAD_DONE = common dso_local global i32 0, align 4
@HDCP_KEY_LOAD_STATUS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SKL_PCODE_LOAD_HDCP_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to initiate HDCP key load (%d)\0A\00", align 1
@HDCP_KEY_CONF = common dso_local global i32 0, align 4
@HDCP_KEY_LOAD_TRIGGER = common dso_local global i32 0, align 4
@HDCP_AKSV_SEND_TRIGGER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_hdcp_load_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hdcp_load_keys(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %6 = load i32, i32* @HDCP_KEY_STATUS, align 4
  %7 = call i32 @I915_READ(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @HDCP_KEY_LOAD_DONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HDCP_KEY_LOAD_STATUS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %79

18:                                               ; preds = %12, %1
  %19 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %20 = call i64 @IS_HASWELL(%struct.drm_i915_private* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %24 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %22, %18
  %27 = load i32, i32* @HDCP_KEY_STATUS, align 4
  %28 = call i32 @I915_READ(i32 %27)
  %29 = load i32, i32* @HDCP_KEY_LOAD_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENXIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %79

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %22
  %37 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %38 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %42 = load i32, i32* @SKL_PCODE_LOAD_HDCP_KEYS, align 4
  %43 = call i32 @sandybridge_pcode_write(%struct.drm_i915_private* %41, i32 %42, i32 1)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %40
  br label %55

51:                                               ; preds = %36
  %52 = load i32, i32* @HDCP_KEY_CONF, align 4
  %53 = load i32, i32* @HDCP_KEY_LOAD_TRIGGER, align 4
  %54 = call i32 @I915_WRITE(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %50
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %57 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %56, i32 0, i32 0
  %58 = load i32, i32* @HDCP_KEY_STATUS, align 4
  %59 = load i32, i32* @HDCP_KEY_LOAD_DONE, align 4
  %60 = load i32, i32* @HDCP_KEY_LOAD_DONE, align 4
  %61 = call i32 @__intel_wait_for_register(i32* %57, i32 %58, i32 %59, i32 %60, i32 10, i32 1, i32* %5)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %79

66:                                               ; preds = %55
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @HDCP_KEY_LOAD_STATUS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENXIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %79

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* @HDCP_KEY_CONF, align 4
  %77 = load i32, i32* @HDCP_AKSV_SEND_TRIGGER, align 4
  %78 = call i32 @I915_WRITE(i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %75, %71, %64, %46, %32, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @sandybridge_pcode_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @__intel_wait_for_register(i32*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
