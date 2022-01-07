; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_disarm_breadcrumbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_disarm_breadcrumbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_breadcrumbs }
%struct.intel_breadcrumbs = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_disarm_breadcrumbs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_breadcrumbs*, align 8
  %4 = alloca i64, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %5 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %6 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %5, i32 0, i32 0
  store %struct.intel_breadcrumbs* %6, %struct.intel_breadcrumbs** %3, align 8
  %7 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %8 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %14 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %18 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %23 = call i32 @__intel_breadcrumbs_disarm_irq(%struct.intel_breadcrumbs* %22)
  br label %24

24:                                               ; preds = %21, %12
  %25 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %26 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__intel_breadcrumbs_disarm_irq(%struct.intel_breadcrumbs*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
