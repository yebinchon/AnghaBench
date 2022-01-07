; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_sync_file.c_sync_file_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.sync_file* }
%struct.sync_file = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@POLL_ENABLED = common dso_local global i32 0, align 4
@fence_check_cb_func = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @sync_file_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sync_file_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sync_file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.sync_file*, %struct.sync_file** %7, align 8
  store %struct.sync_file* %8, %struct.sync_file** %5, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %11 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %10, i32 0, i32 1
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @poll_wait(%struct.file* %9, i32* %11, i32* %12)
  %14 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %15 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @list_empty(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %2
  %20 = load i32, i32* @POLL_ENABLED, align 4
  %21 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %22 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %21, i32 0, i32 3
  %23 = call i32 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %19
  %26 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %27 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %30 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %29, i32 0, i32 2
  %31 = load i32, i32* @fence_check_cb_func, align 4
  %32 = call i64 @dma_fence_add_callback(i32 %28, %struct.TYPE_2__* %30, i32 %31)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %25
  %35 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %36 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %35, i32 0, i32 1
  %37 = call i32 @wake_up_all(i32* %36)
  br label %38

38:                                               ; preds = %34, %25
  br label %39

39:                                               ; preds = %38, %19, %2
  %40 = load %struct.sync_file*, %struct.sync_file** %5, align 8
  %41 = getelementptr inbounds %struct.sync_file, %struct.sync_file* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @dma_fence_is_signaled(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @EPOLLIN, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @dma_fence_add_callback(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i64 @dma_fence_is_signaled(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
