; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_syncobj_wait_syncobj_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_syncobj.c_syncobj_wait_syncobj_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_syncobj = type { i32, i32 }
%struct.syncobj_wait_entry = type { i32, i32, %struct.dma_fence*, i32 }
%struct.dma_fence = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_syncobj*, %struct.syncobj_wait_entry*)* @syncobj_wait_syncobj_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syncobj_wait_syncobj_func(%struct.drm_syncobj* %0, %struct.syncobj_wait_entry* %1) #0 {
  %3 = alloca %struct.drm_syncobj*, align 8
  %4 = alloca %struct.syncobj_wait_entry*, align 8
  %5 = alloca %struct.dma_fence*, align 8
  store %struct.drm_syncobj* %0, %struct.drm_syncobj** %3, align 8
  store %struct.syncobj_wait_entry* %1, %struct.syncobj_wait_entry** %4, align 8
  %6 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %7 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.drm_syncobj*, %struct.drm_syncobj** %3, align 8
  %10 = getelementptr inbounds %struct.drm_syncobj, %struct.drm_syncobj* %9, i32 0, i32 0
  %11 = call i32 @lockdep_is_held(i32* %10)
  %12 = call %struct.dma_fence* @rcu_dereference_protected(i32 %8, i32 %11)
  store %struct.dma_fence* %12, %struct.dma_fence** %5, align 8
  %13 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %14 = call i32 @dma_fence_get(%struct.dma_fence* %13)
  %15 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %16 = icmp ne %struct.dma_fence* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %19 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @dma_fence_chain_find_seqno(%struct.dma_fence** %5, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17, %2
  %24 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %25 = call i32 @dma_fence_put(%struct.dma_fence* %24)
  br label %46

26:                                               ; preds = %17
  %27 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %28 = icmp ne %struct.dma_fence* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = call %struct.dma_fence* (...) @dma_fence_get_stub()
  %31 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %32 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %31, i32 0, i32 2
  store %struct.dma_fence* %30, %struct.dma_fence** %32, align 8
  br label %37

33:                                               ; preds = %26
  %34 = load %struct.dma_fence*, %struct.dma_fence** %5, align 8
  %35 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %36 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %35, i32 0, i32 2
  store %struct.dma_fence* %34, %struct.dma_fence** %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %40 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @wake_up_process(i32 %41)
  %43 = load %struct.syncobj_wait_entry*, %struct.syncobj_wait_entry** %4, align 8
  %44 = getelementptr inbounds %struct.syncobj_wait_entry, %struct.syncobj_wait_entry* %43, i32 0, i32 0
  %45 = call i32 @list_del_init(i32* %44)
  br label %46

46:                                               ; preds = %38, %23
  ret void
}

declare dso_local %struct.dma_fence* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i32 @dma_fence_get(%struct.dma_fence*) #1

declare dso_local i64 @dma_fence_chain_find_seqno(%struct.dma_fence**, i32) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence* @dma_fence_get_stub(...) #1

declare dso_local i32 @wake_up_process(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
