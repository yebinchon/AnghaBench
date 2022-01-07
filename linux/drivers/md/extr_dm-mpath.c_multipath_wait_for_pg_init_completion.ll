; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_wait_for_pg_init_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-mpath.c_multipath_wait_for_pg_init_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.multipath = type { i32, i32 }

@wait = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.multipath*)* @multipath_wait_for_pg_init_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multipath_wait_for_pg_init_completion(%struct.multipath* %0) #0 {
  %2 = alloca %struct.multipath*, align 8
  store %struct.multipath* %0, %struct.multipath** %2, align 8
  %3 = load i32, i32* @wait, align 4
  %4 = call i32 @DEFINE_WAIT(i32 %3)
  br label %5

5:                                                ; preds = %1, %15
  %6 = load %struct.multipath*, %struct.multipath** %2, align 8
  %7 = getelementptr inbounds %struct.multipath, %struct.multipath* %6, i32 0, i32 0
  %8 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %9 = call i32 @prepare_to_wait(i32* %7, i32* @wait, i32 %8)
  %10 = load %struct.multipath*, %struct.multipath** %2, align 8
  %11 = getelementptr inbounds %struct.multipath, %struct.multipath* %10, i32 0, i32 1
  %12 = call i32 @atomic_read(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  br label %17

15:                                               ; preds = %5
  %16 = call i32 (...) @io_schedule()
  br label %5

17:                                               ; preds = %14
  %18 = load %struct.multipath*, %struct.multipath** %2, align 8
  %19 = getelementptr inbounds %struct.multipath, %struct.multipath* %18, i32 0, i32 0
  %20 = call i32 @finish_wait(i32* %19, i32* @wait)
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
