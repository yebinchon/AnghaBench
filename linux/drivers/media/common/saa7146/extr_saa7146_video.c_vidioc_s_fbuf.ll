; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { i8*, %struct.v4l2_framebuffer, %struct.saa7146_format* }
%struct.saa7146_format = type { i32, i32, i32 }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [15 x i8] c"VIDIOC_S_FBUF\0A\00", align 1
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FORMAT_IS_PLANAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"planar pixelformat '%4.4s' not allowed for overlay\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"refusing to change framebuffer information while overlay is active in another open\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"setting bytesperline to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca %struct.saa7146_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.saa7146_fh*
  %13 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %12, i32 0, i32 0
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %13, align 8
  store %struct.saa7146_dev* %14, %struct.saa7146_dev** %8, align 8
  %15 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %16 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %15, i32 0, i32 0
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %16, align 8
  store %struct.saa7146_vv* %17, %struct.saa7146_vv** %9, align 8
  %18 = call i32 @DEB_EE(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %20 = call i32 @capable(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %24 = call i32 @capable(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EPERM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %110

29:                                               ; preds = %22, %3
  %30 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %31 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev* %30, i32 %34)
  store %struct.saa7146_format* %35, %struct.saa7146_format** %10, align 8
  %36 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %37 = icmp eq %struct.saa7146_format* null, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %110

41:                                               ; preds = %29
  %42 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %43 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @FORMAT_IS_PLANAR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %50 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %49, i32 0, i32 2
  %51 = bitcast i32* %50 to i8*
  %52 = call i32 @DEB_S(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %48, %41
  %54 = load i8*, i8** %6, align 8
  %55 = call i64 @IS_OVERLAY_ACTIVE(i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %59 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %110

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %53
  %69 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %70 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %69, i32 0, i32 1
  %71 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %72 = bitcast %struct.v4l2_framebuffer* %70 to i8*
  %73 = bitcast %struct.v4l2_framebuffer* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 4 %73, i64 12, i1 false)
  %74 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %75 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %76 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %75, i32 0, i32 2
  store %struct.saa7146_format* %74, %struct.saa7146_format** %76, align 8
  %77 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %78 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %83 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %81, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %68
  %89 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %90 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.saa7146_format*, %struct.saa7146_format** %10, align 8
  %95 = getelementptr inbounds %struct.saa7146_format, %struct.saa7146_format* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %93, %96
  %98 = sdiv i32 %97, 8
  %99 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %100 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i32 %98, i32* %102, align 8
  %103 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %104 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) @DEB_D(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %88, %68
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %63, %38, %26
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.saa7146_format* @saa7146_format_by_fourcc(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @DEB_S(i8*, i8*) #1

declare dso_local i64 @IS_OVERLAY_ACTIVE(i8*) #1

declare dso_local i32 @DEB_D(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
