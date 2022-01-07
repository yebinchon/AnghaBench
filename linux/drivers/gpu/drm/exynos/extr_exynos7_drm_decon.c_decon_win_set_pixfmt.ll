; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_win_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos7_drm_decon.c_decon_win_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i64, i32 }
%struct.drm_framebuffer = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@WINCONx_BPPMODE_MASK = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_16BPP_565 = common dso_local global i64 0, align 8
@WINCONx_BURSTLEN_16WORD = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_24BPP_xRGB = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_24BPP_xBGR = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_24BPP_RGBx = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_24BPP_BGRx = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_32BPP_ARGB = common dso_local global i64 0, align 8
@WINCONx_BLD_PIX = common dso_local global i64 0, align 8
@WINCONx_ALPHA_SEL = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_32BPP_ABGR = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_32BPP_RGBA = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_32BPP_BGRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"cpp = %d\0A\00", align 1
@MIN_FB_WIDTH_FOR_16WORD_BURST = common dso_local global i32 0, align 4
@WINCONx_BURSTLEN_MASK = common dso_local global i64 0, align 8
@WINCONx_BURSTLEN_8WORD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*, i32, %struct.drm_framebuffer*)* @decon_win_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_win_set_pixfmt(%struct.decon_context* %0, i32 %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca %struct.decon_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.decon_context* %0, %struct.decon_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %6, align 8
  %9 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %10 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @WINCON(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i64 @readl(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* @WINCONx_BPPMODE_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = load i64, i64* %7, align 8
  %19 = and i64 %18, %17
  store i64 %19, i64* %7, align 8
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %21 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %94 [
    i32 132, label %25
    i32 128, label %32
    i32 129, label %39
    i32 130, label %46
    i32 133, label %53
    i32 135, label %60
    i32 136, label %71
    i32 131, label %82
    i32 134, label %93
  ]

25:                                               ; preds = %3
  %26 = load i64, i64* @WINCONx_BPPMODE_16BPP_565, align 8
  %27 = load i64, i64* %7, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %30 = load i64, i64* %7, align 8
  %31 = or i64 %30, %29
  store i64 %31, i64* %7, align 8
  br label %105

32:                                               ; preds = %3
  %33 = load i64, i64* @WINCONx_BPPMODE_24BPP_xRGB, align 8
  %34 = load i64, i64* %7, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %37 = load i64, i64* %7, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %7, align 8
  br label %105

39:                                               ; preds = %3
  %40 = load i64, i64* @WINCONx_BPPMODE_24BPP_xBGR, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, %40
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %44 = load i64, i64* %7, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %105

46:                                               ; preds = %3
  %47 = load i64, i64* @WINCONx_BPPMODE_24BPP_RGBx, align 8
  %48 = load i64, i64* %7, align 8
  %49 = or i64 %48, %47
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %51 = load i64, i64* %7, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %105

53:                                               ; preds = %3
  %54 = load i64, i64* @WINCONx_BPPMODE_24BPP_BGRx, align 8
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %58 = load i64, i64* %7, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %7, align 8
  br label %105

60:                                               ; preds = %3
  %61 = load i64, i64* @WINCONx_BPPMODE_32BPP_ARGB, align 8
  %62 = load i64, i64* @WINCONx_BLD_PIX, align 8
  %63 = or i64 %61, %62
  %64 = load i64, i64* @WINCONx_ALPHA_SEL, align 8
  %65 = or i64 %63, %64
  %66 = load i64, i64* %7, align 8
  %67 = or i64 %66, %65
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %69 = load i64, i64* %7, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %7, align 8
  br label %105

71:                                               ; preds = %3
  %72 = load i64, i64* @WINCONx_BPPMODE_32BPP_ABGR, align 8
  %73 = load i64, i64* @WINCONx_BLD_PIX, align 8
  %74 = or i64 %72, %73
  %75 = load i64, i64* @WINCONx_ALPHA_SEL, align 8
  %76 = or i64 %74, %75
  %77 = load i64, i64* %7, align 8
  %78 = or i64 %77, %76
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %80 = load i64, i64* %7, align 8
  %81 = or i64 %80, %79
  store i64 %81, i64* %7, align 8
  br label %105

82:                                               ; preds = %3
  %83 = load i64, i64* @WINCONx_BPPMODE_32BPP_RGBA, align 8
  %84 = load i64, i64* @WINCONx_BLD_PIX, align 8
  %85 = or i64 %83, %84
  %86 = load i64, i64* @WINCONx_ALPHA_SEL, align 8
  %87 = or i64 %85, %86
  %88 = load i64, i64* %7, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %91 = load i64, i64* %7, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %7, align 8
  br label %105

93:                                               ; preds = %3
  br label %94

94:                                               ; preds = %3, %93
  %95 = load i64, i64* @WINCONx_BPPMODE_32BPP_BGRA, align 8
  %96 = load i64, i64* @WINCONx_BLD_PIX, align 8
  %97 = or i64 %95, %96
  %98 = load i64, i64* @WINCONx_ALPHA_SEL, align 8
  %99 = or i64 %97, %98
  %100 = load i64, i64* %7, align 8
  %101 = or i64 %100, %99
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %103 = load i64, i64* %7, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %7, align 8
  br label %105

105:                                              ; preds = %94, %82, %71, %60, %53, %46, %39, %32, %25
  %106 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %107 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %110 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @DRM_DEV_DEBUG_KMS(i32 %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %115)
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = sdiv i32 %121, %128
  %130 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %131 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %129, %132
  store i32 %133, i32* %8, align 4
  %134 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %135 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = add nsw i32 %136, %137
  %139 = load i32, i32* @MIN_FB_WIDTH_FOR_16WORD_BURST, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %105
  %142 = load i64, i64* @WINCONx_BURSTLEN_MASK, align 8
  %143 = xor i64 %142, -1
  %144 = load i64, i64* %7, align 8
  %145 = and i64 %144, %143
  store i64 %145, i64* %7, align 8
  %146 = load i64, i64* @WINCONx_BURSTLEN_8WORD, align 8
  %147 = load i64, i64* %7, align 8
  %148 = or i64 %147, %146
  store i64 %148, i64* %7, align 8
  br label %149

149:                                              ; preds = %141, %105
  %150 = load i64, i64* %7, align 8
  %151 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %152 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i64 @WINCON(i32 %154)
  %156 = add nsw i64 %153, %155
  %157 = call i32 @writel(i64 %150, i64 %156)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @WINCON(i32) #1

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #1

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
