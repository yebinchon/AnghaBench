; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_dm_dirty_log_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log.c_dm_dirty_log_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_dirty_log*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_dirty_log_destroy(%struct.dm_dirty_log* %0) #0 {
  %2 = alloca %struct.dm_dirty_log*, align 8
  store %struct.dm_dirty_log* %0, %struct.dm_dirty_log** %2, align 8
  %3 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %4 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.dm_dirty_log*)*, i32 (%struct.dm_dirty_log*)** %6, align 8
  %8 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %9 = call i32 %7(%struct.dm_dirty_log* %8)
  %10 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %11 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = call i32 @put_type(%struct.TYPE_2__* %12)
  %14 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %2, align 8
  %15 = call i32 @kfree(%struct.dm_dirty_log* %14)
  ret void
}

declare dso_local i32 @put_type(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.dm_dirty_log*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
