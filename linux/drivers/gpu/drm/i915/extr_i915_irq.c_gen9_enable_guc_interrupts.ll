; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen9_enable_guc_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen9_enable_guc_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.intel_gt = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen9_enable_guc_interrupts(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %4 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %5 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %4)
  store %struct.intel_gt* %5, %struct.intel_gt** %3, align 8
  %6 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %7 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %6, i32 0, i32 2
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call i32 @assert_rpm_wakelock_held(i32* %9)
  %11 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %12 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %11, i32 0, i32 1
  %13 = call i32 @spin_lock_irq(i32* %12)
  %14 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %15 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %1
  %20 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %21 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %24 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @gen6_pm_iir(%struct.TYPE_4__* %25)
  %27 = call i32 @intel_uncore_read(i32 %22, i32 %26)
  %28 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %29 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %27, %30
  %32 = call i32 @WARN_ON_ONCE(i32 %31)
  %33 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %34 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %37 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %38 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @gen6_gt_pm_enable_irq(%struct.intel_gt* %36, i32 %39)
  br label %41

41:                                               ; preds = %19, %1
  %42 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %43 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock_irq(i32* %43)
  ret void
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @assert_rpm_wakelock_held(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @intel_uncore_read(i32, i32) #1

declare dso_local i32 @gen6_pm_iir(%struct.TYPE_4__*) #1

declare dso_local i32 @gen6_gt_pm_enable_irq(%struct.intel_gt*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
