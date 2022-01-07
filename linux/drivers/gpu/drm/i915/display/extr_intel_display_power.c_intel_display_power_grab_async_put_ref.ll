; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_grab_async_put_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_intel_display_power_grab_async_put_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32, %struct.i915_power_domains }
%struct.i915_power_domains = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @intel_display_power_grab_async_put_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_display_power_grab_async_put_ref(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i915_power_domains*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  store %struct.i915_power_domains* %8, %struct.i915_power_domains** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %10 = call i32 @async_put_domains_mask(%struct.i915_power_domains* %9)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @BIT_ULL(i32 %11)
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @async_put_domains_clear_domain(%struct.i915_power_domains* %17, i32 %18)
  store i32 1, i32* %6, align 4
  %20 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %21 = call i32 @async_put_domains_mask(%struct.i915_power_domains* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %34

24:                                               ; preds = %16
  %25 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %26 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %25, i32 0, i32 1
  %27 = call i32 @cancel_delayed_work(i32* %26)
  %28 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %29 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %28, i32 0, i32 0
  %30 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %31 = getelementptr inbounds %struct.i915_power_domains, %struct.i915_power_domains* %30, i32 0, i32 0
  %32 = call i32 @fetch_and_zero(i32* %31)
  %33 = call i32 @intel_runtime_pm_put_raw(i32* %29, i32 %32)
  br label %34

34:                                               ; preds = %24, %23, %15
  %35 = load %struct.i915_power_domains*, %struct.i915_power_domains** %5, align 8
  %36 = call i32 @verify_async_put_domains_state(%struct.i915_power_domains* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local i32 @async_put_domains_mask(%struct.i915_power_domains*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @async_put_domains_clear_domain(%struct.i915_power_domains*, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @intel_runtime_pm_put_raw(i32*, i32) #1

declare dso_local i32 @fetch_and_zero(i32*) #1

declare dso_local i32 @verify_async_put_domains_state(%struct.i915_power_domains*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
