; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_i8xx_fbc_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_i8xx_fbc_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.intel_fbc_reg_params }
%struct.intel_fbc_reg_params = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@FBC_LL_SIZE = common dso_local global i32 0, align 4
@FBC_CTL_FENCE_DBL = common dso_local global i32 0, align 4
@FBC_CTL_IDLE_IMM = common dso_local global i32 0, align 4
@FBC_CTL_CPU_FENCE = common dso_local global i32 0, align 4
@FBC_CONTROL2 = common dso_local global i32 0, align 4
@FBC_FENCE_OFF = common dso_local global i32 0, align 4
@FBC_CONTROL = common dso_local global i32 0, align 4
@FBC_CTL_INTERVAL_SHIFT = common dso_local global i32 0, align 4
@FBC_CTL_EN = common dso_local global i32 0, align 4
@FBC_CTL_PERIODIC = common dso_local global i32 0, align 4
@FBC_CTL_C3_IDLE = common dso_local global i32 0, align 4
@FBC_CTL_STRIDE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @i8xx_fbc_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i8xx_fbc_activate(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc_reg_params*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %9 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.intel_fbc_reg_params* %10, %struct.intel_fbc_reg_params** %3, align 8
  %11 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %12 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FBC_LL_SIZE, align 4
  %15 = sdiv i32 %13, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %17 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %24 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %29 = call i64 @IS_GEN(%struct.drm_i915_private* %28, i32 2)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = sdiv i32 %32, 32
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* %4, align 4
  %37 = sdiv i32 %36, 64
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %31
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %50, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @FBC_LL_SIZE, align 4
  %43 = sdiv i32 %42, 32
  %44 = add nsw i32 %43, 1
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @FBC_TAG(i32 %47)
  %49 = call i32 @I915_WRITE(i32 %48, i32 0)
  br label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %40

53:                                               ; preds = %40
  %54 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %55 = call i64 @IS_GEN(%struct.drm_i915_private* %54, i32 4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32, i32* @FBC_CTL_FENCE_DBL, align 4
  %59 = load i32, i32* @FBC_CTL_IDLE_IMM, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @FBC_CTL_CPU_FENCE, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %64 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @FBC_CTL_PLANE(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @FBC_CONTROL2, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @I915_WRITE(i32 %70, i32 %71)
  %73 = load i32, i32* @FBC_FENCE_OFF, align 4
  %74 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %75 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @I915_WRITE(i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %57, %53
  %80 = load i32, i32* @FBC_CONTROL, align 4
  %81 = call i32 @I915_READ(i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @FBC_CTL_INTERVAL_SHIFT, align 4
  %83 = shl i32 16383, %82
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @FBC_CTL_EN, align 4
  %87 = load i32, i32* @FBC_CTL_PERIODIC, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %6, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %92 = call i64 @IS_I945GM(%struct.drm_i915_private* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %79
  %95 = load i32, i32* @FBC_CTL_C3_IDLE, align 4
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %79
  %99 = load i32, i32* %4, align 4
  %100 = and i32 %99, 255
  %101 = load i32, i32* @FBC_CTL_STRIDE_SHIFT, align 4
  %102 = shl i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %6, align 4
  %105 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %106 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load i32, i32* @FBC_CONTROL, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @I915_WRITE(i32 %114, i32 %115)
  ret void
}

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @FBC_TAG(i32) #1

declare dso_local i32 @FBC_CTL_PLANE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_I945GM(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
