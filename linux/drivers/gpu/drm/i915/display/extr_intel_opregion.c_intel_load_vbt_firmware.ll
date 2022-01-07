; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_load_vbt_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_opregion.c_intel_load_vbt_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8* }
%struct.drm_i915_private = type { %struct.TYPE_5__, %struct.intel_opregion }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.intel_opregion = type { i32, i64, i64 }
%struct.firmware = type { i32, i32 }

@i915_modparams = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Requesting VBT firmware \22%s\22 failed (%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Found valid VBT firmware \22%s\22\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Invalid VBT firmware \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @intel_load_vbt_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_load_vbt_firmware(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_opregion*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 1
  store %struct.intel_opregion* %9, %struct.intel_opregion** %4, align 8
  store %struct.firmware* null, %struct.firmware** %5, align 8
  %10 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @i915_modparams, i32 0, i32 0), align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13, %1
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %85

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %23 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @request_firmware(%struct.firmware** %5, i8* %21, i32* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %20
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %85

35:                                               ; preds = %20
  %36 = load %struct.firmware*, %struct.firmware** %5, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @intel_bios_is_valid_vbt(i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %35
  %45 = load %struct.firmware*, %struct.firmware** %5, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.firmware*, %struct.firmware** %5, align 8
  %49 = getelementptr inbounds %struct.firmware, %struct.firmware* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i64 @kmemdup(i32 %47, i32 %50, i32 %51)
  %53 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %54 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %56 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %72

59:                                               ; preds = %44
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %60)
  %62 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %63 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %66 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  %67 = load %struct.firmware*, %struct.firmware** %5, align 8
  %68 = getelementptr inbounds %struct.firmware, %struct.firmware* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.intel_opregion*, %struct.intel_opregion** %4, align 8
  %71 = getelementptr inbounds %struct.intel_opregion, %struct.intel_opregion* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 0, i32* %7, align 4
  br label %75

72:                                               ; preds = %44
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %72, %59
  br label %81

76:                                               ; preds = %35
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i8* %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = load %struct.firmware*, %struct.firmware** %5, align 8
  %83 = call i32 @release_firmware(%struct.firmware* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %30, %17
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i8*, i32) #1

declare dso_local i64 @intel_bios_is_valid_vbt(i32, i32) #1

declare dso_local i64 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i8*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
