; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_virt_detect_pch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pch.c_intel_virt_detect_pch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@INTEL_PCH_TGP_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_MCC_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_ICP_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_CNP_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_SPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_LPT_LP_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_LPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_CPT_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@INTEL_PCH_IBX_DEVICE_ID_TYPE = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [22 x i8] c"Assuming PCH ID %04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Assuming no PCH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.drm_i915_private*)* @intel_virt_detect_pch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @intel_virt_detect_pch(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca i16, align 2
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  store i16 0, i16* %3, align 2
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %5 = call i64 @IS_TIGERLAKE(%struct.drm_i915_private* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i16, i16* @INTEL_PCH_TGP_DEVICE_ID_TYPE, align 2
  store i16 %8, i16* %3, align 2
  br label %85

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i16, i16* @INTEL_PCH_MCC_DEVICE_ID_TYPE, align 2
  store i16 %14, i16* %3, align 2
  br label %84

15:                                               ; preds = %9
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %17 = call i64 @IS_ICELAKE(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i16, i16* @INTEL_PCH_ICP_DEVICE_ID_TYPE, align 2
  store i16 %20, i16* %3, align 2
  br label %83

21:                                               ; preds = %15
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %23 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %27 = call i64 @IS_COFFEELAKE(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21
  %30 = load i16, i16* @INTEL_PCH_CNP_DEVICE_ID_TYPE, align 2
  store i16 %30, i16* %3, align 2
  br label %82

31:                                               ; preds = %25
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %33 = call i64 @IS_KABYLAKE(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %37 = call i64 @IS_SKYLAKE(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35, %31
  %40 = load i16, i16* @INTEL_PCH_SPT_DEVICE_ID_TYPE, align 2
  store i16 %40, i16* %3, align 2
  br label %81

41:                                               ; preds = %35
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %43 = call i64 @IS_HSW_ULT(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = call i64 @IS_BDW_ULT(%struct.drm_i915_private* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %41
  %50 = load i16, i16* @INTEL_PCH_LPT_LP_DEVICE_ID_TYPE, align 2
  store i16 %50, i16* %3, align 2
  br label %80

51:                                               ; preds = %45
  %52 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %53 = call i64 @IS_HASWELL(%struct.drm_i915_private* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %57 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55, %51
  %60 = load i16, i16* @INTEL_PCH_LPT_DEVICE_ID_TYPE, align 2
  store i16 %60, i16* %3, align 2
  br label %79

61:                                               ; preds = %55
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %63 = call i64 @IS_GEN(%struct.drm_i915_private* %62, i32 6)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %67 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65, %61
  %70 = load i16, i16* @INTEL_PCH_CPT_DEVICE_ID_TYPE, align 2
  store i16 %70, i16* %3, align 2
  br label %78

71:                                               ; preds = %65
  %72 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %73 = call i64 @IS_GEN(%struct.drm_i915_private* %72, i32 5)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i16, i16* @INTEL_PCH_IBX_DEVICE_ID_TYPE, align 2
  store i16 %76, i16* %3, align 2
  br label %77

77:                                               ; preds = %75, %71
  br label %78

78:                                               ; preds = %77, %69
  br label %79

79:                                               ; preds = %78, %59
  br label %80

80:                                               ; preds = %79, %49
  br label %81

81:                                               ; preds = %80, %39
  br label %82

82:                                               ; preds = %81, %29
  br label %83

83:                                               ; preds = %82, %19
  br label %84

84:                                               ; preds = %83, %13
  br label %85

85:                                               ; preds = %84, %7
  %86 = load i16, i16* %3, align 2
  %87 = icmp ne i16 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i16, i16* %3, align 2
  %90 = zext i16 %89 to i32
  %91 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %94

92:                                               ; preds = %85
  %93 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %88
  %95 = load i16, i16* %3, align 2
  ret i16 %95
}

declare dso_local i64 @IS_TIGERLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_ICELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_COFFEELAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_KABYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_SKYLAKE(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HSW_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BDW_ULT(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
