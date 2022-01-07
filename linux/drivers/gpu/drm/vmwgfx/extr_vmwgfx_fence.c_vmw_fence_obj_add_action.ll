; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_add_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_obj_add_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_obj = type { %struct.list_head, i32 }
%struct.list_head = type { i32 }
%struct.vmw_fence_action = type { i64, i32 }
%struct.vmw_fence_manager = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmw_fence_obj*, %struct.vmw_fence_action*)* @vmw_fence_obj_add_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmw_fence_obj_add_action(%struct.vmw_fence_obj* %0, %struct.vmw_fence_action* %1) #0 {
  %3 = alloca %struct.vmw_fence_obj*, align 8
  %4 = alloca %struct.vmw_fence_action*, align 8
  %5 = alloca %struct.vmw_fence_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head, align 4
  store %struct.vmw_fence_obj* %0, %struct.vmw_fence_obj** %3, align 8
  store %struct.vmw_fence_action* %1, %struct.vmw_fence_action** %4, align 8
  %8 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %9 = call %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj* %8)
  store %struct.vmw_fence_manager* %9, %struct.vmw_fence_manager** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %11 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %14 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %13, i32 0, i32 3
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %17 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.vmw_fence_action*, %struct.vmw_fence_action** %4, align 8
  %20 = getelementptr inbounds %struct.vmw_fence_action, %struct.vmw_fence_action* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %26 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %25, i32 0, i32 1
  %27 = call i64 @dma_fence_is_signaled_locked(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %31 = load %struct.vmw_fence_action*, %struct.vmw_fence_action** %4, align 8
  %32 = getelementptr inbounds %struct.vmw_fence_action, %struct.vmw_fence_action* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %32, %struct.list_head* %7)
  %34 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %35 = call i32 @vmw_fences_perform_actions(%struct.vmw_fence_manager* %34, %struct.list_head* %7)
  br label %44

36:                                               ; preds = %2
  %37 = load %struct.vmw_fence_action*, %struct.vmw_fence_action** %4, align 8
  %38 = getelementptr inbounds %struct.vmw_fence_action, %struct.vmw_fence_action* %37, i32 0, i32 1
  %39 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %40 = getelementptr inbounds %struct.vmw_fence_obj, %struct.vmw_fence_obj* %39, i32 0, i32 0
  %41 = call i32 @list_add_tail(i32* %38, %struct.list_head* %40)
  %42 = load %struct.vmw_fence_obj*, %struct.vmw_fence_obj** %3, align 8
  %43 = call i32 @vmw_fence_goal_check_locked(%struct.vmw_fence_obj* %42)
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %36, %29
  %45 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %46 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %52 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %57 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %59 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @vmw_goal_waiter_add(i32 %60)
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %64 = call i32 @vmw_fences_update(%struct.vmw_fence_manager* %63)
  br label %65

65:                                               ; preds = %62, %44
  %66 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %5, align 8
  %67 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %66, i32 0, i32 1
  %68 = call i32 @mutex_unlock(i32* %67)
  ret void
}

declare dso_local %struct.vmw_fence_manager* @fman_from_fence(%struct.vmw_fence_obj*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @dma_fence_is_signaled_locked(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @vmw_fences_perform_actions(%struct.vmw_fence_manager*, %struct.list_head*) #1

declare dso_local i32 @vmw_fence_goal_check_locked(%struct.vmw_fence_obj*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmw_goal_waiter_add(i32) #1

declare dso_local i32 @vmw_fences_update(%struct.vmw_fence_manager*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
