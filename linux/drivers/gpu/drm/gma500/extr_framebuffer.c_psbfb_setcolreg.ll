; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/gma500/extr_framebuffer.c_psbfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_13__, %struct.psb_fbdev* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.psb_fbdev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @psbfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psbfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.psb_fbdev*, align 8
  %15 = alloca %struct.drm_framebuffer*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.psb_fbdev*, %struct.psb_fbdev** %18, align 8
  store %struct.psb_fbdev* %19, %struct.psb_fbdev** %14, align 8
  %20 = load %struct.psb_fbdev*, %struct.psb_fbdev** %14, align 8
  %21 = getelementptr inbounds %struct.psb_fbdev, %struct.psb_fbdev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %22, align 8
  store %struct.drm_framebuffer* %23, %struct.drm_framebuffer** %15, align 8
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %25 = icmp ne %struct.drm_framebuffer* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %124

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = icmp ugt i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %124

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CMAP_TOHW(i32 %34, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @CMAP_TOHW(i32 %41, i32 %46)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @CMAP_TOHW(i32 %48, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %57 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @CMAP_TOHW(i32 %55, i32 %60)
  store i32 %61, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %62, %67
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %69, %74
  %76 = or i32 %68, %75
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = shl i32 %77, %82
  %84 = or i32 %76, %83
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = shl i32 %85, %90
  %92 = or i32 %84, %91
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ult i32 %93, 16
  br i1 %94, label %95, label %123

95:                                               ; preds = %33
  %96 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %15, align 8
  %97 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %102, 8
  switch i32 %103, label %122 [
    i32 16, label %104
    i32 24, label %113
    i32 32, label %113
  ]

104:                                              ; preds = %95
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i32*
  %110 = load i32, i32* %8, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %105, i32* %112, align 4
  br label %122

113:                                              ; preds = %95, %95
  %114 = load i32, i32* %16, align 4
  %115 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %116 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load i32, i32* %8, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %114, i32* %121, align 4
  br label %122

122:                                              ; preds = %95, %113, %104
  br label %123

123:                                              ; preds = %122, %33
  store i32 0, i32* %7, align 4
  br label %124

124:                                              ; preds = %123, %32, %26
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @CMAP_TOHW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
