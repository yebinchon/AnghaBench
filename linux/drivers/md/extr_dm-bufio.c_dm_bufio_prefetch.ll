; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_prefetch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-bufio.c_dm_bufio_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_bufio_client = type { i32 }
%struct.blk_plug = type { i32 }
%struct.dm_buffer = type { i32 }

@write_list = common dso_local global i32 0, align 4
@NF_PREFETCH = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@read_endio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_bufio_prefetch(%struct.dm_bufio_client* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dm_bufio_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.blk_plug, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_buffer*, align 8
  store %struct.dm_bufio_client* %0, %struct.dm_bufio_client** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @write_list, align 4
  %11 = call i32 @LIST_HEAD(i32 %10)
  %12 = call i32 (...) @dm_bufio_in_request()
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  %15 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %16 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %15)
  br label %17

17:                                               ; preds = %67, %3
  %18 = load i32, i32* %6, align 4
  %19 = add i32 %18, -1
  store i32 %19, i32* %6, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @NF_PREFETCH, align 4
  %25 = call %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client* %22, i32 %23, i32 %24, i32* %8, i32* @write_list)
  store %struct.dm_buffer* %25, %struct.dm_buffer** %9, align 8
  %26 = call i32 @list_empty(i32* @write_list)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %21
  %33 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %34 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %33)
  %35 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  %36 = call i32 @__flush_write_list(i32* @write_list)
  %37 = call i32 @blk_start_plug(%struct.blk_plug* %7)
  %38 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %39 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %38)
  br label %40

40:                                               ; preds = %32, %21
  %41 = load %struct.dm_buffer*, %struct.dm_buffer** %9, align 8
  %42 = icmp ne %struct.dm_buffer* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %40
  %47 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %48 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %47)
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.dm_buffer*, %struct.dm_buffer** %9, align 8
  %53 = load i32, i32* @REQ_OP_READ, align 4
  %54 = load i32, i32* @read_endio, align 4
  %55 = call i32 @submit_io(%struct.dm_buffer* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.dm_buffer*, %struct.dm_buffer** %9, align 8
  %58 = call i32 @dm_bufio_release(%struct.dm_buffer* %57)
  %59 = call i32 (...) @cond_resched()
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %73

63:                                               ; preds = %56
  %64 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %65 = call i32 @dm_bufio_lock(%struct.dm_bufio_client* %64)
  br label %66

66:                                               ; preds = %63, %40
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %17

70:                                               ; preds = %17
  %71 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %4, align 8
  %72 = call i32 @dm_bufio_unlock(%struct.dm_bufio_client* %71)
  br label %73

73:                                               ; preds = %70, %62
  %74 = call i32 @blk_finish_plug(%struct.blk_plug* %7)
  ret void
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dm_bufio_in_request(...) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @dm_bufio_lock(%struct.dm_bufio_client*) #1

declare dso_local %struct.dm_buffer* @__bufio_new(%struct.dm_bufio_client*, i32, i32, i32*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @dm_bufio_unlock(%struct.dm_bufio_client*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

declare dso_local i32 @__flush_write_list(i32*) #1

declare dso_local i32 @submit_io(%struct.dm_buffer*, i32, i32) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
