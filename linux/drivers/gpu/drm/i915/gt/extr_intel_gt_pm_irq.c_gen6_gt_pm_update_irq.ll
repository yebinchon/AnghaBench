; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_pm_irq.c_gen6_gt_pm_update_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_pm_irq.c_gen6_gt_pm_update_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32, i32)* @gen6_gt_pm_update_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen6_gt_pm_update_irq(%struct.intel_gt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intel_gt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = xor i32 %9, -1
  %11 = and i32 %8, %10
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %14 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %13, i32 0, i32 1
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %31 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %3
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %37 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.intel_gt*, %struct.intel_gt** %4, align 8
  %39 = call i32 @write_pm_imr(%struct.intel_gt* %38)
  br label %40

40:                                               ; preds = %34, %3
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @write_pm_imr(%struct.intel_gt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
