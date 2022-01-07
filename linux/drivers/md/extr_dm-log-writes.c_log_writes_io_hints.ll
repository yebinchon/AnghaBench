; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_io_hints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-log-writes.c_log_writes_io_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.log_writes_c* }
%struct.log_writes_c = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.queue_limits = type { i32, i32, i32, i32, i32 }
%struct.request_queue = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.queue_limits*)* @log_writes_io_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_writes_io_hints(%struct.dm_target* %0, %struct.queue_limits* %1) #0 {
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca %struct.queue_limits*, align 8
  %5 = alloca %struct.log_writes_c*, align 8
  %6 = alloca %struct.request_queue*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  store %struct.queue_limits* %1, %struct.queue_limits** %4, align 8
  %7 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %8 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %7, i32 0, i32 0
  %9 = load %struct.log_writes_c*, %struct.log_writes_c** %8, align 8
  store %struct.log_writes_c* %9, %struct.log_writes_c** %5, align 8
  %10 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  %11 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.request_queue* @bdev_get_queue(i32 %14)
  store %struct.request_queue* %15, %struct.request_queue** %6, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %17 = icmp ne %struct.request_queue* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %20 = call i32 @blk_queue_discard(%struct.request_queue* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %35, label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  %24 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  %26 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %29 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @UINT_MAX, align 4
  %31 = load i32, i32* @SECTOR_SHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %34 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %22, %18
  %36 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  %37 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bdev_logical_block_size(i32 %40)
  %42 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %43 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.log_writes_c*, %struct.log_writes_c** %5, align 8
  %45 = getelementptr inbounds %struct.log_writes_c, %struct.log_writes_c* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @bdev_physical_block_size(i32 %48)
  %50 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %51 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %53 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.queue_limits*, %struct.queue_limits** %4, align 8
  %56 = getelementptr inbounds %struct.queue_limits, %struct.queue_limits* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local %struct.request_queue* @bdev_get_queue(i32) #1

declare dso_local i32 @blk_queue_discard(%struct.request_queue*) #1

declare dso_local i32 @bdev_logical_block_size(i32) #1

declare dso_local i32 @bdev_physical_block_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
