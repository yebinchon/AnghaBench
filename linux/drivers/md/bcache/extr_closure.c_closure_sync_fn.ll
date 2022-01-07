; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.c_closure_sync_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/bcache/extr_closure.c_closure_sync_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.closure = type { %struct.closure_syncer* }
%struct.closure_syncer = type { i32, i32 }
%struct.task_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.closure*)* @closure_sync_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @closure_sync_fn(%struct.closure* %0) #0 {
  %2 = alloca %struct.closure*, align 8
  %3 = alloca %struct.closure_syncer*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.closure* %0, %struct.closure** %2, align 8
  %5 = load %struct.closure*, %struct.closure** %2, align 8
  %6 = getelementptr inbounds %struct.closure, %struct.closure* %5, i32 0, i32 0
  %7 = load %struct.closure_syncer*, %struct.closure_syncer** %6, align 8
  store %struct.closure_syncer* %7, %struct.closure_syncer** %3, align 8
  %8 = call i32 (...) @rcu_read_lock()
  %9 = load %struct.closure_syncer*, %struct.closure_syncer** %3, align 8
  %10 = getelementptr inbounds %struct.closure_syncer, %struct.closure_syncer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.task_struct* @READ_ONCE(i32 %11)
  store %struct.task_struct* %12, %struct.task_struct** %4, align 8
  %13 = load %struct.closure_syncer*, %struct.closure_syncer** %3, align 8
  %14 = getelementptr inbounds %struct.closure_syncer, %struct.closure_syncer* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call i32 @wake_up_process(%struct.task_struct* %15)
  %17 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.task_struct* @READ_ONCE(i32) #1

declare dso_local i32 @wake_up_process(%struct.task_struct*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
