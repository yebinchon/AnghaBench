; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_fops.c_fops_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.saa7146_fh* }
%struct.saa7146_fh = type { %struct.videobuf_queue, %struct.TYPE_4__*, %struct.videobuf_queue }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.videobuf_queue = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.video_device = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"V4L2_BUF_TYPE_VIDEO_CAPTURE: file:%p, vma:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VBI_CAPTURE: file:%p, vma:%p\0A\00", align 1
@V4L2_CAP_SLICED_VBI_OUTPUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @fops_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fops_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.video_device*, align 8
  %7 = alloca %struct.saa7146_fh*, align 8
  %8 = alloca %struct.videobuf_queue*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %6, align 8
  %12 = load %struct.file*, %struct.file** %4, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %13, align 8
  store %struct.saa7146_fh* %14, %struct.saa7146_fh** %7, align 8
  %15 = load %struct.video_device*, %struct.video_device** %6, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %44 [
    i32 129, label %18
    i32 128, label %24
  ]

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %21 = call i32 @DEB_EE(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.file* %19, %struct.vm_area_struct* %20)
  %22 = load %struct.saa7146_fh*, %struct.saa7146_fh** %7, align 8
  %23 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %22, i32 0, i32 2
  store %struct.videobuf_queue* %23, %struct.videobuf_queue** %8, align 8
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %27 = call i32 @DEB_EE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), %struct.file* %25, %struct.vm_area_struct* %26)
  %28 = load %struct.saa7146_fh*, %struct.saa7146_fh** %7, align 8
  %29 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @V4L2_CAP_SLICED_VBI_OUTPUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %64

41:                                               ; preds = %24
  %42 = load %struct.saa7146_fh*, %struct.saa7146_fh** %7, align 8
  %43 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %42, i32 0, i32 0
  store %struct.videobuf_queue* %43, %struct.videobuf_queue** %8, align 8
  br label %46

44:                                               ; preds = %2
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %44, %41, %18
  %47 = load %struct.video_device*, %struct.video_device** %6, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @mutex_lock_interruptible(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ERESTARTSYS, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %64

55:                                               ; preds = %46
  %56 = load %struct.videobuf_queue*, %struct.videobuf_queue** %8, align 8
  %57 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %58 = call i32 @videobuf_mmap_mapper(%struct.videobuf_queue* %56, %struct.vm_area_struct* %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.video_device*, %struct.video_device** %6, align 8
  %60 = getelementptr inbounds %struct.video_device, %struct.video_device* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @mutex_unlock(i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %55, %52, %38
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @DEB_EE(i8*, %struct.file*, %struct.vm_area_struct*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @mutex_lock_interruptible(i32) #1

declare dso_local i32 @videobuf_mmap_mapper(%struct.videobuf_queue*, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
