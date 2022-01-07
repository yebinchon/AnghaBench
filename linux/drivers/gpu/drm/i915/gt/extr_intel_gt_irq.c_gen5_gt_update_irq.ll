; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen5_gt_update_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen5_gt_update_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32, i32 }

@GTIMR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32, i32)* @gen5_gt_update_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen5_gt_update_irq(%struct.intel_gt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %8 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @GEM_BUG_ON(i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %18 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %26 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GTIMR, align 4
  %33 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %34 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @intel_uncore_write(i32 %31, i32 %32, i32 %35)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @GEM_BUG_ON(i32) #1

declare dso_local i32 @intel_uncore_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
