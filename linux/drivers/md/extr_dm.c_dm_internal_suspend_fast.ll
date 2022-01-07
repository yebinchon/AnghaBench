; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_internal_suspend_fast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm.c_dm_internal_suspend_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mapped_device = type { i32, i32, i32, i32 }

@DMF_BLOCK_IO_FOR_SUSPEND = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_internal_suspend_fast(%struct.mapped_device* %0) #0 {
  %2 = alloca %struct.mapped_device*, align 8
  store %struct.mapped_device* %0, %struct.mapped_device** %2, align 8
  %3 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %4 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %3, i32 0, i32 3
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %7 = call i64 @dm_suspended_md(%struct.mapped_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %11 = call i64 @dm_suspended_internally_md(%struct.mapped_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  br label %29

14:                                               ; preds = %9
  %15 = load i32, i32* @DMF_BLOCK_IO_FOR_SUSPEND, align 4
  %16 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %17 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %16, i32 0, i32 2
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %20 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %19, i32 0, i32 1
  %21 = call i32 @synchronize_srcu(i32* %20)
  %22 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %23 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @flush_workqueue(i32 %24)
  %26 = load %struct.mapped_device*, %struct.mapped_device** %2, align 8
  %27 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %28 = call i32 @dm_wait_for_completion(%struct.mapped_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dm_suspended_md(%struct.mapped_device*) #1

declare dso_local i64 @dm_suspended_internally_md(%struct.mapped_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @synchronize_srcu(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @dm_wait_for_completion(%struct.mapped_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
