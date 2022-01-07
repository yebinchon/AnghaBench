; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_new_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_new_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32 }
%struct.dm_buffer = type { i32, i8*, i64, i32 }

@write_list = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@read_endio = common dso_local global i32 0, align 4
@B_READING = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dm_bufio_client*, i32, i32, %struct.dm_buffer**)* @new_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @new_read(%struct.dm_bufio_client* %0, i32 %1, i32 %2, %struct.dm_buffer** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dm_bufio_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_buffer**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_buffer*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_buffer** %3, %struct.dm_buffer*** %9, align 8
  %13 = load i32, i32* @write_list, align 4
  %14 = call i32 @LIST_HEAD(i32 %13)
  %15 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %6, align 8
  %16 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %15)
  %17 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client* %17, i32 %18, i32 %19, i32* %10, i32* @write_list)
  store %struct.dm_buffer* %20, %struct.dm_buffer** %11, align 8
  %21 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %6, align 8
  %22 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %21)
  %23 = call i32 @__flush_write_list(i32* @write_list)
  %24 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %25 = icmp ne %struct.dm_buffer* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %60

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %32 = load i32, i32* @REQ_OP_READ, align 4
  %33 = load i32, i32* @read_endio, align 4
  %34 = call i32 @submit_io(%struct.dm_buffer* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %27
  %36 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %37 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %36, i32 0, i32 3
  %38 = load i32, i32* @B_READING, align 4
  %39 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %40 = call i32 @wait_on_bit_io(i32* %37, i32 %38, i32 %39)
  %41 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %42 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %35
  %46 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %47 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @blk_status_to_errno(i64 %48)
  store i32 %49, i32* %12, align 4
  %50 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %51 = call i32 @dm_bufio_release(%struct.dm_buffer* %50)
  %52 = load i32, i32* %12, align 4
  %53 = call i8* @ERR_PTR(i32 %52)
  store i8* %53, i8** %5, align 8
  br label %60

54:                                               ; preds = %35
  %55 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %56 = load %struct.dm_buffer**, %struct.dm_buffer*** %9, align 8
  store %struct.dm_buffer* %55, %struct.dm_buffer** %56, align 8
  %57 = load %struct.dm_buffer*, %struct.dm_buffer** %11, align 8
  %58 = getelementptr inbounds %struct.dm_buffer, %struct.dm_buffer* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %5, align 8
  br label %60

60:                                               ; preds = %54, %45, %26
  %61 = load i8*, i8** %5, align 8
  ret i8* %61
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client*, i32, i32, i32*, i32*) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

declare dso_local i32 @__flush_write_list(i32*) #1

declare dso_local i32 @submit_io(%struct.dm_buffer*, i32, i32) #1

declare dso_local i32 @wait_on_bit_io(i32*, i32, i32) #1

declare dso_local i32 @blk_status_to_errno(i64) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
