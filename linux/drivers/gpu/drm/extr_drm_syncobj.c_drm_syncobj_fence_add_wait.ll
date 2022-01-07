; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fence_add_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_drm_syncobj_fence_add_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_syncobj = type { i32, i32, i32 }
%struct.syncobj_wait_entry = type { %struct.dma_fence*, i32, i32 }
%struct.dma_fence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_syncobj*, %struct.syncobj_wait_entry*)* @drm_syncobj_fence_add_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_syncobj_fence_add_wait(%struct.drm_syncobj* %0, %struct.syncobj_wait_entry* %1) #0 {
  %3 = alloca %struct.drm_syncobj*, align 8
  %4 = alloca %struct.syncobj_wait_entry*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  store %struct.drm_syncobj* %0, %struct.drm_syncobj** %3, align 8
  store %struct.syncobj_wait_entry* %1, %struct.syncobj_wait_entry** %4, align 8
  %6 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %7 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %6, i32 0, i32 0
  %8 = load %struct.dma_fence*, %struct.dma_fence** %7, align 8
  %9 = icmp ne %struct.dma_fence* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %52

11:                                               ; preds = %2
  %12 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %13 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %16 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @rcu_dereference_protected(i32 %17, i32 1)
  %19 = call %struct.dma_fence* @dma_fence_get(i32 %18)
  store %struct.dma_fence* %19, %struct.dma_fence** %5, align 8
  %20 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %21 = icmp ne %struct.dma_fence* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %11
  %23 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %24 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @dma_fence_chain_find_seqno(%struct.dma_fence** %5, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %11
  %29 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %30 = call i32 @dma_fence_put(%struct.dma_fence* %29)
  %31 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %32 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %31, i32 0, i32 1
  %33 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %34 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %33, i32 0, i32 1
  %35 = call i32 @list_add_tail(i32* %32, i32* %34)
  br label %48

36:                                               ; preds = %22
  %37 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %38 = icmp ne %struct.dma_fence* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = call %struct.dma_fence* (...) @dma_fence_get_stub()
  %41 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %42 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %41, i32 0, i32 0
  store %struct.dma_fence* %40, %struct.dma_fence** %42, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %45 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %46 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %45, i32 0, i32 0
  store %struct.dma_fence* %44, %struct.dma_fence** %46, align 8
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %28
  %49 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %50 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock(i32* %50)
  br label %52

52:                                               ; preds = %48, %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get(i32) #1

declare dso_local i32 @rcu_dereference_protected(i32, i32) #1

declare dso_local i64 @dma_fence_chain_find_seqno(%struct.dma_fence**, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.dma_fence* @dma_fence_get_stub(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
