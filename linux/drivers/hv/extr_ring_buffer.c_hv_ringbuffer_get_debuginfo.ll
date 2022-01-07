; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_get_debuginfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_ring_buffer.c_hv_ringbuffer_get_debuginfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hv_ring_buffer_debug_info = type { i32, i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hv_ringbuffer_get_debuginfo(%struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_debug_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hv_ring_buffer_info*, align 8
  %5 = alloca %struct.hv_ring_buffer_debug_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.hv_ring_buffer_info* %0, %struct.hv_ring_buffer_info** %4, align 8
  store %struct.hv_ring_buffer_debug_info* %1, %struct.hv_ring_buffer_debug_info** %5, align 8
  %8 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %9 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %8, i32 0, i32 0
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %12 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %17 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %16, i32 0, i32 0
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %23 = call i32 @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info* %22, i8** %7, i8** %6)
  %24 = load i8*, i8** %7, align 8
  %25 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %5, align 8
  %26 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %5, align 8
  %29 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %31 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %5, align 8
  %36 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %38 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %5, align 8
  %43 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %45 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hv_ring_buffer_debug_info*, %struct.hv_ring_buffer_debug_info** %5, align 8
  %50 = getelementptr inbounds %struct.hv_ring_buffer_debug_info, %struct.hv_ring_buffer_debug_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %4, align 8
  %52 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %21, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hv_get_ringbuffer_availbytes(%struct.hv_ring_buffer_info*, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
