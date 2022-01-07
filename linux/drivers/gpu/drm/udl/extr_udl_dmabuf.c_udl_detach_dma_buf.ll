; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_detach_dma_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/udl/extr_udl_dmabuf.c_udl_detach_dma_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_buf = type { i32 }
%struct.dma_buf_attachment = type { %struct.udl_drm_dmabuf_attachment*, i32, %struct.TYPE_2__* }
%struct.udl_drm_dmabuf_attachment = type { i64, %struct.sg_table }
%struct.sg_table = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"[DEV:%s] size:%zd\0A\00", align 1
@DMA_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_buf*, %struct.dma_buf_attachment*)* @udl_detach_dma_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udl_detach_dma_buf(%struct.dma_buf* %0, %struct.dma_buf_attachment* %1) #0 {
  %3 = alloca %struct.dma_buf*, align 8
  %4 = alloca %struct.dma_buf_attachment*, align 8
  %5 = alloca %struct.udl_drm_dmabuf_attachment*, align 8
  %6 = alloca %struct.sg_table*, align 8
  store %struct.dma_buf* %0, %struct.dma_buf** %3, align 8
  store %struct.dma_buf_attachment* %1, %struct.dma_buf_attachment** %4, align 8
  %7 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %8 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %7, i32 0, i32 0
  %9 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %8, align 8
  store %struct.udl_drm_dmabuf_attachment* %9, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %10 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %11 = icmp ne %struct.udl_drm_dmabuf_attachment* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %52

13:                                               ; preds = %2
  %14 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %15 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @dev_name(i32 %16)
  %18 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %19 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @DRM_DEBUG_PRIME(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %22)
  %24 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %25 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %24, i32 0, i32 1
  store %struct.sg_table* %25, %struct.sg_table** %6, align 8
  %26 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %27 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @DMA_NONE, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %13
  %32 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %33 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %36 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %39 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %42 = getelementptr inbounds %struct.udl_drm_dmabuf_attachment, %struct.udl_drm_dmabuf_attachment* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dma_unmap_sg(i32 %34, i32 %37, i32 %40, i64 %43)
  br label %45

45:                                               ; preds = %31, %13
  %46 = load %struct.sg_table*, %struct.sg_table** %6, align 8
  %47 = call i32 @sg_free_table(%struct.sg_table* %46)
  %48 = load %struct.udl_drm_dmabuf_attachment*, %struct.udl_drm_dmabuf_attachment** %5, align 8
  %49 = call i32 @kfree(%struct.udl_drm_dmabuf_attachment* %48)
  %50 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %4, align 8
  %51 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %50, i32 0, i32 0
  store %struct.udl_drm_dmabuf_attachment* null, %struct.udl_drm_dmabuf_attachment** %51, align 8
  br label %52

52:                                               ; preds = %45, %12
  ret void
}

declare dso_local i32 @DRM_DEBUG_PRIME(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i64) #1

declare dso_local i32 @sg_free_table(%struct.sg_table*) #1

declare dso_local i32 @kfree(%struct.udl_drm_dmabuf_attachment*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
