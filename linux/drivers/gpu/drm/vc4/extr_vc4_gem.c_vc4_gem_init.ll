; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_gem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_gem.c_vc4_gem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.vc4_dev = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@vc4_reset_work = common dso_local global i32 0, align 4
@vc4_hangcheck_elapsed = common dso_local global i32 0, align 4
@vc4_job_done_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_gem_init(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.vc4_dev*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %4 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %5 = call %struct.vc4_dev* @to_vc4_dev(%struct.drm_device* %4)
  store %struct.vc4_dev* %5, %struct.vc4_dev** %3, align 8
  %6 = call i32 @dma_fence_context_alloc(i32 1)
  %7 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %8 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %7, i32 0, i32 9
  store i32 %6, i32* %8, align 4
  %9 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %9, i32 0, i32 8
  %11 = call i32 @INIT_LIST_HEAD(i32* %10)
  %12 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %12, i32 0, i32 7
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %16 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %15, i32 0, i32 6
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %18, i32 0, i32 5
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %22 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %21, i32 0, i32 4
  %23 = call i32 @spin_lock_init(i32* %22)
  %24 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %25 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* @vc4_reset_work, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %30 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* @vc4_hangcheck_elapsed, align 4
  %33 = call i32 @timer_setup(i32* %31, i32 %32, i32 0)
  %34 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %35 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %34, i32 0, i32 2
  %36 = load i32, i32* @vc4_job_done_work, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %39 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %38, i32 0, i32 1
  %40 = call i32 @mutex_init(i32* %39)
  %41 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %42 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @INIT_LIST_HEAD(i32* %43)
  %45 = load %struct.vc4_dev*, %struct.vc4_dev** %3, align 8
  %46 = getelementptr inbounds %struct.vc4_dev, %struct.vc4_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @mutex_init(i32* %47)
  ret void
}

declare dso_local %struct.vc4_dev* @to_vc4_dev(%struct.drm_device*) #1

declare dso_local i32 @dma_fence_context_alloc(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
