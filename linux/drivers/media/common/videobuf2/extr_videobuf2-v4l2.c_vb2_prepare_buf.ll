; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_prepare_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_prepare_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.media_device = type { i32 }
%struct.v4l2_buffer = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"file io in progress\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_REQUEST_FD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_prepare_buf(%struct.vb2_queue* %0, %struct.media_device* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vb2_queue*, align 8
  %6 = alloca %struct.media_device*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %5, align 8
  store %struct.media_device* %1, %struct.media_device** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %10 = call i64 @vb2_fileio_is_active(%struct.vb2_queue* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %44

16:                                               ; preds = %3
  %17 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_BUF_FLAG_REQUEST_FD, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %16
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %28 = load %struct.media_device*, %struct.media_device** %6, align 8
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %30 = call i32 @vb2_queue_or_prepare_buf(%struct.vb2_queue* %27, %struct.media_device* %28, %struct.v4l2_buffer* %29, i32 1, i32* null)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  br label %42

35:                                               ; preds = %26
  %36 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %37 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %41 = call i32 @vb2_core_prepare_buf(%struct.vb2_queue* %36, i32 %39, %struct.v4l2_buffer* %40)
  br label %42

42:                                               ; preds = %35, %33
  %43 = phi i32 [ %34, %33 ], [ %41, %35 ]
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %42, %23, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @vb2_fileio_is_active(%struct.vb2_queue*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @vb2_queue_or_prepare_buf(%struct.vb2_queue*, %struct.media_device*, %struct.v4l2_buffer*, i32, i32*) #1

declare dso_local i32 @vb2_core_prepare_buf(%struct.vb2_queue*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
