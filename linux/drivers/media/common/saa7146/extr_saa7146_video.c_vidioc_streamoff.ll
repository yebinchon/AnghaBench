; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_fh = type { i32, i32, %struct.saa7146_dev* }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i32, %struct.saa7146_fh* }

@.str = private unnamed_addr constant [27 x i8] c"VIDIOC_STREAMOFF, type:%d\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"not capturing\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"capturing, but in another open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"warning: videobuf_streamoff() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_fh*, align 8
  %9 = alloca %struct.saa7146_dev*, align 8
  %10 = alloca %struct.saa7146_vv*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.saa7146_fh*
  store %struct.saa7146_fh* %13, %struct.saa7146_fh** %8, align 8
  %14 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 2
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %9, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %9, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 0
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %23 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @STATUS_CAPTURE, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @STATUS_CAPTURE, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = call i32 @DEB_S(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %74

31:                                               ; preds = %3
  %32 = load %struct.saa7146_vv*, %struct.saa7146_vv** %10, align 8
  %33 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %32, i32 0, i32 1
  %34 = load %struct.saa7146_fh*, %struct.saa7146_fh** %33, align 8
  %35 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %36 = icmp ne %struct.saa7146_fh* %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @DEB_S(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %74

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %49 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %48, i32 0, i32 1
  %50 = call i32 @videobuf_streamoff(i32* %49)
  store i32 %50, i32* %11, align 4
  br label %60

51:                                               ; preds = %41
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %57 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %56, i32 0, i32 0
  %58 = call i32 @videobuf_streamoff(i32* %57)
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %55, %51
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 0, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %65 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %66 = load %struct.file*, %struct.file** %5, align 8
  %67 = call i32 @video_end(%struct.saa7146_fh* %65, %struct.file* %66)
  br label %72

68:                                               ; preds = %60
  %69 = load %struct.saa7146_fh*, %struct.saa7146_fh** %8, align 8
  %70 = load %struct.file*, %struct.file** %5, align 8
  %71 = call i32 @video_end(%struct.saa7146_fh* %69, %struct.file* %70)
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %68, %63
  %73 = load i32, i32* %11, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %72, %37, %29
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @DEB_D(i8*, ...) #1

declare dso_local i32 @DEB_S(i8*) #1

declare dso_local i32 @videobuf_streamoff(i32*) #1

declare dso_local i32 @video_end(%struct.saa7146_fh*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
