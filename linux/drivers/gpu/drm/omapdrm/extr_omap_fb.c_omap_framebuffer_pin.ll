; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/extr_omap_fb.c_omap_framebuffer_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.omap_framebuffer = type { i64, i32, %struct.plane* }
%struct.plane = type { i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap_framebuffer_pin(%struct.drm_framebuffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.omap_framebuffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.plane*, align 8
  %9 = alloca %struct.plane*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %3, align 8
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %11 = call %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer* %10)
  store %struct.omap_framebuffer* %11, %struct.omap_framebuffer** %4, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %13 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %18 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %21 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %26 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %30 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  store i32 0, i32* %2, align 4
  br label %109

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %67, %32
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %70

37:                                               ; preds = %33
  %38 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %39 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %38, i32 0, i32 2
  %40 = load %struct.plane*, %struct.plane** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.plane, %struct.plane* %40, i64 %42
  store %struct.plane* %43, %struct.plane** %8, align 8
  %44 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %45 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.plane*, %struct.plane** %8, align 8
  %52 = getelementptr inbounds %struct.plane, %struct.plane* %51, i32 0, i32 0
  %53 = call i32 @omap_gem_pin(i32 %50, i64* %52)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %78

57:                                               ; preds = %37
  %58 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %59 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @omap_gem_dma_sync_buffer(i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %57
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %33

70:                                               ; preds = %33
  %71 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %72 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %76 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  store i32 0, i32* %2, align 4
  br label %109

78:                                               ; preds = %56
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %101, %78
  %82 = load i32, i32* %6, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %81
  %85 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %86 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %85, i32 0, i32 2
  %87 = load %struct.plane*, %struct.plane** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.plane, %struct.plane* %87, i64 %89
  store %struct.plane* %90, %struct.plane** %9, align 8
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %92 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @omap_gem_unpin(i32 %97)
  %99 = load %struct.plane*, %struct.plane** %9, align 8
  %100 = getelementptr inbounds %struct.plane, %struct.plane* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %84
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %6, align 4
  br label %81

104:                                              ; preds = %81
  %105 = load %struct.omap_framebuffer*, %struct.omap_framebuffer** %4, align 8
  %106 = getelementptr inbounds %struct.omap_framebuffer, %struct.omap_framebuffer* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %5, align 4
  store i32 %108, i32* %2, align 4
  br label %109

109:                                              ; preds = %104, %70, %24
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.omap_framebuffer* @to_omap_framebuffer(%struct.drm_framebuffer*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @omap_gem_pin(i32, i64*) #1

declare dso_local i32 @omap_gem_dma_sync_buffer(i32, i32) #1

declare dso_local i32 @omap_gem_unpin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
