; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_fill_buf_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_fill_buf_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32, i64 }

@V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@V4L2_BUF_CAP_SUPPORTS_MMAP = common dso_local global i32 0, align 4
@VB2_USERPTR = common dso_local global i32 0, align 4
@V4L2_BUF_CAP_SUPPORTS_USERPTR = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@V4L2_BUF_CAP_SUPPORTS_DMABUF = common dso_local global i32 0, align 4
@V4L2_BUF_CAP_SUPPORTS_REQUESTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*, i32*)* @fill_buf_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_buf_caps(%struct.vb2_queue* %0, i32* %1) #0 {
  %3 = alloca %struct.vb2_queue*, align 8
  %4 = alloca i32*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32, i32* @V4L2_BUF_CAP_SUPPORTS_ORPHANED_BUFS, align 4
  %6 = load i32*, i32** %4, align 8
  store i32 %5, i32* %6, align 4
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %8 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @VB2_MMAP, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @V4L2_BUF_CAP_SUPPORTS_MMAP, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %14
  store i32 %17, i32* %15, align 4
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %20 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VB2_USERPTR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load i32, i32* @V4L2_BUF_CAP_SUPPORTS_USERPTR, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.vb2_queue*, %struct.vb2_queue** %3, align 8
  %32 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VB2_DMABUF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @V4L2_BUF_CAP_SUPPORTS_DMABUF, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %30
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
