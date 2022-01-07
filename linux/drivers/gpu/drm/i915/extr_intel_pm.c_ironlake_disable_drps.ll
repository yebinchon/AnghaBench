; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_drps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_ironlake_disable_drps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__, %struct.intel_uncore }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore = type { i32 }

@mchdev_lock = common dso_local global i32 0, align 4
@MEMSWCTL = common dso_local global i32 0, align 4
@MEMINTREN = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG_EN = common dso_local global i32 0, align 4
@MEMINTRSTS = common dso_local global i32 0, align 4
@MEMINT_EVAL_CHG = common dso_local global i32 0, align 4
@DEIER = common dso_local global i32 0, align 4
@DE_PCU_EVENT = common dso_local global i32 0, align 4
@DEIIR = common dso_local global i32 0, align 4
@DEIMR = common dso_local global i32 0, align 4
@MEMCTL_CMD_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*)* @ironlake_disable_drps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ironlake_disable_drps(%struct.drm_i915_private* %0) #0 {
  %2 = alloca %struct.drm_i915_private*, align 8
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %2, align 8
  %5 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %6 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %5, i32 0, i32 1
  store %struct.intel_uncore* %6, %struct.intel_uncore** %3, align 8
  %7 = call i32 @spin_lock_irq(i32* @mchdev_lock)
  %8 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %9 = load i32, i32* @MEMSWCTL, align 4
  %10 = call i32 @intel_uncore_read16(%struct.intel_uncore* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %12 = load i32, i32* @MEMINTREN, align 4
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = load i32, i32* @MEMINTREN, align 4
  %15 = call i32 @intel_uncore_read(%struct.intel_uncore* %13, i32 %14)
  %16 = load i32, i32* @MEMINT_EVAL_CHG_EN, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @intel_uncore_write(%struct.intel_uncore* %11, i32 %12, i32 %18)
  %20 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %21 = load i32, i32* @MEMINTRSTS, align 4
  %22 = load i32, i32* @MEMINT_EVAL_CHG, align 4
  %23 = call i32 @intel_uncore_write(%struct.intel_uncore* %20, i32 %21, i32 %22)
  %24 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %25 = load i32, i32* @DEIER, align 4
  %26 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %27 = load i32, i32* @DEIER, align 4
  %28 = call i32 @intel_uncore_read(%struct.intel_uncore* %26, i32 %27)
  %29 = load i32, i32* @DE_PCU_EVENT, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  %32 = call i32 @intel_uncore_write(%struct.intel_uncore* %24, i32 %25, i32 %31)
  %33 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %34 = load i32, i32* @DEIIR, align 4
  %35 = load i32, i32* @DE_PCU_EVENT, align 4
  %36 = call i32 @intel_uncore_write(%struct.intel_uncore* %33, i32 %34, i32 %35)
  %37 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %38 = load i32, i32* @DEIMR, align 4
  %39 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %40 = load i32, i32* @DEIMR, align 4
  %41 = call i32 @intel_uncore_read(%struct.intel_uncore* %39, i32 %40)
  %42 = load i32, i32* @DE_PCU_EVENT, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @intel_uncore_write(%struct.intel_uncore* %37, i32 %38, i32 %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %46 = load %struct.drm_i915_private*, %struct.drm_i915_private** %2, align 8
  %47 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ironlake_set_drps(%struct.drm_i915_private* %45, i32 %49)
  %51 = call i32 @mdelay(i32 1)
  %52 = load i32, i32* @MEMCTL_CMD_STS, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %56 = load i32, i32* @MEMSWCTL, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @intel_uncore_write(%struct.intel_uncore* %55, i32 %56, i32 %57)
  %59 = call i32 @mdelay(i32 1)
  %60 = call i32 @spin_unlock_irq(i32* @mchdev_lock)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @intel_uncore_read16(%struct.intel_uncore*, i32) #1

declare dso_local i32 @intel_uncore_write(%struct.intel_uncore*, i32, i32) #1

declare dso_local i32 @intel_uncore_read(%struct.intel_uncore*, i32) #1

declare dso_local i32 @ironlake_set_drps(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
