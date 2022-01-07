; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.drm_rect = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_memcpy(i8* %0, i8* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %8, align 8
  %13 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %14 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %21 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %24 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub i32 %22, %25
  %27 = load i32, i32* %9, align 4
  %28 = mul i32 %26, %27
  %29 = zext i32 %28 to i64
  store i64 %29, i64* %10, align 8
  %30 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %34 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = sub i32 %32, %35
  store i32 %36, i32* %12, align 4
  %37 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @clip_offset(%struct.drm_rect* %37, i32 %42, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %6, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %68, %4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %6, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr i8, i8* %62, i64 %63
  store i8* %64, i8** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr i8, i8* %66, i64 %65
  store i8* %67, i8** %5, align 8
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %48

71:                                               ; preds = %48
  ret void
}

declare dso_local i32 @clip_offset(%struct.drm_rect*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
