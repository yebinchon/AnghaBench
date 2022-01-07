; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_ddi_set_iboost.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_skl_ddi_set_iboost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_encoder = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.intel_digital_port = type { i32 }
%struct.drm_i915_private = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ddi_buf_trans = type { i32 }

@INTEL_OUTPUT_HDMI = common dso_local global i32 0, align 4
@INTEL_OUTPUT_EDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid I_boost value %u\0A\00", align 1
@PORT_A = common dso_local global i32 0, align 4
@PORT_E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_encoder*, i32, i32)* @skl_ddi_set_iboost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_ddi_set_iboost(%struct.intel_encoder* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_encoder*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intel_digital_port*, align 8
  %8 = alloca %struct.drm_i915_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ddi_buf_trans*, align 8
  %12 = alloca i32, align 4
  store %struct.intel_encoder* %0, %struct.intel_encoder** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %14 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %13, i32 0, i32 1
  %15 = call %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_6__* %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %7, align 8
  %16 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %17 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.drm_i915_private* @to_i915(i32 %19)
  store %struct.drm_i915_private* %20, %struct.drm_i915_private** %8, align 8
  %21 = load %struct.intel_encoder*, %struct.intel_encoder** %4, align 8
  %22 = getelementptr inbounds %struct.intel_encoder, %struct.intel_encoder* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %3
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  br label %47

37:                                               ; preds = %3
  %38 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %39 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %9, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %37, %27
  %48 = load i32, i32* %10, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %95

50:                                               ; preds = %47
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @INTEL_OUTPUT_HDMI, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %56 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private* %55, i32* %12)
  store %struct.ddi_buf_trans* %56, %struct.ddi_buf_trans** %11, align 8
  br label %70

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @INTEL_OUTPUT_EDP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private* %62, i32 %63, i32* %12)
  store %struct.ddi_buf_trans* %64, %struct.ddi_buf_trans** %11, align 8
  br label %69

65:                                               ; preds = %57
  %66 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private* %66, i32 %67, i32* %12)
  store %struct.ddi_buf_trans* %68, %struct.ddi_buf_trans** %11, align 8
  br label %69

69:                                               ; preds = %65, %61
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %11, align 8
  %72 = icmp ne %struct.ddi_buf_trans* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i64 @WARN_ON_ONCE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %128

78:                                               ; preds = %70
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp sge i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON_ONCE(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %85, %78
  %89 = load %struct.ddi_buf_trans*, %struct.ddi_buf_trans** %11, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %89, i64 %91
  %93 = getelementptr inbounds %struct.ddi_buf_trans, %struct.ddi_buf_trans* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %88, %47
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 3
  br i1 %103, label %104, label %110

104:                                              ; preds = %101
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 7
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %108)
  br label %128

110:                                              ; preds = %104, %101, %98, %95
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @_skl_ddi_set_iboost(%struct.drm_i915_private* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @PORT_A, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %110
  %119 = load %struct.intel_digital_port*, %struct.intel_digital_port** %7, align 8
  %120 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 4
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.drm_i915_private*, %struct.drm_i915_private** %8, align 8
  %125 = load i32, i32* @PORT_E, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @_skl_ddi_set_iboost(%struct.drm_i915_private* %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %77, %107, %123, %118, %110
  ret void
}

declare dso_local %struct.intel_digital_port* @enc_to_dig_port(%struct.TYPE_6__*) #1

declare dso_local %struct.drm_i915_private* @to_i915(i32) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_hdmi(%struct.drm_i915_private*, i32*) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_edp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local %struct.ddi_buf_trans* @intel_ddi_get_buf_trans_dp(%struct.drm_i915_private*, i32, i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

declare dso_local i32 @_skl_ddi_set_iboost(%struct.drm_i915_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
