; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_fb_blit_rect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/cirrus/extr_cirrus.c_cirrus_fb_blit_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { %struct.cirrus_device* }
%struct.cirrus_device = type { i32, i32, i32 }
%struct.drm_rect = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cpp mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_framebuffer*, %struct.drm_rect*)* @cirrus_fb_blit_rect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cirrus_fb_blit_rect(%struct.drm_framebuffer* %0, %struct.drm_rect* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.drm_rect*, align 8
  %6 = alloca %struct.cirrus_device*, align 8
  %7 = alloca i8*, align 8
  store %struct.drm_framebuffer* %0, %struct.drm_framebuffer** %4, align 8
  store %struct.drm_rect* %1, %struct.drm_rect** %5, align 8
  %8 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %9 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.cirrus_device*, %struct.cirrus_device** %11, align 8
  store %struct.cirrus_device* %12, %struct.cirrus_device** %6, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @drm_gem_shmem_vmap(i32 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %106

24:                                               ; preds = %2
  %25 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %26 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %27, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %24
  %37 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %38 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %42 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %43 = call i32 @drm_fb_memcpy_dstclip(i32 %39, i8* %40, %struct.drm_framebuffer* %41, %struct.drm_rect* %42)
  br label %98

44:                                               ; preds = %24
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %69

53:                                               ; preds = %44
  %54 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %55 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %60 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %63 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %67 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %68 = call i32 @drm_fb_xrgb8888_to_rgb565_dstclip(i32 %61, i32 %64, i8* %65, %struct.drm_framebuffer* %66, %struct.drm_rect* %67, i32 0)
  br label %97

69:                                               ; preds = %53, %44
  %70 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %71 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 4
  br i1 %77, label %78, label %94

78:                                               ; preds = %69
  %79 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %80 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 3
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %85 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cirrus_device*, %struct.cirrus_device** %6, align 8
  %88 = getelementptr inbounds %struct.cirrus_device, %struct.cirrus_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %92 = load %struct.drm_rect*, %struct.drm_rect** %5, align 8
  %93 = call i32 @drm_fb_xrgb8888_to_rgb888_dstclip(i32 %86, i32 %89, i8* %90, %struct.drm_framebuffer* %91, %struct.drm_rect* %92)
  br label %96

94:                                               ; preds = %78, %69
  %95 = call i32 @WARN_ON_ONCE(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %83
  br label %97

97:                                               ; preds = %96, %58
  br label %98

98:                                               ; preds = %97, %36
  %99 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %100 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @drm_gem_shmem_vunmap(i32 %103, i8* %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %98, %21
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i8* @drm_gem_shmem_vmap(i32) #1

declare dso_local i32 @drm_fb_memcpy_dstclip(i32, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @drm_fb_xrgb8888_to_rgb565_dstclip(i32, i32, i8*, %struct.drm_framebuffer*, %struct.drm_rect*, i32) #1

declare dso_local i32 @drm_fb_xrgb8888_to_rgb888_dstclip(i32, i32, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @WARN_ON_ONCE(i8*) #1

declare dso_local i32 @drm_gem_shmem_vunmap(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
