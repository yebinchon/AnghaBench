; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i64, %struct.vb2_buffer** }
%struct.vb2_buffer = type { i32 }

@VB2_MEMORY_MMAP = common dso_local global i64 0, align 8
@VB2_MEMORY_DMABUF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*, i32)* @__vb2_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vb2_free_mem(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_buffer*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sub i32 %9, %10
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %15 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %55

18:                                               ; preds = %12
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 2
  %21 = load %struct.vb2_buffer**, %struct.vb2_buffer*** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.vb2_buffer*, %struct.vb2_buffer** %21, i64 %23
  %25 = load %struct.vb2_buffer*, %struct.vb2_buffer** %24, align 8
  store %struct.vb2_buffer* %25, %struct.vb2_buffer** %6, align 8
  %26 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %27 = icmp ne %struct.vb2_buffer* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  br label %52

29:                                               ; preds = %18
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VB2_MEMORY_MMAP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %37 = call i32 @__vb2_buf_mem_free(%struct.vb2_buffer* %36)
  br label %51

38:                                               ; preds = %29
  %39 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %40 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VB2_MEMORY_DMABUF, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %46 = call i32 @__vb2_buf_dmabuf_put(%struct.vb2_buffer* %45)
  br label %50

47:                                               ; preds = %38
  %48 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %49 = call i32 @__vb2_buf_userptr_put(%struct.vb2_buffer* %48)
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %35
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %12

55:                                               ; preds = %12
  ret void
}

declare dso_local i32 @__vb2_buf_mem_free(%struct.vb2_buffer*) #1

declare dso_local i32 @__vb2_buf_dmabuf_put(%struct.vb2_buffer*) #1

declare dso_local i32 @__vb2_buf_userptr_put(%struct.vb2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
