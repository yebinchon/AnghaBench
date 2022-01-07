; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_buf_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_mipi_dbi.c_mipi_dbi_buf_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.drm_rect = type { i32 }
%struct.drm_gem_object = type { %struct.dma_buf_attachment* }
%struct.dma_buf_attachment = type { i32 }
%struct.drm_gem_cma_object = type { i8* }
%struct.drm_format_name_buf = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Format is not supported: %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mipi_dbi_buf_copy(i8* %0, %struct.drm_framebuffer* %1, %struct.drm_rect* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_gem_object*, align 8
  %11 = alloca %struct.drm_gem_cma_object*, align 8
  %12 = alloca %struct.dma_buf_attachment*, align 8
  %13 = alloca %struct.drm_format_name_buf, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_rect* %2, %struct.drm_rect** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %17 = call %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer* %16, i32 0)
  store %struct.drm_gem_object* %17, %struct.drm_gem_object** %10, align 8
  %18 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %19 = call %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object* %18)
  store %struct.drm_gem_cma_object* %19, %struct.drm_gem_cma_object** %11, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %10, align 8
  %21 = getelementptr inbounds %struct.drm_gem_object, %struct.drm_gem_object* %20, i32 0, i32 0
  %22 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %21, align 8
  store %struct.dma_buf_attachment* %22, %struct.dma_buf_attachment** %12, align 8
  %23 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %24 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %14, align 8
  store i32 0, i32* %15, align 4
  %26 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %12, align 8
  %27 = icmp ne %struct.dma_buf_attachment* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %4
  %29 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %12, align 8
  %30 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %33 = call i32 @dma_buf_begin_cpu_access(i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %15, align 4
  store i32 %37, i32* %5, align 4
  br label %94

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %4
  %40 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %41 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %68 [
    i32 129, label %45
    i32 128, label %61
  ]

45:                                               ; preds = %39
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %52 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %53 = call i32 @drm_fb_swab16(i8* %49, i8* %50, %struct.drm_framebuffer* %51, %struct.drm_rect* %52)
  br label %60

54:                                               ; preds = %45
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %58 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %59 = call i32 @drm_fb_memcpy(i8* %55, i8* %56, %struct.drm_framebuffer* %57, %struct.drm_rect* %58)
  br label %60

60:                                               ; preds = %54, %48
  br label %83

61:                                               ; preds = %39
  %62 = load i8*, i8** %6, align 8
  %63 = load i8*, i8** %14, align 8
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %65 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @drm_fb_xrgb8888_to_rgb565(i8* %62, i8* %63, %struct.drm_framebuffer* %64, %struct.drm_rect* %65, i32 %66)
  br label %83

68:                                               ; preds = %39
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %70 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %75 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @drm_get_format_name(i32 %78, %struct.drm_format_name_buf* %13)
  %80 = call i32 @dev_err_once(i32 %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %94

83:                                               ; preds = %61, %60
  %84 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %12, align 8
  %85 = icmp ne %struct.dma_buf_attachment* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load %struct.dma_buf_attachment*, %struct.dma_buf_attachment** %12, align 8
  %88 = getelementptr inbounds %struct.dma_buf_attachment, %struct.dma_buf_attachment* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %91 = call i32 @dma_buf_end_cpu_access(i32 %89, i32 %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %68, %36
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local %struct.drm_gem_object* @drm_gem_fb_get_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local %struct.drm_gem_cma_object* @to_drm_gem_cma_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @dma_buf_begin_cpu_access(i32, i32) #1

declare dso_local i32 @drm_fb_swab16(i8*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @drm_fb_memcpy(i8*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @drm_fb_xrgb8888_to_rgb565(i8*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*, i32) #1

declare dso_local i32 @dev_err_once(i32, i8*, i32) #1

declare dso_local i32 @drm_get_format_name(i32, %struct.drm_format_name_buf*) #1

declare dso_local i32 @dma_buf_end_cpu_access(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
