; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_put_oa_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_perf.c_put_oa_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.i915_oa_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.i915_oa_config*)* @put_oa_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_oa_config(%struct.drm_i915_private* %0, %struct.i915_oa_config* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.i915_oa_config*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.i915_oa_config* %1, %struct.i915_oa_config** %4, align 8
  %5 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %6 = getelementptr inbounds %struct.i915_oa_config, %struct.i915_oa_config* %5, i32 0, i32 0
  %7 = call i32 @atomic_dec_and_test(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %14

10:                                               ; preds = %2
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %12 = load %struct.i915_oa_config*, %struct.i915_oa_config** %4, align 8
  %13 = call i32 @free_oa_config(%struct.drm_i915_private* %11, %struct.i915_oa_config* %12)
  br label %14

14:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @free_oa_config(%struct.drm_i915_private*, %struct.i915_oa_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
