; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_chv_set_memory_dvfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_chv_set_memory_dvfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PUNIT_REG_DDR_SETUP2 = common dso_local global i32 0, align 4
@FORCE_DDR_HIGH_FREQ = common dso_local global i32 0, align 4
@FORCE_DDR_LOW_FREQ = common dso_local global i32 0, align 4
@FORCE_DDR_FREQ_REQ_ACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"timed out waiting for Punit DDR DVFS request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32)* @chv_set_memory_dvfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @chv_set_memory_dvfs(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i32 @vlv_punit_get(%struct.drm_i915_private* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %9 = load i32, i32* @PUNIT_REG_DDR_SETUP2, align 4
  %10 = call i32 @vlv_punit_read(%struct.drm_i915_private* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @FORCE_DDR_HIGH_FREQ, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @FORCE_DDR_HIGH_FREQ, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* @FORCE_DDR_LOW_FREQ, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @FORCE_DDR_FREQ_REQ_ACK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = load i32, i32* @PUNIT_REG_DDR_SETUP2, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @vlv_punit_write(%struct.drm_i915_private* %30, i32 %31, i32 %32)
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = load i32, i32* @PUNIT_REG_DDR_SETUP2, align 4
  %36 = call i32 @vlv_punit_read(%struct.drm_i915_private* %34, i32 %35)
  %37 = load i32, i32* @FORCE_DDR_FREQ_REQ_ACK, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @wait_for(i32 %40, i32 3)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %22
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %47 = call i32 @vlv_punit_put(%struct.drm_i915_private* %46)
  ret void
}

declare dso_local i32 @vlv_punit_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_punit_read(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @vlv_punit_write(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i64 @wait_for(i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @vlv_punit_put(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
