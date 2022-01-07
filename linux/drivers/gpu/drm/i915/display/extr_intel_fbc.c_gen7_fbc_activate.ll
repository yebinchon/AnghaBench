; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_gen7_fbc_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_gen7_fbc_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, %struct.intel_fbc_reg_params }
%struct.intel_fbc_reg_params = type { i32, i32, %struct.TYPE_12__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@CHICKEN_MISC_4 = common dso_local global i32 0, align 4
@FBC_STRIDE_OVERRIDE = common dso_local global i32 0, align 4
@FBC_STRIDE_MASK = common dso_local global i32 0, align 4
@I915_TILING_X = common dso_local global i64 0, align 8
@DPFC_CTL_LIMIT_4X = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_2X = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_1X = common dso_local global i32 0, align 4
@PLANE_HAS_FENCE = common dso_local global i32 0, align 4
@IVB_DPFC_CTL_FENCE_EN = common dso_local global i32 0, align 4
@SNB_DPFC_CTL_SA = common dso_local global i32 0, align 4
@SNB_CPU_FENCE_ENABLE = common dso_local global i32 0, align 4
@DPFC_CPU_FENCE_OFFSET = common dso_local global i32 0, align 4
@FBC_CTL_FALSE_COLOR = common dso_local global i32 0, align 4
@ILK_DISPLAY_CHICKEN1 = common dso_local global i32 0, align 4
@ILK_FBCQ_DIS = common dso_local global i32 0, align 4
@HSW_FBCQ_DIS = common dso_local global i32 0, align 4
@ILK_DPFC_CHICKEN = common dso_local global i32 0, align 4
@ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL = common dso_local global i32 0, align 4
@ILK_DPFC_CONTROL = common dso_local global i32 0, align 4
@DPFC_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @gen7_fbc_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen7_fbc_activate(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc_reg_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  store %struct.intel_fbc_reg_params* %9, %struct.intel_fbc_reg_params** %3, align 8
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %11 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %15 = call i64 @IS_GEN(%struct.drm_i915_private* %14, i32 9)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %19 = call i32 @IS_GEMINILAKE(%struct.drm_i915_private* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %50, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @CHICKEN_MISC_4, align 4
  %23 = call i32 @I915_READ(i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @FBC_STRIDE_OVERRIDE, align 4
  %25 = load i32, i32* @FBC_STRIDE_MASK, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %31 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %30, i32 0, i32 3
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @i915_gem_object_get_tiling(i32 %34)
  %36 = load i64, i64* @I915_TILING_X, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %21
  %39 = load i32, i32* @FBC_STRIDE_OVERRIDE, align 4
  %40 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %41 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %39, %42
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %38, %21
  %47 = load i32, i32* @CHICKEN_MISC_4, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @I915_WRITE(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %17, %1
  store i32 0, i32* %4, align 4
  %51 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %52 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %56 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @IVB_DPFC_CTL_PLANE(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %54, %50
  %63 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %64 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %75

72:                                               ; preds = %62
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %72, %62
  %76 = load i32, i32* %5, align 4
  switch i32 %76, label %89 [
    i32 4, label %77
    i32 3, label %77
    i32 2, label %81
    i32 1, label %85
  ]

77:                                               ; preds = %75, %75
  %78 = load i32, i32* @DPFC_CTL_LIMIT_4X, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %89

81:                                               ; preds = %75
  %82 = load i32, i32* @DPFC_CTL_LIMIT_2X, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load i32, i32* @DPFC_CTL_LIMIT_1X, align 4
  %87 = load i32, i32* %4, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %75, %85, %81, %77
  %90 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %91 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %117

96:                                               ; preds = %89
  %97 = load i32, i32* @IVB_DPFC_CTL_FENCE_EN, align 4
  %98 = load i32, i32* %4, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %4, align 4
  %100 = load i32, i32* @SNB_DPFC_CTL_SA, align 4
  %101 = load i32, i32* @SNB_CPU_FENCE_ENABLE, align 4
  %102 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %103 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %102, i32 0, i32 3
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %101, %108
  %110 = call i32 @I915_WRITE(i32 %100, i32 %109)
  %111 = load i32, i32* @DPFC_CPU_FENCE_OFFSET, align 4
  %112 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %113 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @I915_WRITE(i32 %111, i32 %115)
  br label %122

117:                                              ; preds = %89
  %118 = load i32, i32* @SNB_DPFC_CTL_SA, align 4
  %119 = call i32 @I915_WRITE(i32 %118, i32 0)
  %120 = load i32, i32* @DPFC_CPU_FENCE_OFFSET, align 4
  %121 = call i32 @I915_WRITE(i32 %120, i32 0)
  br label %122

122:                                              ; preds = %117, %96
  %123 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %124 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %122
  %129 = load i32, i32* @FBC_CTL_FALSE_COLOR, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %122
  %133 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %134 = call i64 @IS_IVYBRIDGE(%struct.drm_i915_private* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %132
  %137 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %138 = load i32, i32* @ILK_DISPLAY_CHICKEN1, align 4
  %139 = call i32 @I915_READ(i32 %138)
  %140 = load i32, i32* @ILK_FBCQ_DIS, align 4
  %141 = or i32 %139, %140
  %142 = call i32 @I915_WRITE(i32 %137, i32 %141)
  br label %167

143:                                              ; preds = %132
  %144 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %145 = call i64 @IS_HASWELL(%struct.drm_i915_private* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %143
  %148 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %149 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %166

151:                                              ; preds = %147, %143
  %152 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %153 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @CHICKEN_PIPESL_1(i32 %155)
  %157 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %158 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @CHICKEN_PIPESL_1(i32 %160)
  %162 = call i32 @I915_READ(i32 %161)
  %163 = load i32, i32* @HSW_FBCQ_DIS, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @I915_WRITE(i32 %156, i32 %164)
  br label %166

166:                                              ; preds = %151, %147
  br label %167

167:                                              ; preds = %166, %136
  %168 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %169 = call i64 @IS_GEN(%struct.drm_i915_private* %168, i32 11)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load i32, i32* @ILK_DPFC_CHICKEN, align 4
  %173 = load i32, i32* @ILK_DPFC_CHICKEN_COMP_DUMMY_PIXEL, align 4
  %174 = call i32 @I915_WRITE(i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %167
  %176 = load i32, i32* @ILK_DPFC_CONTROL, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* @DPFC_CTL_EN, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @I915_WRITE(i32 %176, i32 %179)
  %181 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %182 = call i32 @intel_fbc_recompress(%struct.drm_i915_private* %181)
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_GEMINILAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @i915_gem_object_get_tiling(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i64 @IS_IVYBRIDGE(%struct.drm_i915_private*) #1

declare dso_local i32 @IVB_DPFC_CTL_PLANE(i32) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @CHICKEN_PIPESL_1(i32) #1

declare dso_local i32 @intel_fbc_recompress(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
