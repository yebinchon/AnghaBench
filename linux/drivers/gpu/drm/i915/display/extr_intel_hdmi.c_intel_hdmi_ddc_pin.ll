; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_ddc_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_hdmi.c_intel_hdmi_ddc_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ddi_vbt_port_info* }
%struct.ddi_vbt_port_info = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"Using DDC pin 0x%x for port %c (VBT)\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Using DDC pin 0x%x for port %c (platform default)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_i915_private*, i32)* @intel_hdmi_ddc_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @intel_hdmi_ddc_pin(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ddi_vbt_port_info*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %11, i64 %13
  store %struct.ddi_vbt_port_info* %14, %struct.ddi_vbt_port_info** %6, align 8
  %15 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %16 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %2
  %20 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %21 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @port_name(i32 %23)
  %25 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %24)
  %26 = load %struct.ddi_vbt_port_info*, %struct.ddi_vbt_port_info** %6, align 8
  %27 = getelementptr inbounds %struct.ddi_vbt_port_info, %struct.ddi_vbt_port_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %3, align 8
  br label %87

29:                                               ; preds = %2
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %31 = call i64 @HAS_PCH_MCC(%struct.drm_i915_private* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i64 @mcc_port_to_ddc_pin(%struct.drm_i915_private* %34, i32 %35)
  store i64 %36, i64* %7, align 8
  br label %81

37:                                               ; preds = %29
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %39 = call i64 @HAS_PCH_TGP(%struct.drm_i915_private* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %43 = call i64 @HAS_PCH_ICP(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @icl_port_to_ddc_pin(%struct.drm_i915_private* %46, i32 %47)
  store i64 %48, i64* %7, align 8
  br label %80

49:                                               ; preds = %41
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = call i64 @HAS_PCH_CNP(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i64 @cnp_port_to_ddc_pin(%struct.drm_i915_private* %54, i32 %55)
  store i64 %56, i64* %7, align 8
  br label %79

57:                                               ; preds = %49
  %58 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %59 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i64 @bxt_port_to_ddc_pin(%struct.drm_i915_private* %62, i32 %63)
  store i64 %64, i64* %7, align 8
  br label %78

65:                                               ; preds = %57
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i64 @chv_port_to_ddc_pin(%struct.drm_i915_private* %70, i32 %71)
  store i64 %72, i64* %7, align 8
  br label %77

73:                                               ; preds = %65
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @g4x_port_to_ddc_pin(%struct.drm_i915_private* %74, i32 %75)
  store i64 %76, i64* %7, align 8
  br label %77

77:                                               ; preds = %73, %69
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %45
  br label %81

81:                                               ; preds = %80, %33
  %82 = load i64, i64* %7, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @port_name(i32 %83)
  %85 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %82, i32 %84)
  %86 = load i64, i64* %7, align 8
  store i64 %86, i64* %3, align 8
  br label %87

87:                                               ; preds = %81, %19
  %88 = load i64, i64* %3, align 8
  ret i64 %88
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i64, i32) #1

declare dso_local i32 @port_name(i32) #1

declare dso_local i64 @HAS_PCH_MCC(%struct.drm_i915_private*) #1

declare dso_local i64 @mcc_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_TGP(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_ICP(%struct.drm_i915_private*) #1

declare dso_local i64 @icl_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @HAS_PCH_CNP(%struct.drm_i915_private*) #1

declare dso_local i64 @cnp_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i64 @bxt_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @chv_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

declare dso_local i64 @g4x_port_to_ddc_pin(%struct.drm_i915_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
