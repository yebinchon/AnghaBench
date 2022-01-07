; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_ilk_fbc_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_ilk_fbc_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.intel_fbc_reg_params }
%struct.intel_fbc_reg_params = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }

@DPFC_CTL_LIMIT_4X = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_2X = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_1X = common dso_local global i32 0, align 4
@PLANE_HAS_FENCE = common dso_local global i32 0, align 4
@DPFC_CTL_FENCE_EN = common dso_local global i32 0, align 4
@SNB_DPFC_CTL_SA = common dso_local global i32 0, align 4
@SNB_CPU_FENCE_ENABLE = common dso_local global i32 0, align 4
@DPFC_CPU_FENCE_OFFSET = common dso_local global i32 0, align 4
@ILK_DPFC_FENCE_YOFF = common dso_local global i32 0, align 4
@ILK_FBC_RT_BASE = common dso_local global i32 0, align 4
@ILK_FBC_RT_VALID = common dso_local global i32 0, align 4
@ILK_DPFC_CONTROL = common dso_local global i32 0, align 4
@DPFC_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ilk_fbc_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilk_fbc_activate(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc_reg_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %7 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store %struct.intel_fbc_reg_params* %8, %struct.intel_fbc_reg_params** %3, align 8
  %9 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %10 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %14 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DPFC_CTL_PLANE(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %19 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %5, align 4
  switch i32 %31, label %44 [
    i32 4, label %32
    i32 3, label %32
    i32 2, label %36
    i32 1, label %40
  ]

32:                                               ; preds = %30, %30
  %33 = load i32, i32* @DPFC_CTL_LIMIT_4X, align 4
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %44

36:                                               ; preds = %30
  %37 = load i32, i32* @DPFC_CTL_LIMIT_2X, align 4
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @DPFC_CTL_LIMIT_1X, align 4
  %42 = load i32, i32* %4, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %30, %40, %36, %32
  %45 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %46 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %91

51:                                               ; preds = %44
  %52 = load i32, i32* @DPFC_CTL_FENCE_EN, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %56 = call i64 @IS_GEN(%struct.drm_i915_private* %55, i32 5)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %51
  %59 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %60 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %58, %51
  %69 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %70 = call i64 @IS_GEN(%struct.drm_i915_private* %69, i32 6)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* @SNB_DPFC_CTL_SA, align 4
  %74 = load i32, i32* @SNB_CPU_FENCE_ENABLE, align 4
  %75 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %76 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %74, %81
  %83 = call i32 @I915_WRITE(i32 %73, i32 %82)
  %84 = load i32, i32* @DPFC_CPU_FENCE_OFFSET, align 4
  %85 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %86 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @I915_WRITE(i32 %84, i32 %88)
  br label %90

90:                                               ; preds = %72, %68
  br label %101

91:                                               ; preds = %44
  %92 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %93 = call i64 @IS_GEN(%struct.drm_i915_private* %92, i32 6)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %91
  %96 = load i32, i32* @SNB_DPFC_CTL_SA, align 4
  %97 = call i32 @I915_WRITE(i32 %96, i32 0)
  %98 = load i32, i32* @DPFC_CPU_FENCE_OFFSET, align 4
  %99 = call i32 @I915_WRITE(i32 %98, i32 0)
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %90
  %102 = load i32, i32* @ILK_DPFC_FENCE_YOFF, align 4
  %103 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %104 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @I915_WRITE(i32 %102, i32 %106)
  %108 = load i32, i32* @ILK_FBC_RT_BASE, align 4
  %109 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %110 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %109, i32 0, i32 1
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = call i32 @i915_ggtt_offset(%struct.TYPE_12__* %111)
  %113 = load i32, i32* @ILK_FBC_RT_VALID, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @I915_WRITE(i32 %108, i32 %114)
  %116 = load i32, i32* @ILK_DPFC_CONTROL, align 4
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @DPFC_CTL_EN, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @I915_WRITE(i32 %116, i32 %119)
  %121 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %122 = call i32 @intel_fbc_recompress(%struct.drm_i915_private* %121)
  ret void
}

declare dso_local i32 @DPFC_CTL_PLANE(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @i915_ggtt_offset(%struct.TYPE_12__*) #1

declare dso_local i32 @intel_fbc_recompress(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
