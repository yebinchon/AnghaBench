; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_attach_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_attach_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type { %struct.udl_drm_dmabuf_attachment*, %struct.TYPE_2__*, i32 }
%struct.udl_drm_dmabuf_attachment = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[DEV:%s] size:%zd\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_buf*, %struct.dma_buf_attachment*)* @udl_attach_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udl_attach_dma_buf(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_buf*, align 8
  %5 = alloca %struct.dma_buf_attachment*, align 8
  %6 = alloca %struct.udl_drm_dmabuf_attachment*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %4, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %5, align 8
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @dev_name(i32 %9)
  %11 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %12 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DRM_DEBUG_PRIME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.udl_drm_dmabuf_attachment* @kzalloc(i32 4, i32 %17)
  store %struct.udl_drm_dmabuf_attachment* %18, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %19 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %20 = icmp ne %struct.udl_drm_dmabuf_attachment* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %2
  %25 = load i32, i32* @DMA_NONE, align 4
  %26 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %27 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %6, align 8
  %29 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %5, align 8
  %30 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %29, i32 0, i32 0
  store %struct.udl_drm_dmabuf_attachment* %28, %struct.udl_drm_dmabuf_attachment** %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @DRM_DEBUG_PRIME(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.udl_drm_dmabuf_attachment* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
