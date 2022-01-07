; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_buf_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_buf_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_rect = type { i32 }
%struct.drm_gem_cma_object = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dma_buf_attachment* }
%struct.dma_buf_attachment = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.drm_framebuffer*, %struct.drm_rect*)* @st7586_buf_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st7586_buf_copy(i8* %0, %struct.drm_framebuffer* %1, %struct.drm_rect* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.drm_rect*, align 8
  %8 = alloca %struct.drm_gem_cma_object*, align 8
  %9 = alloca %struct.dma_buf_attachment*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store %struct.drm_rect* %2, %struct.drm_rect** %7, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %13 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %12, i32 0)
  store %struct.drm_gem_cma_object* %13, %struct.drm_gem_cma_object** %8, align 8
  %14 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %15 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %16, align 8
  store %struct.dma_buf_attachment* %17, %struct.dma_buf_attachment** %9, align 8
  %18 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %8, align 8
  %19 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %21 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %9, align 8
  %22 = icmp ne %struct.dma_buf_attachment* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %3
  %24 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %9, align 8
  %25 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_buf_begin_cpu_access(i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %3
  %35 = load i8*, i8** %5, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %38 = load %struct.drm_rect*, %struct.drm_rect** %7, align 8
  %39 = call i32 @st7586_xrgb8888_to_gray332(i8* %35, i8* %36, %struct.drm_framebuffer* %37, %struct.drm_rect* %38)
  %40 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %9, align 8
  %41 = icmp ne %struct.dma_buf_attachment* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %9, align 8
  %44 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = call i32 @dma_buf_end_cpu_access(i32 %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %42, %34
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %31
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @dma_buf_begin_cpu_access(i32, i32) #1

declare dso_local i32 @st7586_xrgb8888_to_gray332(i8*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @dma_buf_end_cpu_access(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
