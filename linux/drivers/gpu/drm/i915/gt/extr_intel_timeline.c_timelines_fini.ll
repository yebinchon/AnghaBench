; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_timelines_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_timeline.c_timelines_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.intel_gt_timelines }
%struct.intel_gt_timelines = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*)* @timelines_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @timelines_fini(%struct.intel_gt* %0) #0 {
  %2 = alloca %struct.intel_gt*, align 8
  %3 = alloca %struct.intel_gt_timelines*, align 8
  store %struct.intel_gt* %0, %struct.intel_gt** %2, align 8
  %4 = load %struct.intel_gt*, %struct.intel_gt** %2, align 8
  %5 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %4, i32 0, i32 0
  store %struct.intel_gt_timelines* %5, %struct.intel_gt_timelines** %3, align 8
  %6 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %6, i32 0, i32 1
  %8 = call i32 @list_empty(i32* %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i32 @GEM_BUG_ON(i32 %11)
  %13 = load %struct.intel_gt_timelines*, %struct.intel_gt_timelines** %3, align 8
  %14 = getelementptr inbounds %struct.intel_gt_timelines, %struct.intel_gt_timelines* %13, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @GEM_BUG_ON(i32 %18)
  ret void
}

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
