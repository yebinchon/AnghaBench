; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-writecache.c_writecache_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.dm_writecache* }
%struct.dm_writecache = type { i64 }
%struct.queue_limits = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @writecache_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writecache_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.dm_writecache*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %6 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %7 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %6, i32 0, i32 0
  %8 = load %struct.dm_writecache*, %struct.dm_writecache** %7, align 8
  store %struct.dm_writecache* %8, %struct.dm_writecache** %5, align 8
  %9 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %10 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %13 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp slt i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %18 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %21 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %24 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %27 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp slt i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %32 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %35 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %30, %22
  %37 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %38 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %41 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load %struct.dm_writecache*, %struct.dm_writecache** %5, align 8
  %46 = getelementptr inbounds %struct.dm_writecache, %struct.dm_writecache* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %49 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  br label %50

50:                                               ; preds = %44, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
