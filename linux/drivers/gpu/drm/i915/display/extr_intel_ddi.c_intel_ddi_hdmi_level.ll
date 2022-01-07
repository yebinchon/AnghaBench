; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_hdmi_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_intel_ddi_hdmi_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@icl_mg_phy_ddi_translations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"ddi translation table missing\0A\00", align 1
@HDMI_LEVEL_SHIFT_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @intel_ddi_hdmi_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_ddi_hdmi_level(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @intel_port_to_phy(%struct.drm_i915_private* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %23 = call i32 @INTEL_GEN(%struct.drm_i915_private* %22)
  %24 = icmp sge i32 %23, 11
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i64 @intel_phy_is_combo(%struct.drm_i915_private* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %32 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %33 = call i32 @icl_get_combo_buf_trans(%struct.drm_i915_private* %31, i32 %32, i32 0, i32* %6)
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @icl_mg_phy_ddi_translations, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %86

40:                                               ; preds = %2
  %41 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %42 = call i64 @IS_CANNONLAKE(%struct.drm_i915_private* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %46 = call i32 @cnl_get_buf_trans_hdmi(%struct.drm_i915_private* %45, i32* %6)
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %85

49:                                               ; preds = %40
  %50 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %51 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %55 = call i32 @bxt_get_buf_trans_hdmi(%struct.drm_i915_private* %54, i32* %6)
  %56 = load i32, i32* %6, align 4
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %84

58:                                               ; preds = %49
  %59 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %60 = call i64 @IS_GEN9_BC(%struct.drm_i915_private* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %64 = call i32 @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %63, i32* %6)
  store i32 8, i32* %8, align 4
  br label %83

65:                                               ; preds = %58
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %67 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %71 = call i32 @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %70, i32* %6)
  store i32 7, i32* %8, align 4
  br label %82

72:                                               ; preds = %65
  %73 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %74 = call i64 @IS_HASWELL(%struct.drm_i915_private* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %78 = call i32 @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %77, i32* %6)
  store i32 6, i32* %8, align 4
  br label %81

79:                                               ; preds = %72
  %80 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %115

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %62
  br label %84

84:                                               ; preds = %83, %53
  br label %85

85:                                               ; preds = %84, %44
  br label %86

86:                                               ; preds = %85, %37
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @HDMI_LEVEL_SHIFT_UNKNOWN, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp sge i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90, %86
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i64 @WARN_ON_ONCE(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 0, i32* %3, align 4
  br label %115

103:                                              ; preds = %96
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %6, align 4
  %106 = icmp sge i32 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i64 @WARN_ON_ONCE(i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = load i32, i32* %6, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %110, %103
  %114 = load i32, i32* %7, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %102, %79
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @intel_port_to_phy(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @intel_phy_is_combo(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @icl_get_combo_buf_trans(%struct.drm_i915_private*, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i64 @IS_CANNONLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @cnl_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @bxt_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_GEN9_BC(%struct.drm_i915_private*) #1

declare dso_local i32 @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
