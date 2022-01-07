; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___gen6_gt_wait_for_thread_c0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c___gen6_gt_wait_for_thread_c0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"GT thread status wait timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_uncore*)* @__gen6_gt_wait_for_thread_c0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gen6_gt_wait_for_thread_c0(%struct.intel_uncore* %0) #0 {
  %2 = alloca %struct.intel_uncore*, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %2, align 8
  %3 = load %struct.intel_uncore*, %struct.intel_uncore** %2, align 8
  %4 = call i64 @gt_thread_status(%struct.intel_uncore* %3)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @wait_for_atomic_us(i32 %6, i32 5000)
  %8 = call i32 @WARN_ONCE(i32 %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @wait_for_atomic_us(i32, i32) #1

declare dso_local i64 @gt_thread_status(%struct.intel_uncore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
