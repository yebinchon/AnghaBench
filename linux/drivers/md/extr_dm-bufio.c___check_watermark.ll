; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___check_watermark.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___check_watermark.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32* }
%struct.list_head = type { i32 }

@LIST_DIRTY = common dso_local global i64 0, align 8
@LIST_CLEAN = common dso_local global i64 0, align 8
@DM_BUFIO_WRITEBACK_RATIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_bufio_client*, %struct.list_head*)* @__check_watermark to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__check_watermark(%struct.dm_bufio_client* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dm_bufio_client*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %6 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @LIST_DIRTY, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %12 = getelementptr inbounds %struct.dm_bufio_client, %struct.dm_bufio_client* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @LIST_CLEAN, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DM_BUFIO_WRITEBACK_RATIO, align 4
  %18 = mul nsw i32 %16, %17
  %19 = icmp sgt i32 %10, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %3, align 8
  %22 = load %struct.list_head*, %struct.list_head** %4, align 8
  %23 = call i32 @__write_dirty_buffers_async(%struct.dm_bufio_client* %21, i32 1, %struct.list_head* %22)
  br label %24

24:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @__write_dirty_buffers_async(%struct.dm_bufio_client*, i32, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
