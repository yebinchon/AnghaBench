; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_plane_dmabuf_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-core.c___vb2_plane_dmabuf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32 }
%struct.vb2_plane = type { i64, i32*, i32* }

@unmap_dmabuf = common dso_local global i32 0, align 4
@detach_dmabuf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_buffer*, %struct.vb2_plane*)* @__vb2_plane_dmabuf_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vb2_plane_dmabuf_put(%struct.vb2_buffer* %0, %struct.vb2_plane* %1) #0 {
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.vb2_plane*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  store %struct.vb2_plane* %1, %struct.vb2_plane** %4, align 8
  %5 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %6 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %39

10:                                               ; preds = %2
  %11 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %12 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %17 = load i32, i32* @unmap_dmabuf, align 4
  %18 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %19 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @call_void_memop(%struct.vb2_buffer* %16, i32 %17, i32* %20)
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %24 = load i32, i32* @detach_dmabuf, align 4
  %25 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %26 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @call_void_memop(%struct.vb2_buffer* %23, i32 %24, i32* %27)
  %29 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %30 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dma_buf_put(i32* %31)
  %33 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %34 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %36 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.vb2_plane*, %struct.vb2_plane** %4, align 8
  %38 = getelementptr inbounds %struct.vb2_plane, %struct.vb2_plane* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %22, %9
  ret void
}

declare dso_local i32 @call_void_memop(%struct.vb2_buffer*, i32, i32*) #1

declare dso_local i32 @dma_buf_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
