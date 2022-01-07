; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___write_dirty_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c___write_dirty_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_buffer = type { i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { i32 }

@B_DIRTY = common dso_local global i32 0, align 4
@B_WRITING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@write_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_buffer*, %struct.list_head*)* @__write_dirty_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__write_dirty_buffer(%struct.dm_buffer* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.dm_buffer*, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.dm_buffer* %0, %struct.dm_buffer** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %5 = load i32, i32* @B_DIRTY, align 4
  %6 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %7 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %6, i32 0, i32 5
  %8 = call i32 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %43

11:                                               ; preds = %2
  %12 = load i32, i32* @B_DIRTY, align 4
  %13 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %13, i32 0, i32 5
  %15 = call i32 @clear_bit(i32 %12, i32* %14)
  %16 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %17 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %16, i32 0, i32 5
  %18 = load i32, i32* @B_WRITING, align 4
  %19 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %20 = call i32 @wait_on_bit_lock_io(i32* %17, i32 %18, i32 %19)
  %21 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %22 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %25 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %27 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %30 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.list_head*, %struct.list_head** %4, align 8
  %32 = icmp ne %struct.list_head* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %11
  %34 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %35 = load i32, i32* @REQ_OP_WRITE, align 4
  %36 = load i32, i32* @write_endio, align 4
  %37 = call i32 @submit_io(%struct.dm_buffer* %34, i32 %35, i32 %36)
  br label %43

38:                                               ; preds = %11
  %39 = load %struct.dm_buffer*, %struct.dm_buffer** %3, align 8
  %40 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %39, i32 0, i32 0
  %41 = load %struct.list_head*, %struct.list_head** %4, align 8
  %42 = call i32 @list_add_tail(i32* %40, %struct.list_head* %41)
  br label %43

43:                                               ; preds = %10, %38, %33
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wait_on_bit_lock_io(i32*, i32, i32) #1

declare dso_local i32 @submit_io(%struct.dm_buffer*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
