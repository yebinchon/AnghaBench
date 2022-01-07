; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_postsuspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-clone-target.c_clone_postsuspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.clone* }
%struct.clone = type { i32, i32, i32, i32, i32 }

@DM_CLONE_HYDRATION_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*)* @clone_postsuspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clone_postsuspend(%struct.dm_target* %0) #0 {
  %2 = alloca %struct.dm_target*, align 8
  %3 = alloca %struct.clone*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %2, align 8
  %4 = load %struct.dm_target*, %struct.dm_target** %2, align 8
  %5 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %4, i32 0, i32 0
  %6 = load %struct.clone*, %struct.clone** %5, align 8
  store %struct.clone* %6, %struct.clone** %3, align 8
  %7 = load %struct.clone*, %struct.clone** %3, align 8
  %8 = getelementptr inbounds %struct.clone, %struct.clone* %7, i32 0, i32 4
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load i32, i32* @DM_CLONE_HYDRATION_SUSPENDED, align 4
  %11 = load %struct.clone*, %struct.clone** %3, align 8
  %12 = getelementptr inbounds %struct.clone, %struct.clone* %11, i32 0, i32 3
  %13 = call i32 @set_bit(i32 %10, i32* %12)
  %14 = call i32 (...) @smp_mb__after_atomic()
  %15 = load %struct.clone*, %struct.clone** %3, align 8
  %16 = getelementptr inbounds %struct.clone, %struct.clone* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.clone*, %struct.clone** %3, align 8
  %19 = getelementptr inbounds %struct.clone, %struct.clone* %18, i32 0, i32 1
  %20 = call i32 @atomic_read(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @wait_event(i32 %17, i32 %23)
  %25 = load %struct.clone*, %struct.clone** %3, align 8
  %26 = getelementptr inbounds %struct.clone, %struct.clone* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @flush_workqueue(i32 %27)
  %29 = load %struct.clone*, %struct.clone** %3, align 8
  %30 = call i32 @commit_metadata(%struct.clone* %29)
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @commit_metadata(%struct.clone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
