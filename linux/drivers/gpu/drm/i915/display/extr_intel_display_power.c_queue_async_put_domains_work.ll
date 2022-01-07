; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_queue_async_put_domains_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_queue_async_put_domains_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i915_power_domains = type { i32, i32 }

@system_unbound_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i915_power_domains*, i32)* @queue_async_put_domains_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_async_put_domains_work(%struct.i915_power_domains* %0, i32 %1) #0 {
  %3 = alloca %struct.i915_power_domains*, align 8
  %4 = alloca i32, align 4
  store %struct.i915_power_domains* %0, %struct.i915_power_domains** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %6 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @WARN_ON(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %11 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @system_unbound_wq, align 4
  %13 = load %struct.i915_power_domains*, %struct.i915_power_domains** %3, align 8
  %14 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %13, i32 0, i32 1
  %15 = call i32 @msecs_to_jiffies(i32 100)
  %16 = call i32 @queue_delayed_work(i32 %12, i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
