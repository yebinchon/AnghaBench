; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_sync_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_power_well_sync_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.i915_power_well_regs* }
%struct.i915_power_well_regs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @hsw_power_well_sync_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_power_well_sync_hw(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %14, align 8
  store %struct.i915_power_well_regs* %15, %struct.i915_power_well_regs** %5, align 8
  %16 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %17 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @HSW_PWR_WELL_CTL_REQ(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %25 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @I915_READ(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %58

32:                                               ; preds = %2
  %33 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %34 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @I915_READ(i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %32
  %42 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %43 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @I915_WRITE(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %32
  %50 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %51 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %53, %55
  %57 = call i32 @I915_WRITE(i32 %52, i32 %56)
  br label %58

58:                                               ; preds = %49, %2
  ret void
}

declare dso_local i32 @HSW_PWR_WELL_CTL_REQ(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
