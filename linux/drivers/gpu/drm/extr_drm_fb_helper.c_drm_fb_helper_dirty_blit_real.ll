; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_dirty_blit_real.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_fb_helper.c_drm_fb_helper_dirty_blit_real.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_fb_helper = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.drm_framebuffer* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.drm_clip_rect = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_fb_helper*, %struct.drm_clip_rect*)* @drm_fb_helper_dirty_blit_real to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_fb_helper_dirty_blit_real(%struct.drm_fb_helper* %0, %struct.drm_clip_rect* %1) #0 {
  %3 = alloca %struct.drm_fb_helper*, align 8
  %4 = alloca %struct.drm_clip_rect*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.drm_fb_helper* %0, %struct.drm_fb_helper** %3, align 8
  store %struct.drm_clip_rect* %1, %struct.drm_clip_rect** %4, align 8
  %12 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %13 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %12, i32 0, i32 2
  %14 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %13, align 8
  store %struct.drm_framebuffer* %14, %struct.drm_framebuffer** %5, align 8
  %15 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %16 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %23 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %26 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = mul i32 %24, %29
  %31 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %32 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul i32 %33, %34
  %36 = add i32 %30, %35
  %37 = zext i32 %36 to i64
  store i64 %37, i64* %7, align 8
  %38 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %39 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr i8, i8* %42, i64 %43
  store i8* %44, i8** %8, align 8
  %45 = load %struct.drm_fb_helper*, %struct.drm_fb_helper** %3, align 8
  %46 = getelementptr inbounds %struct.drm_fb_helper, %struct.drm_fb_helper* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %9, align 8
  %52 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %53 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %56 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub i32 %54, %57
  %59 = load i32, i32* %6, align 4
  %60 = mul i32 %58, %59
  %61 = zext i32 %60 to i64
  store i64 %61, i64* %10, align 8
  %62 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %63 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %92, %2
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.drm_clip_rect*, %struct.drm_clip_rect** %4, align 8
  %68 = getelementptr inbounds %struct.drm_clip_rect, %struct.drm_clip_rect* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %95

71:                                               ; preds = %65
  %72 = load i8*, i8** %9, align 8
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @memcpy(i8* %72, i8* %73, i64 %74)
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %77 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = zext i32 %80 to i64
  %83 = getelementptr i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  %84 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %85 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr i8, i8* %89, i64 %90
  store i8* %91, i8** %9, align 8
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %65

95:                                               ; preds = %65
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
