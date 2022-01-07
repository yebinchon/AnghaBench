; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.i915_power_well_regs* }
%struct.i915_power_well_regs = type { i32, i32 }

@SKL_DISP_PW_1 = common dso_local global i32 0, align 4
@SKL_DISP_PW_MISC_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, %struct.i915_power_well*)* @hsw_power_well_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_power_well_enabled(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca %struct.i915_power_well_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %10 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %11 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %14, align 8
  store %struct.i915_power_well_regs* %15, %struct.i915_power_well_regs** %5, align 8
  %16 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %17 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %22 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @HSW_PWR_WELL_CTL_REQ(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @HSW_PWR_WELL_CTL_STATE(i32 %29)
  %31 = or i32 %28, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %33 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @I915_READ(i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %37 = call i64 @IS_GEN(%struct.drm_i915_private* %36, i32 9)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %2
  %40 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %41 = call i32 @IS_GEN9_LP(%struct.drm_i915_private* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @SKL_DISP_PW_1, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @SKL_DISP_PW_MISC_IO, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47, %43
  %52 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %53 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @I915_READ(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %47, %39, %2
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %8, align 4
  %63 = icmp eq i32 %61, %62
  %64 = zext i1 %63 to i32
  ret i32 %64
}

declare dso_local i32 @HSW_PWR_WELL_CTL_REQ(i32) #1

declare dso_local i32 @HSW_PWR_WELL_CTL_STATE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i64 @IS_GEN(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @IS_GEN9_LP(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
