; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_g4x_fbc_activate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_fbc.c_g4x_fbc_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.intel_fbc_reg_params }
%struct.intel_fbc_reg_params = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32* }

@DPFC_SR_EN = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_2X = common dso_local global i32 0, align 4
@DPFC_CTL_LIMIT_1X = common dso_local global i32 0, align 4
@PLANE_HAS_FENCE = common dso_local global i32 0, align 4
@DPFC_CTL_FENCE_EN = common dso_local global i32 0, align 4
@DPFC_FENCE_YOFF = common dso_local global i32 0, align 4
@DPFC_CONTROL = common dso_local global i32 0, align 4
@DPFC_CTL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @g4x_fbc_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g4x_fbc_activate(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_fbc_reg_params*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store %struct.intel_fbc_reg_params* %7, %struct.intel_fbc_reg_params** %3, align 8
  %8 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %9 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DPFC_CTL_PLANE(i32 %11)
  %13 = load i32, i32* @DPFC_SR_EN, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %16 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @DPFC_CTL_LIMIT_2X, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @DPFC_CTL_LIMIT_1X, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %34 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PLANE_HAS_FENCE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %57

39:                                               ; preds = %32
  %40 = load i32, i32* @DPFC_CTL_FENCE_EN, align 4
  %41 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %42 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %41, i32 0, i32 2
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %40, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* @DPFC_FENCE_YOFF, align 4
  %52 = load %struct.intel_fbc_reg_params*, %struct.intel_fbc_reg_params** %3, align 8
  %53 = getelementptr inbounds %struct.intel_fbc_reg_params, %struct.intel_fbc_reg_params* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @I915_WRITE(i32 %51, i32 %55)
  br label %60

57:                                               ; preds = %32
  %58 = load i32, i32* @DPFC_FENCE_YOFF, align 4
  %59 = call i32 @I915_WRITE(i32 %58, i32 0)
  br label %60

60:                                               ; preds = %57, %39
  %61 = load i32, i32* @DPFC_CONTROL, align 4
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @DPFC_CTL_EN, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @I915_WRITE(i32 %61, i32 %64)
  ret void
}

declare dso_local i32 @DPFC_CTL_PLANE(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
