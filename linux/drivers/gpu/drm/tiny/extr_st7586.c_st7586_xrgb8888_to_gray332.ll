; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_xrgb8888_to_gray332.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/tiny/extr_st7586.c_st7586_xrgb8888_to_gray332.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32 }
%struct.drm_rect = type { i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@st7586_lookup = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*)* @st7586_xrgb8888_to_gray332 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @st7586_xrgb8888_to_gray332(i32* %0, i8* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %8, align 8
  %15 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %16 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %19 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %17, %20
  %22 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %23 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %26 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = mul i64 %21, %28
  store i64 %29, i64* %9, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32* @kmalloc(i64 %30, i32 %31)
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %111

36:                                               ; preds = %4
  %37 = load i32*, i32** %13, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %40 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %41 = call i32 @drm_fb_xrgb8888_to_gray8(i32* %37, i8* %38, %struct.drm_framebuffer* %39, %struct.drm_rect* %40)
  %42 = load i32*, i32** %13, align 8
  store i32* %42, i32** %12, align 8
  %43 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %44 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %105, %36
  %48 = load i32, i32* %11, align 4
  %49 = zext i32 %48 to i64
  %50 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %51 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %108

54:                                               ; preds = %47
  %55 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %56 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %101, %54
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %63 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ult i64 %61, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %59
  %67 = load i32*, i32** @st7586_lookup, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %12, align 8
  %70 = load i32, i32* %68, align 4
  %71 = ashr i32 %70, 6
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %67, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 5
  store i32 %75, i32* %14, align 4
  %76 = load i32*, i32** @st7586_lookup, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %12, align 8
  %79 = load i32, i32* %77, align 4
  %80 = ashr i32 %79, 6
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %76, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %83, 2
  %85 = load i32, i32* %14, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %14, align 4
  %87 = load i32*, i32** @st7586_lookup, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %12, align 8
  %90 = load i32, i32* %88, align 4
  %91 = ashr i32 %90, 6
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = ashr i32 %94, 1
  %96 = load i32, i32* %14, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %14, align 4
  %98 = load i32, i32* %14, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %5, align 8
  store i32 %98, i32* %99, align 4
  br label %101

101:                                              ; preds = %66
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 3
  store i32 %103, i32* %10, align 4
  br label %59

104:                                              ; preds = %59
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %11, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %11, align 4
  br label %47

108:                                              ; preds = %47
  %109 = load i32*, i32** %13, align 8
  %110 = call i32 @kfree(i32* %109)
  br label %111

111:                                              ; preds = %108, %35
  ret void
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @drm_fb_xrgb8888_to_gray8(i32*, i8*, %struct.drm_framebuffer*, %struct.drm_rect*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
