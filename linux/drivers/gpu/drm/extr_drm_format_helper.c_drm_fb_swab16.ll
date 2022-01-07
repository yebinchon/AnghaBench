; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_swab16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_format_helper.c_drm_fb_swab16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_framebuffer = type { i32* }
%struct.drm_rect = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_fb_swab16(i32* %0, i8* %1, %struct.drm_framebuffer* %2, %struct.drm_rect* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_rect*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  store %struct.drm_rect* %3, %struct.drm_rect** %8, align 8
  %14 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %15 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %18 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %16, %19
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32* @kmalloc(i64 %23, i32 %24)
  store i32* %25, i32** %13, align 8
  %26 = load i32*, i32** %13, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  br label %88

29:                                               ; preds = %4
  %30 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %31 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %82, %29
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %36 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %85

39:                                               ; preds = %33
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %43 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = mul i32 %41, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr i8, i8* %40, i64 %48
  %50 = bitcast i8* %49 to i32*
  store i32* %50, i32** %12, align 8
  %51 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %52 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32* %56, i32** %12, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @memcpy(i32* %57, i32* %58, i64 %59)
  %61 = load i32*, i32** %13, align 8
  store i32* %61, i32** %12, align 8
  %62 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %63 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %78, %39
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.drm_rect*, %struct.drm_rect** %8, align 8
  %68 = getelementptr inbounds %struct.drm_rect, %struct.drm_rect* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %65
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  %74 = load i32, i32* %72, align 4
  %75 = call i32 @swab16(i32 %74)
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %5, align 8
  store i32 %75, i32* %76, align 4
  br label %78

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = add i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %65

81:                                               ; preds = %65
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %11, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %33

85:                                               ; preds = %33
  %86 = load i32*, i32** %13, align 8
  %87 = call i32 @kfree(i32* %86)
  br label %88

88:                                               ; preds = %85, %28
  ret void
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @swab16(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
