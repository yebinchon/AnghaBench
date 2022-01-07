; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_gem.c_nouveau_gem_object_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_bo = type { i32 }
%struct.nouveau_vma = type { %struct.TYPE_4__*, i32, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.dma_fence }
%struct.dma_fence = type { i32 }
%struct.nouveau_gem_object_unmap = type { %struct.TYPE_6__, %struct.nouveau_vma* }
%struct.TYPE_6__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@nouveau_gem_object_delete_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_bo*, %struct.nouveau_vma*)* @nouveau_gem_object_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nouveau_gem_object_unmap(%struct.nouveau_bo* %0, %struct.nouveau_vma* %1) #0 {
  %3 = alloca %struct.nouveau_bo*, align 8
  %4 = alloca %struct.nouveau_vma*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  %6 = alloca %struct.nouveau_gem_object_unmap*, align 8
  store %struct.nouveau_bo* %0, %struct.nouveau_bo** %3, align 8
  store %struct.nouveau_vma* %1, %struct.nouveau_vma** %4, align 8
  %7 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %8 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %13 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi %struct.dma_fence* [ %15, %11 ], [ null, %16 ]
  store %struct.dma_fence* %18, %struct.dma_fence** %5, align 8
  %19 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %20 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %19, i32 0, i32 1
  %21 = call i32 @list_del_init(i32* %20)
  %22 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %23 = icmp ne %struct.dma_fence* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %26 = call i32 @nouveau_gem_object_delete(%struct.nouveau_vma* %25)
  br label %58

27:                                               ; preds = %17
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.nouveau_gem_object_unmap* @kmalloc(i32 16, i32 %28)
  store %struct.nouveau_gem_object_unmap* %29, %struct.nouveau_gem_object_unmap** %6, align 8
  %30 = icmp ne %struct.nouveau_gem_object_unmap* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %33 = load i32, i32* @HZ, align 4
  %34 = mul nsw i32 2, %33
  %35 = call i64 @dma_fence_wait_timeout(%struct.dma_fence* %32, i32 0, i32 %34)
  %36 = icmp sle i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %40 = call i32 @nouveau_gem_object_delete(%struct.nouveau_vma* %39)
  br label %58

41:                                               ; preds = %27
  %42 = load i32, i32* @nouveau_gem_object_delete_work, align 4
  %43 = load %struct.nouveau_gem_object_unmap*, %struct.nouveau_gem_object_unmap** %6, align 8
  %44 = getelementptr inbounds %struct.nouveau_gem_object_unmap, %struct.nouveau_gem_object_unmap* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %47 = load %struct.nouveau_gem_object_unmap*, %struct.nouveau_gem_object_unmap** %6, align 8
  %48 = getelementptr inbounds %struct.nouveau_gem_object_unmap, %struct.nouveau_gem_object_unmap* %47, i32 0, i32 1
  store %struct.nouveau_vma* %46, %struct.nouveau_vma** %48, align 8
  %49 = load %struct.nouveau_vma*, %struct.nouveau_vma** %4, align 8
  %50 = getelementptr inbounds %struct.nouveau_vma, %struct.nouveau_vma* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %55 = load %struct.nouveau_gem_object_unmap*, %struct.nouveau_gem_object_unmap** %6, align 8
  %56 = getelementptr inbounds %struct.nouveau_gem_object_unmap, %struct.nouveau_gem_object_unmap* %55, i32 0, i32 0
  %57 = call i32 @nouveau_cli_work_queue(i32 %53, %struct.dma_fence* %54, %struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %41, %31, %24
  ret void
}

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @nouveau_gem_object_delete(%struct.nouveau_vma*) #1

declare dso_local %struct.nouveau_gem_object_unmap* @kmalloc(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @dma_fence_wait_timeout(%struct.dma_fence*, i32, i32) #1

declare dso_local i32 @nouveau_cli_work_queue(i32, %struct.dma_fence*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
