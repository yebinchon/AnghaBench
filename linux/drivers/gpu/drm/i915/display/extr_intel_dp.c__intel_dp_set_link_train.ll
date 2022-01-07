; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c__intel_dp_set_link_train.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dp.c__intel_dp_set_link_train.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_dp = type { i32 }
%struct.drm_i915_private = type { i32 }
%struct.intel_digital_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Using DP training pattern TPS%d\0A\00", align 1
@DP_LINK_SCRAMBLING_DISABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_SCRAMBLE_DISABLE = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_NORMAL = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT1 = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT2 = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT3 = common dso_local global i32 0, align 4
@DP_TP_CTL_LINK_TRAIN_PAT4 = common dso_local global i32 0, align 4
@PORT_A = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_MASK_CPT = common dso_local global i32 0, align 4
@DP_TRAINING_PATTERN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1_CPT = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_2_CPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"TPS3 not supported, using TPS2 instead\0A\00", align 1
@DP_LINK_TRAIN_MASK = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_OFF = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_1 = common dso_local global i32 0, align 4
@DP_LINK_TRAIN_PAT_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_dp*, i32*, i32)* @_intel_dp_set_link_train to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_intel_dp_set_link_train(%struct.intel_dp* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.intel_dp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_i915_private*, align 8
  %8 = alloca %struct.intel_digital_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.intel_dp* %0, %struct.intel_dp** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %13 = call %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp* %12)
  store %struct.drm_i915_private* %13, %struct.drm_i915_private** %7, align 8
  %14 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %15 = call %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp* %14)
  store %struct.intel_digital_port* %15, %struct.intel_digital_port** %8, align 8
  %16 = load %struct.intel_digital_port*, %struct.intel_digital_port** %8, align 8
  %17 = getelementptr inbounds %struct.intel_digital_port, %struct.intel_digital_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.intel_dp*, %struct.intel_dp** %4, align 8
  %21 = getelementptr inbounds %struct.intel_dp, %struct.intel_dp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @drm_dp_training_pattern_mask(i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %10, align 4
  %31 = and i32 %29, %30
  %32 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %35 = call i64 @HAS_DDI(%struct.drm_i915_private* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @DP_TP_CTL(i32 %38)
  %40 = call i32 @I915_READ(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @DP_LINK_SCRAMBLING_DISABLE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %54

49:                                               ; preds = %37
  %50 = load i32, i32* @DP_TP_CTL_SCRAMBLE_DISABLE, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %11, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %59, %60
  switch i32 %61, label %82 [
    i32 128, label %62
    i32 132, label %66
    i32 131, label %70
    i32 130, label %74
    i32 129, label %78
  ]

62:                                               ; preds = %54
  %63 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_NORMAL, align 4
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %82

66:                                               ; preds = %54
  %67 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT1, align 4
  %68 = load i32, i32* %11, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %11, align 4
  br label %82

70:                                               ; preds = %54
  %71 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT2, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %82

74:                                               ; preds = %54
  %75 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT3, align 4
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  br label %82

78:                                               ; preds = %54
  %79 = load i32, i32* @DP_TP_CTL_LINK_TRAIN_PAT4, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %54, %78, %74, %70, %66, %62
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @DP_TP_CTL(i32 %83)
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @I915_WRITE(i32 %84, i32 %85)
  br label %166

87:                                               ; preds = %33
  %88 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %89 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @PORT_A, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %103, label %95

95:                                               ; preds = %91, %87
  %96 = load %struct.drm_i915_private*, %struct.drm_i915_private** %7, align 8
  %97 = call i64 @HAS_PCH_CPT(%struct.drm_i915_private* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %134

99:                                               ; preds = %95
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @PORT_A, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %134

103:                                              ; preds = %99, %91
  %104 = load i32, i32* @DP_LINK_TRAIN_MASK_CPT, align 4
  %105 = xor i32 %104, -1
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %106, align 4
  %108 = and i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %111 = and i32 %109, %110
  switch i32 %111, label %133 [
    i32 128, label %112
    i32 132, label %117
    i32 131, label %122
    i32 130, label %127
  ]

112:                                              ; preds = %103
  %113 = load i32, i32* @DP_LINK_TRAIN_OFF_CPT, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  br label %133

117:                                              ; preds = %103
  %118 = load i32, i32* @DP_LINK_TRAIN_PAT_1_CPT, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %118
  store i32 %121, i32* %119, align 4
  br label %133

122:                                              ; preds = %103
  %123 = load i32, i32* @DP_LINK_TRAIN_PAT_2_CPT, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %123
  store i32 %126, i32* %124, align 4
  br label %133

127:                                              ; preds = %103
  %128 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %129 = load i32, i32* @DP_LINK_TRAIN_PAT_2_CPT, align 4
  %130 = load i32*, i32** %5, align 8
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %129
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %103, %127, %122, %117, %112
  br label %165

134:                                              ; preds = %99, %95
  %135 = load i32, i32* @DP_LINK_TRAIN_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, %136
  store i32 %139, i32* %137, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @DP_TRAINING_PATTERN_MASK, align 4
  %142 = and i32 %140, %141
  switch i32 %142, label %164 [
    i32 128, label %143
    i32 132, label %148
    i32 131, label %153
    i32 130, label %158
  ]

143:                                              ; preds = %134
  %144 = load i32, i32* @DP_LINK_TRAIN_OFF, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %144
  store i32 %147, i32* %145, align 4
  br label %164

148:                                              ; preds = %134
  %149 = load i32, i32* @DP_LINK_TRAIN_PAT_1, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %149
  store i32 %152, i32* %150, align 4
  br label %164

153:                                              ; preds = %134
  %154 = load i32, i32* @DP_LINK_TRAIN_PAT_2, align 4
  %155 = load i32*, i32** %5, align 8
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %154
  store i32 %157, i32* %155, align 4
  br label %164

158:                                              ; preds = %134
  %159 = call i32 (i8*, ...) @DRM_DEBUG_KMS(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %160 = load i32, i32* @DP_LINK_TRAIN_PAT_2, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %160
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %134, %158, %153, %148, %143
  br label %165

165:                                              ; preds = %164, %133
  br label %166

166:                                              ; preds = %165, %82
  ret void
}

declare dso_local %struct.drm_i915_private* @dp_to_i915(%struct.intel_dp*) #1

declare dso_local %struct.intel_digital_port* @dp_to_dig_port(%struct.intel_dp*) #1

declare dso_local i32 @drm_dp_training_pattern_mask(i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, ...) #1

declare dso_local i64 @HAS_DDI(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DP_TP_CTL(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i64 @HAS_PCH_CPT(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
