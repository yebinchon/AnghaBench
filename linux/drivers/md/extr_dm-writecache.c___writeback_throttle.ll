; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c___writeback_throttle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c___writeback_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_writecache = type { i64, i64 }
%struct.writeback_list = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_writecache*, %struct.writeback_list*)* @__writeback_throttle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__writeback_throttle(%struct.dm_writecache* %0, %struct.writeback_list* %1) #0 {
  %3 = alloca %struct.dm_writecache*, align 8
  %4 = alloca %struct.writeback_list*, align 8
  store %struct.dm_writecache* %0, %struct.dm_writecache** %3, align 8
  store %struct.writeback_list* %1, %struct.writeback_list** %4, align 8
  %5 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %6 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @unlikely(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %45

10:                                               ; preds = %2
  %11 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %12 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @READ_ONCE(i64 %13)
  %15 = load %struct.writeback_list*, %struct.writeback_list** %4, align 8
  %16 = getelementptr inbounds %struct.writeback_list, %struct.writeback_list* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %20 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %10
  %24 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %25 = call i32 @wc_lock(%struct.dm_writecache* %24)
  br label %26

26:                                               ; preds = %38, %23
  %27 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %28 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.writeback_list*, %struct.writeback_list** %4, align 8
  %31 = getelementptr inbounds %struct.writeback_list, %struct.writeback_list* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %29, %32
  %34 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %35 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %26
  %39 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %40 = call i32 @writecache_wait_on_freelist(%struct.dm_writecache* %39)
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.dm_writecache*, %struct.dm_writecache** %3, align 8
  %43 = call i32 @wc_unlock(%struct.dm_writecache* %42)
  br label %44

44:                                               ; preds = %41, %10
  br label %45

45:                                               ; preds = %44, %2
  %46 = call i32 (...) @cond_resched()
  ret void
}

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @READ_ONCE(i64) #1

declare dso_local i32 @wc_lock(%struct.dm_writecache*) #1

declare dso_local i32 @writecache_wait_on_freelist(%struct.dm_writecache*) #1

declare dso_local i32 @wc_unlock(%struct.dm_writecache*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
