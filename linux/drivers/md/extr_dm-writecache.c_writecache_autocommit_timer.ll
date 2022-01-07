; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_autocommit_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_autocommit_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i32, i32 }
%struct.timer_list = type { i32 }

@autocommit_timer = common dso_local global i32 0, align 4
@wc = common dso_local global %struct.dm_writecache* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @writecache_autocommit_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_autocommit_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.dm_writecache*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %5 = ptrtoint %struct.dm_writecache* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @autocommit_timer, align 4
  %8 = call %struct.dm_writecache* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.dm_writecache* %8, %struct.dm_writecache** %3, align 8
  %9 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %10 = call i32 @writecache_has_error(%struct.dm_writecache* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %14 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %17 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %16, i32 0, i32 0
  %18 = call i32 @queue_work(i32 %15, i32* %17)
  br label %19

19:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.dm_writecache* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @writecache_has_error(%struct.dm_writecache*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
