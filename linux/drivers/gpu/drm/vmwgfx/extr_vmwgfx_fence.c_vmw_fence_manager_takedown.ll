; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_manager_takedown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_fence.c_vmw_fence_manager_takedown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmw_fence_manager = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmw_fence_manager_takedown(%struct.vmw_fence_manager* %0) #0 {
  %2 = alloca %struct.vmw_fence_manager*, align 8
  %3 = alloca i32, align 4
  store %struct.vmw_fence_manager* %0, %struct.vmw_fence_manager** %2, align 8
  %4 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %5 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %4, i32 0, i32 3
  %6 = call i32 @cancel_work_sync(i32* %5)
  %7 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %8 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %11 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %10, i32 0, i32 2
  %12 = call i64 @list_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %16 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %15, i32 0, i32 1
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %3, align 4
  %22 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %23 = getelementptr inbounds %struct.vmw_fence_manager, %struct.vmw_fence_manager* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.vmw_fence_manager*, %struct.vmw_fence_manager** %2, align 8
  %31 = call i32 @kfree(%struct.vmw_fence_manager* %30)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree(%struct.vmw_fence_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
