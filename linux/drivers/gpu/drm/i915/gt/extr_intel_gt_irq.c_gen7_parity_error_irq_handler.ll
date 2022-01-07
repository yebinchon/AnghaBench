; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen7_parity_error_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_gt_irq.c_gen7_parity_error_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_gt = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1 = common dso_local global i32 0, align 4
@GT_RENDER_L3_PARITY_ERROR_INTERRUPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel_gt*, i32)* @gen7_parity_error_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gen7_parity_error_irq_handler(%struct.intel_gt* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_gt*, align 8
  %4 = alloca i32, align 4
  store %struct.intel_gt* %0, %struct.intel_gt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %6 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = call i32 @HAS_L3_DPF(%struct.TYPE_5__* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %56

11:                                               ; preds = %2
  %12 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %13 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %12, i32 0, i32 1
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %16 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %17 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call i32 @GT_PARITY_ERROR(%struct.TYPE_5__* %18)
  %20 = call i32 @gen5_gt_disable_irq(%struct.intel_gt* %15, i32 %19)
  %21 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %22 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %21, i32 0, i32 1
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @GT_RENDER_L3_PARITY_ERROR_INTERRUPT_S1, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %11
  %29 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %30 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %28, %11
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @GT_RENDER_L3_PARITY_ERROR_INTERRUPT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %43 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %41, %36
  %50 = load %struct.intel_gt*, %struct.intel_gt** %3, align 8
  %51 = getelementptr inbounds %struct.intel_gt, %struct.intel_gt* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @schedule_work(i32* %54)
  br label %56

56:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @HAS_L3_DPF(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gen5_gt_disable_irq(%struct.intel_gt*, i32) #1

declare dso_local i32 @GT_PARITY_ERROR(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
