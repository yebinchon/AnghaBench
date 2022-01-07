; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_enable_guc_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_irq.c_gen11_enable_guc_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_guc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.intel_gt = type { i32, i32 }

@ENGINE1_MASK = common dso_local global i32 0, align 4
@GUC_INTR_GUC2HOST = common dso_local global i32 0, align 4
@GEN11_GUC = common dso_local global i32 0, align 4
@GEN11_GUC_SG_INTR_ENABLE = common dso_local global i32 0, align 4
@GEN11_GUC_SG_INTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen11_enable_guc_interrupts(%struct.intel_guc* %0) #0 {
  %2 = alloca %struct.intel_guc*, align 8
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_guc* %0, %struct.intel_guc** %2, align 8
  %5 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %6 = call %struct.intel_gt* @guc_to_gt(%struct.intel_guc* %5)
  store %struct.intel_gt* %6, %struct.intel_gt** %3, align 8
  %7 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %8 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %11 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENGINE1_MASK, align 4
  %17 = load i32, i32* @GUC_INTR_GUC2HOST, align 4
  %18 = call i32 @REG_FIELD_PREP(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %20 = load i32, i32* @GEN11_GUC, align 4
  %21 = call i32 @gen11_gt_reset_one_iir(%struct.intel_gt* %19, i32 0, i32 %20)
  %22 = call i32 @WARN_ON_ONCE(i32 %21)
  %23 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %24 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GEN11_GUC_SG_INTR_ENABLE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @intel_uncore_write(i32 %25, i32 %26, i32 %27)
  %29 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GEN11_GUC_SG_INTR_MASK, align 4
  %33 = load i32, i32* %4, align 4
  %34 = xor i32 %33, -1
  %35 = call i32 @intel_uncore_write(i32 %31, i32 %32, i32 %34)
  %36 = load %struct.intel_guc*, %struct.intel_guc** %2, align 8
  %37 = getelementptr inbounds %struct.intel_guc, %struct.intel_guc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %15, %1
  %40 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %41 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_irq(i32* %41)
  ret void
}

declare dso_local %struct.intel_gt* @guc_to_gt(%struct.intel_guc*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @REG_FIELD_PREP(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @gen11_gt_reset_one_iir(%struct.intel_gt*, i32, i32) #1

declare dso_local i32 @intel_uncore_write(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
