; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_g_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_g_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { i32, i32 }
%struct.saa7146_dev = type { %struct.saa7146_vv* }
%struct.saa7146_vv = type { %struct.v4l2_framebuffer }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@V4L2_FBUF_CAP_LIST_CLIPPING = common dso_local global i32 0, align 4
@V4L2_FBUF_FLAG_PRIMARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_g_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_framebuffer*, align 8
  %7 = alloca %struct.saa7146_dev*, align 8
  %8 = alloca %struct.saa7146_vv*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.saa7146_fh*
  %11 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %10, i32 0, i32 0
  %12 = load %struct.saa7146_dev*, %struct.saa7146_dev** %11, align 8
  store %struct.saa7146_dev* %12, %struct.saa7146_dev** %7, align 8
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %7, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.saa7146_vv*, %struct.saa7146_vv** %14, align 8
  store %struct.saa7146_vv* %15, %struct.saa7146_vv** %8, align 8
  %16 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %17 = load %struct.saa7146_vv*, %struct.saa7146_vv** %8, align 8
  %18 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %17, i32 0, i32 0
  %19 = bitcast %struct.v4l2_framebuffer* %16 to i8*
  %20 = bitcast %struct.v4l2_framebuffer* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 %20, i64 8, i1 false)
  %21 = load i32, i32* @V4L2_FBUF_CAP_LIST_CLIPPING, align 4
  %22 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %23 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @V4L2_FBUF_FLAG_PRIMARY, align 4
  %25 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
