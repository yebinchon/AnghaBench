; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence_work.c_dma_fence_work_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_i915_sw_fence_work.c_dma_fence_work_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence_work = type { %struct.dma_fence_work_ops*, i32, i32, i32, i32 }
%struct.dma_fence_work_ops = type { i32 }

@fence_ops = common dso_local global i32 0, align 4
@fence_notify = common dso_local global i32 0, align 4
@fence_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dma_fence_work_init(%struct.dma_fence_work* %0, %struct.dma_fence_work_ops* %1) #0 {
  %3 = alloca %struct.dma_fence_work*, align 8
  %4 = alloca %struct.dma_fence_work_ops*, align 8
  store %struct.dma_fence_work* %0, %struct.dma_fence_work** %3, align 8
  store %struct.dma_fence_work_ops* %1, %struct.dma_fence_work_ops** %4, align 8
  %5 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %6 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %9 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %8, i32 0, i32 4
  %10 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %11 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %10, i32 0, i32 3
  %12 = call i32 @dma_fence_init(i32* %9, i32* @fence_ops, i32* %11, i32 0, i32 0)
  %13 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %14 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %13, i32 0, i32 2
  %15 = load i32, i32* @fence_notify, align 4
  %16 = call i32 @i915_sw_fence_init(i32* %14, i32 %15)
  %17 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %18 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %17, i32 0, i32 1
  %19 = load i32, i32* @fence_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.dma_fence_work_ops*, %struct.dma_fence_work_ops** %4, align 8
  %22 = load %struct.dma_fence_work*, %struct.dma_fence_work** %3, align 8
  %23 = getelementptr inbounds %struct.dma_fence_work, %struct.dma_fence_work* %22, i32 0, i32 0
  store %struct.dma_fence_work_ops* %21, %struct.dma_fence_work_ops** %23, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dma_fence_init(i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @i915_sw_fence_init(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
