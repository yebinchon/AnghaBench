; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_xrgb8888_to_rgb565.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_xrgb8888_to_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32* }
%struct.drm_rect = type { i64, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_xrgb8888_to_rgb565(i8* %0, i8* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_rect*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %8, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %18 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %21 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = sub i64 %19, %22
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* %11, align 8
  %25 = mul i64 %24, 4
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  %27 = mul i64 %26, 4
  store i64 %27, i64* %13, align 8
  %28 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %29 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %32 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sub i32 %30, %33
  store i32 %34, i32* %15, align 4
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kmalloc(i64 %35, i32 %36)
  store i8* %37, i8** %16, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %5
  br label %83

41:                                               ; preds = %5
  %42 = load %struct.drm_rect*, %struct.drm_rect** %9, align 8
  %43 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %44 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clip_offset(%struct.drm_rect* %42, i32 %47, i32 4)
  %49 = load i8*, i8** %7, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr i8, i8* %49, i64 %50
  store i8* %51, i8** %7, align 8
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %77, %41
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp ult i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load i8*, i8** %16, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %16, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @drm_fb_xrgb8888_to_rgb565_line(i8* %61, i8* %62, i64 %63, i32 %64)
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load i8*, i8** %7, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr i8, i8* %71, i64 %72
  store i8* %73, i8** %7, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr i8, i8* %75, i64 %74
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load i8*, i8** %16, align 8
  %82 = call i32 @kfree(i8* %81)
  br label %83

83:                                               ; preds = %80, %40
  ret void
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @clip_offset(%struct.drm_rect*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @drm_fb_xrgb8888_to_rgb565_line(i8*, i8*, i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
