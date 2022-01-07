; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_wait_for_power_well_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_hsw_wait_for_power_well_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_power_well = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.i915_power_well_regs* }
%struct.i915_power_well_regs = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s forced on (bios:%d driver:%d kvmr:%d debug:%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_power_well*)* @hsw_wait_for_power_well_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsw_wait_for_power_well_disable(%struct.drm_i915_private* %0, %struct.i915_power_well* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_power_well*, align 8
  %5 = alloca %struct.i915_power_well_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_power_well* %1, %struct.i915_power_well** %4, align 8
  %9 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %10 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %13, align 8
  store %struct.i915_power_well_regs* %14, %struct.i915_power_well_regs** %5, align 8
  %15 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %16 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %22 = getelementptr inbounds %struct.i915_power_well_regs, %struct.i915_power_well_regs* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @I915_READ(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @HSW_PWR_WELL_CTL_STATE(i32 %25)
  %27 = and i32 %24, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %7, align 4
  br i1 %29, label %37, label %31

31:                                               ; preds = %2
  %32 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %33 = load %struct.i915_power_well_regs*, %struct.i915_power_well_regs** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hsw_power_well_requesters(%struct.drm_i915_private* %32, %struct.i915_power_well_regs* %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %31, %2
  %38 = phi i1 [ true, %2 ], [ %36, %31 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @wait_for(i32 %39, i32 1)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %75

44:                                               ; preds = %37
  %45 = load %struct.i915_power_well*, %struct.i915_power_well** %4, align 8
  %46 = getelementptr inbounds %struct.i915_power_well, %struct.i915_power_well* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, 1
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, 2
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, 8
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %55, i32 %61, i32 %67, i32 %73)
  br label %75

75:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @wait_for(i32, i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @HSW_PWR_WELL_CTL_STATE(i32) #1

declare dso_local i32 @hsw_power_well_requesters(%struct.drm_i915_private*, %struct.i915_power_well_regs*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
