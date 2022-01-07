; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_stop_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap.c_stop_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_snapshot = type { i32 }

@SHUTDOWN_MERGE = common dso_local global i32 0, align 4
@RUNNING_MERGE = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_snapshot*)* @stop_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_merge(%struct.dm_snapshot* %0) #0 {
  %2 = alloca %struct.dm_snapshot*, align 8
  store %struct.dm_snapshot* %0, %struct.dm_snapshot** %2, align 8
  %3 = load i32, i32* @SHUTDOWN_MERGE, align 4
  %4 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %5 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %4, i32 0, i32 0
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %8 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %7, i32 0, i32 0
  %9 = load i32, i32* @RUNNING_MERGE, align 4
  %10 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %11 = call i32 @wait_on_bit(i32* %8, i32 %9, i32 %10)
  %12 = load i32, i32* @SHUTDOWN_MERGE, align 4
  %13 = load %struct.dm_snapshot*, %struct.dm_snapshot** %2, align 8
  %14 = getelementptr inbounds %struct.dm_snapshot, %struct.dm_snapshot* %13, i32 0, i32 0
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wait_on_bit(i32*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
