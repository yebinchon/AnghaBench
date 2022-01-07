; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_sync_for_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_gem.c_sync_for_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_gem_object = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }

@CONFIG_ARM64 = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_gem_object*)* @sync_for_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sync_for_cpu(%struct.msm_gem_object* %0) #0 {
  %2 = alloca %struct.msm_gem_object*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.msm_gem_object* %0, %struct.msm_gem_object** %2, align 8
  %4 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %5 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call i64 @get_dma_ops(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @CONFIG_ARM64, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %20 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %25 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %30 = call i32 @dma_sync_sg_for_cpu(%struct.device* %18, i32 %23, i32 %28, i32 %29)
  br label %45

31:                                               ; preds = %13, %1
  %32 = load %struct.device*, %struct.device** %3, align 8
  %33 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %34 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.msm_gem_object*, %struct.msm_gem_object** %2, align 8
  %39 = getelementptr inbounds %struct.msm_gem_object, %struct.msm_gem_object* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @dma_unmap_sg(%struct.device* %32, i32 %37, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %31, %17
  ret void
}

declare dso_local i64 @get_dma_ops(%struct.device*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dma_sync_sg_for_cpu(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
