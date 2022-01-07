; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c_vb2_thread_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.vb2_threadio_data* }
%struct.vb2_threadio_data = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_thread_stop(%struct.vb2_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca %struct.vb2_threadio_data*, align 8
  %5 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  %6 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %7 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %6, i32 0, i32 0
  %8 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %7, align 8
  store %struct.vb2_threadio_data* %8, %struct.vb2_threadio_data** %4, align 8
  %9 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %10 = icmp eq %struct.vb2_threadio_data* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

12:                                               ; preds = %1
  %13 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %14 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %16 = call i32 @vb2_queue_error(%struct.vb2_queue* %15)
  %17 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %18 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @kthread_stop(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %22 = call i32 @__vb2_cleanup_fileio(%struct.vb2_queue* %21)
  %23 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %24 = getelementptr inbounds %struct.vb2_threadio_data, %struct.vb2_threadio_data* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.vb2_threadio_data*, %struct.vb2_threadio_data** %4, align 8
  %26 = call i32 @kfree(%struct.vb2_threadio_data* %25)
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  store %struct.vb2_threadio_data* null, %struct.vb2_threadio_data** %28, align 8
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %12, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @vb2_queue_error(%struct.vb2_queue*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @__vb2_cleanup_fileio(%struct.vb2_queue*) #1

declare dso_local i32 @kfree(%struct.vb2_threadio_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
