; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_async_cmd_event_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_devx.c_devx_async_cmd_event_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.devx_async_cmd_event_file* }
%struct.devx_async_cmd_event_file = type { %struct.devx_async_event_queue }
%struct.devx_async_event_queue = type { i32, i32, i64, i32 }
%struct.poll_table_struct = type { i32 }

@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@EPOLLRDHUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.poll_table_struct*)* @devx_async_cmd_event_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devx_async_cmd_event_poll(%struct.file* %0, %struct.poll_table_struct* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.poll_table_struct*, align 8
  %5 = alloca %struct.devx_async_cmd_event_file*, align 8
  %6 = alloca %struct.devx_async_event_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.poll_table_struct* %1, %struct.poll_table_struct** %4, align 8
  %8 = load %struct.file*, %struct.file** %3, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.devx_async_cmd_event_file*, %struct.devx_async_cmd_event_file** %9, align 8
  store %struct.devx_async_cmd_event_file* %10, %struct.devx_async_cmd_event_file** %5, align 8
  %11 = load %struct.devx_async_cmd_event_file*, %struct.devx_async_cmd_event_file** %5, align 8
  %12 = getelementptr inbounds %struct.devx_async_cmd_event_file, %struct.devx_async_cmd_event_file* %11, i32 0, i32 0
  store %struct.devx_async_event_queue* %12, %struct.devx_async_event_queue** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.file*, %struct.file** %3, align 8
  %14 = load %struct.devx_async_event_queue*, %struct.devx_async_event_queue** %6, align 8
  %15 = getelementptr inbounds %struct.devx_async_event_queue, %struct.devx_async_event_queue* %14, i32 0, i32 3
  %16 = load %struct.poll_table_struct*, %struct.poll_table_struct** %4, align 8
  %17 = call i32 @poll_wait(%struct.file* %13, i32* %15, %struct.poll_table_struct* %16)
  %18 = load %struct.devx_async_event_queue*, %struct.devx_async_event_queue** %6, align 8
  %19 = getelementptr inbounds %struct.devx_async_event_queue, %struct.devx_async_event_queue* %18, i32 0, i32 0
  %20 = call i32 @spin_lock_irq(i32* %19)
  %21 = load %struct.devx_async_event_queue*, %struct.devx_async_event_queue** %6, align 8
  %22 = getelementptr inbounds %struct.devx_async_event_queue, %struct.devx_async_event_queue* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @EPOLLIN, align 4
  %27 = load i32, i32* @EPOLLRDNORM, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @EPOLLRDHUP, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.devx_async_event_queue*, %struct.devx_async_event_queue** %6, align 8
  %33 = getelementptr inbounds %struct.devx_async_event_queue, %struct.devx_async_event_queue* %32, i32 0, i32 1
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EPOLLIN, align 4
  %38 = load i32, i32* @EPOLLRDNORM, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %31
  br label %41

41:                                               ; preds = %40, %25
  %42 = load %struct.devx_async_event_queue*, %struct.devx_async_event_queue** %6, align 8
  %43 = getelementptr inbounds %struct.devx_async_event_queue, %struct.devx_async_event_queue* %42, i32 0, i32 0
  %44 = call i32 @spin_unlock_irq(i32* %43)
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, %struct.poll_table_struct*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
