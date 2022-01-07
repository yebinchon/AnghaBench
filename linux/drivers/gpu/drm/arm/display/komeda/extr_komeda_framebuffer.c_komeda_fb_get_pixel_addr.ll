; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_get_pixel_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/arm/display/komeda/extr_komeda_framebuffer.c_komeda_fb_get_pixel_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.komeda_fb = type { %struct.drm_framebuffer }
%struct.drm_framebuffer = type { i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32*, i32, i32 }
%struct.drm_gem_cma_object = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Out of max plane num.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @komeda_fb_get_pixel_addr(%struct.komeda_fb* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.komeda_fb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.drm_framebuffer*, align 8
  %11 = alloca %struct.drm_gem_cma_object*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.komeda_fb* %0, %struct.komeda_fb** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.komeda_fb*, %struct.komeda_fb** %6, align 8
  %18 = getelementptr inbounds %struct.komeda_fb, %struct.komeda_fb* %17, i32 0, i32 0
  store %struct.drm_framebuffer* %18, %struct.drm_framebuffer** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %21 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %19, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %4
  %27 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %109

30:                                               ; preds = %4
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %31, i32 %32)
  store %struct.drm_gem_cma_object* %33, %struct.drm_gem_cma_object** %11, align 8
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %35 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %103, label %45

45:                                               ; preds = %30
  %46 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %47 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @drm_format_info_block_width(%struct.TYPE_2__* %48, i32 %49)
  store i32 %50, i32* %15, align 4
  %51 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %52 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %65 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  br label %70

69:                                               ; preds = %45
  br label %70

70:                                               ; preds = %69, %63
  %71 = phi i32 [ %68, %63 ], [ 1, %69 ]
  %72 = sdiv i32 %60, %71
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %78 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %77, i32 0, i32 2
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  br label %83

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82, %76
  %84 = phi i32 [ %81, %76 ], [ 1, %82 ]
  %85 = sdiv i32 %73, %84
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = sdiv i32 %86, %87
  %89 = load i32, i32* %16, align 4
  %90 = mul nsw i32 %88, %89
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  %93 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = mul nsw i32 %91, %98
  %100 = add nsw i32 %90, %99
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %83, %30
  %104 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %11, align 8
  %105 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %103, %26
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_format_info_block_width(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
