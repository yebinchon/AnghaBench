; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.TYPE_4__ }

@.str = private unnamed_addr constant [44 x i8] c"V4L2_BUF_TYPE_VIDEO_CAPTURE: dev:%p, fh:%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"streaming capture is active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"set to pixelformat '%4.4s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.saa7146_fh*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca %struct.saa7146_vv*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %13, %struct.saa7146_fh** %8, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %9, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %10, align 8
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %21 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %22 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %20, %struct.saa7146_fh* %21)
  %23 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %24 = call i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %52

30:                                               ; preds = %3
  %31 = load %struct.file*, %struct.file** %5, align 8
  %32 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = call i32 @vidioc_try_fmt_vid_cap(%struct.file* %31, %struct.saa7146_fh* %32, %struct.v4l2_format* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 0, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %52

39:                                               ; preds = %30
  %40 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %41 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %40, i32 0, i32 0
  %42 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = bitcast %struct.TYPE_4__* %41 to i8*
  %46 = bitcast %struct.TYPE_4__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %48 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = bitcast i32* %49 to i8*
  %51 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %39, %37, %26
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @DEB_EE(i8*, ...) #1

declare dso_local i64 @IS_CAPTURE_ACTIVE(%struct.saa7146_fh*) #1

declare dso_local i32 @vidioc_try_fmt_vid_cap(%struct.file*, %struct.saa7146_fh*, %struct.v4l2_format*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
