; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_reset_breadcrumbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_reset_breadcrumbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_breadcrumbs }
%struct.intel_breadcrumbs = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_reset_breadcrumbs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_breadcrumbs*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 0
  store %struct.intel_breadcrumbs* %6, %struct.intel_breadcrumbs** %3, align 8
  %7 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %12 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %17 = call i32 @irq_enable(%struct.intel_engine_cs* %16)
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %20 = call i32 @irq_disable(%struct.intel_engine_cs* %19)
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %23 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %22, i32 0, i32 0
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @irq_enable(%struct.intel_engine_cs*) #1

declare dso_local i32 @irq_disable(%struct.intel_engine_cs*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
