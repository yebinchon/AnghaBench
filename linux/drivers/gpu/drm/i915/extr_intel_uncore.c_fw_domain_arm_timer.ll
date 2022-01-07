; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_arm_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_fw_domain_arm_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_forcewake_domain = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore_forcewake_domain*)* @fw_domain_arm_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_domain_arm_timer(%struct.intel_uncore_forcewake_domain* %0) #0 {
  %2 = alloca %struct.intel_uncore_forcewake_domain*, align 8
  store %struct.intel_uncore_forcewake_domain* %0, %struct.intel_uncore_forcewake_domain** %2, align 8
  %3 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %4 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %9 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %7, %10
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %14 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %17 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %15
  store i32 %21, i32* %19, align 4
  %22 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %23 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load %struct.intel_uncore_forcewake_domain*, %struct.intel_uncore_forcewake_domain** %2, align 8
  %27 = getelementptr inbounds %struct.intel_uncore_forcewake_domain, %struct.intel_uncore_forcewake_domain* %26, i32 0, i32 1
  %28 = load i32, i32* @NSEC_PER_MSEC, align 4
  %29 = load i32, i32* @NSEC_PER_MSEC, align 4
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_start_range_ns(i32* %27, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @hrtimer_start_range_ns(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
