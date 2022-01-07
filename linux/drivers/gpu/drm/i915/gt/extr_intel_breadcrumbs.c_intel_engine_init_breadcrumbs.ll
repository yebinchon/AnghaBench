; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_init_breadcrumbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gt/extr_intel_breadcrumbs.c_intel_engine_init_breadcrumbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_engine_cs = type { %struct.intel_breadcrumbs }
%struct.intel_breadcrumbs = type { i32, i32, i32 }

@signal_irq_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_engine_init_breadcrumbs(%struct.intel_engine_cs* %0) #0 {
  %2 = alloca %struct.intel_engine_cs*, align 8
  %3 = alloca %struct.intel_breadcrumbs*, align 8
  store %struct.intel_engine_cs* %0, %struct.intel_engine_cs** %2, align 8
  %4 = load %struct.intel_engine_cs*, %struct.intel_engine_cs** %2, align 8
  %5 = getelementptr inbounds %struct.intel_engine_cs, %struct.intel_engine_cs* %4, i32 0, i32 0
  store %struct.intel_breadcrumbs* %5, %struct.intel_breadcrumbs** %3, align 8
  %6 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %7 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_init(i32* %7)
  %9 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %10 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %9, i32 0, i32 1
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.intel_breadcrumbs*, %struct.intel_breadcrumbs** %3, align 8
  %13 = getelementptr inbounds %struct.intel_breadcrumbs, %struct.intel_breadcrumbs* %12, i32 0, i32 0
  %14 = load i32, i32* @signal_irq_work, align 4
  %15 = call i32 @init_irq_work(i32* %13, i32 %14)
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_irq_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
