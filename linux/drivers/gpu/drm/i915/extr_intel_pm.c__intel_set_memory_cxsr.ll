; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c__intel_set_memory_cxsr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c__intel_set_memory_cxsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@FW_BLC_SELF_VLV = common dso_local global i32 0, align 4
@FW_CSPWRDWNEN = common dso_local global i32 0, align 4
@FW_BLC_SELF = common dso_local global i32 0, align 4
@FW_BLC_SELF_EN = common dso_local global i32 0, align 4
@DSPFW3 = common dso_local global i32 0, align 4
@PINEVIEW_SELF_REFRESH_EN = common dso_local global i32 0, align 4
@INSTPM = common dso_local global i32 0, align 4
@INSTPM_SELF_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memory self-refresh is %s (was %s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @_intel_set_memory_cxsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_intel_set_memory_cxsr(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = call i64 @IS_VALLEYVIEW(%struct.drm_i915_private* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %13 = call i64 @IS_CHERRYVIEW(%struct.drm_i915_private* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %17 = call i32 @I915_READ(i32 %16)
  %18 = load i32, i32* @FW_CSPWRDWNEN, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @FW_CSPWRDWNEN, align 4
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = call i32 @I915_WRITE(i32 %20, i32 %27)
  %29 = load i32, i32* @FW_BLC_SELF_VLV, align 4
  %30 = call i32 @POSTING_READ(i32 %29)
  br label %139

31:                                               ; preds = %11
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %33 = call i64 @IS_G4X(%struct.drm_i915_private* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %37 = call i64 @IS_I965GM(%struct.drm_i915_private* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %35, %31
  %40 = load i32, i32* @FW_BLC_SELF, align 4
  %41 = call i32 @I915_READ(i32 %40)
  %42 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @FW_BLC_SELF, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @FW_BLC_SELF_EN, align 4
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %47
  %51 = phi i32 [ %48, %47 ], [ 0, %49 ]
  %52 = call i32 @I915_WRITE(i32 %44, i32 %51)
  %53 = load i32, i32* @FW_BLC_SELF, align 4
  %54 = call i32 @POSTING_READ(i32 %53)
  br label %138

55:                                               ; preds = %35
  %56 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %57 = call i64 @IS_PINEVIEW(%struct.drm_i915_private* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %55
  %60 = load i32, i32* @DSPFW3, align 4
  %61 = call i32 @I915_READ(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @PINEVIEW_SELF_REFRESH_EN, align 4
  %64 = and i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %59
  %68 = load i32, i32* @PINEVIEW_SELF_REFRESH_EN, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  br label %76

71:                                               ; preds = %59
  %72 = load i32, i32* @PINEVIEW_SELF_REFRESH_EN, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %71, %67
  %77 = load i32, i32* @DSPFW3, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @I915_WRITE(i32 %77, i32 %78)
  %80 = load i32, i32* @DSPFW3, align 4
  %81 = call i32 @POSTING_READ(i32 %80)
  br label %137

82:                                               ; preds = %55
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %84 = call i64 @IS_I945G(%struct.drm_i915_private* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %88 = call i64 @IS_I945GM(%struct.drm_i915_private* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %110

90:                                               ; preds = %86, %82
  %91 = load i32, i32* @FW_BLC_SELF, align 4
  %92 = call i32 @I915_READ(i32 %91)
  %93 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %99 = call i32 @_MASKED_BIT_ENABLE(i32 %98)
  br label %103

100:                                              ; preds = %90
  %101 = load i32, i32* @FW_BLC_SELF_EN, align 4
  %102 = call i32 @_MASKED_BIT_DISABLE(i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  %104 = phi i32 [ %99, %97 ], [ %102, %100 ]
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* @FW_BLC_SELF, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @I915_WRITE(i32 %105, i32 %106)
  %108 = load i32, i32* @FW_BLC_SELF, align 4
  %109 = call i32 @POSTING_READ(i32 %108)
  br label %136

110:                                              ; preds = %86
  %111 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %112 = call i64 @IS_I915GM(%struct.drm_i915_private* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load i32, i32* @INSTPM, align 4
  %116 = call i32 @I915_READ(i32 %115)
  %117 = load i32, i32* @INSTPM_SELF_EN, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %114
  %122 = load i32, i32* @INSTPM_SELF_EN, align 4
  %123 = call i32 @_MASKED_BIT_ENABLE(i32 %122)
  br label %127

124:                                              ; preds = %114
  %125 = load i32, i32* @INSTPM_SELF_EN, align 4
  %126 = call i32 @_MASKED_BIT_DISABLE(i32 %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = phi i32 [ %123, %121 ], [ %126, %124 ]
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* @INSTPM, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @I915_WRITE(i32 %129, i32 %130)
  %132 = load i32, i32* @INSTPM, align 4
  %133 = call i32 @POSTING_READ(i32 %132)
  br label %135

134:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %150

135:                                              ; preds = %127
  br label %136

136:                                              ; preds = %135, %103
  br label %137

137:                                              ; preds = %136, %76
  br label %138

138:                                              ; preds = %137, %50
  br label %139

139:                                              ; preds = %138, %26
  %140 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %5, align 4
  %143 = call i32 @trace_intel_memory_cxsr(%struct.drm_i915_private* %140, i32 %141, i32 %142)
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @enableddisabled(i32 %144)
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @enableddisabled(i32 %146)
  %148 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %145, i32 %147)
  %149 = load i32, i32* %6, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %139, %134
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @IS_VALLEYVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_CHERRYVIEW(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

declare dso_local i64 @IS_G4X(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I965GM(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_PINEVIEW(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945G(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

declare dso_local i32 @_MASKED_BIT_ENABLE(i32) #1

declare dso_local i32 @_MASKED_BIT_DISABLE(i32) #1

declare dso_local i64 @IS_I915GM(%struct.drm_i915_private*) #1

declare dso_local i32 @trace_intel_memory_cxsr(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32) #1

declare dso_local i32 @enableddisabled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
