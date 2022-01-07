; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c_vb2_ioctl_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_create_buffers = type { i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.video_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vb2_ioctl_create_bufs(%struct.file* %0, i8* %1, %struct.v4l2_create_buffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_create_buffers*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_create_buffers* %2, %struct.v4l2_create_buffers** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %8, align 8
  %12 = load %struct.video_device*, %struct.video_device** %8, align 8
  %13 = getelementptr inbounds %struct.video_device, %struct.video_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %19 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @vb2_verify_memory_type(%struct.TYPE_6__* %14, i32 %17, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.video_device*, %struct.video_device** %8, align 8
  %24 = getelementptr inbounds %struct.video_device, %struct.video_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %29 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.video_device*, %struct.video_device** %8, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %33, i32 0, i32 1
  %35 = call i32 @fill_buf_caps(%struct.TYPE_6__* %32, i32* %34)
  %36 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %37 = getelementptr inbounds %struct.v4l2_create_buffers, %struct.v4l2_create_buffers* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %3
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %9, align 4
  br label %48

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  store i32 %49, i32* %4, align 4
  br label %81

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %4, align 4
  br label %81

55:                                               ; preds = %50
  %56 = load %struct.video_device*, %struct.video_device** %8, align 8
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = call i64 @vb2_queue_is_busy(%struct.video_device* %56, %struct.file* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %4, align 4
  br label %81

63:                                               ; preds = %55
  %64 = load %struct.video_device*, %struct.video_device** %8, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load %struct.v4l2_create_buffers*, %struct.v4l2_create_buffers** %7, align 8
  %68 = call i32 @vb2_create_bufs(%struct.TYPE_6__* %66, %struct.v4l2_create_buffers* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %63
  %72 = load %struct.file*, %struct.file** %5, align 8
  %73 = getelementptr inbounds %struct.file, %struct.file* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.video_device*, %struct.video_device** %8, align 8
  %76 = getelementptr inbounds %struct.video_device, %struct.video_device* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %63
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %79, %60, %53, %48
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vb2_verify_memory_type(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fill_buf_caps(%struct.TYPE_6__*, i32*) #1

declare dso_local i64 @vb2_queue_is_busy(%struct.video_device*, %struct.file*) #1

declare dso_local i32 @vb2_create_bufs(%struct.TYPE_6__*, %struct.v4l2_create_buffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
