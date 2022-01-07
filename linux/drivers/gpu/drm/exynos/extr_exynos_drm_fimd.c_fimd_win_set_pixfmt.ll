; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_win_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_fimd.c_fimd_win_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimd_context = type { %struct.TYPE_8__*, %struct.exynos_drm_plane* }
%struct.TYPE_8__ = type { i64 }
%struct.exynos_drm_plane = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.drm_framebuffer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@WINCONx_ENWIN = common dso_local global i32 0, align 4
@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@WINCON0_BPPMODE_8BPP_PALETTE = common dso_local global i32 0, align 4
@WINCONx_BURSTLEN_8WORD = common dso_local global i32 0, align 4
@WINCONx_BYTSWP = common dso_local global i32 0, align 4
@WINCON0_BPPMODE_16BPP_1555 = common dso_local global i32 0, align 4
@WINCONx_HAWSWP = common dso_local global i32 0, align 4
@WINCONx_BURSTLEN_16WORD = common dso_local global i32 0, align 4
@WINCON0_BPPMODE_16BPP_565 = common dso_local global i32 0, align 4
@WINCON0_BPPMODE_24BPP_888 = common dso_local global i32 0, align 4
@WINCONx_WSWP = common dso_local global i32 0, align 4
@WINCON1_BPPMODE_25BPP_A1888 = common dso_local global i32 0, align 4
@MIN_FB_WIDTH_FOR_16WORD_BURST = common dso_local global i32 0, align 4
@WINCONx_BURSTLEN_MASK = common dso_local global i32 0, align 4
@WINCONx_BURSTLEN_4WORD = common dso_local global i32 0, align 4
@WINCONx_BLEND_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimd_context*, i32, %struct.drm_framebuffer*, i32)* @fimd_win_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimd_win_set_pixfmt(%struct.fimd_context* %0, i32 %1, %struct.drm_framebuffer* %2, i32 %3) #0 {
  %5 = alloca %struct.fimd_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.exynos_drm_plane, align 4
  %10 = alloca %struct.exynos_drm_plane_state*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fimd_context* %0, %struct.fimd_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %16 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %15, i32 0, i32 1
  %17 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %17, i64 %19
  %21 = bitcast %struct.exynos_drm_plane* %9 to i8*
  %22 = bitcast %struct.exynos_drm_plane* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 %22, i64 4, i1 false)
  %23 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %9, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %25)
  store %struct.exynos_drm_plane_state* %26, %struct.exynos_drm_plane_state** %10, align 8
  %27 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %28 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  %32 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %10, align 8
  %33 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* @WINCONx_ENWIN, align 4
  store i32 %36, i32* %13, align 4
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %4
  %44 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %10, align 8
  %45 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %14, align 4
  br label %50

48:                                               ; preds = %4
  %49 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %48, %43
  %51 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %52 = getelementptr inbounds %struct.fimd_context, %struct.fimd_context* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 132
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 128, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %60
  br label %65

65:                                               ; preds = %64, %57, %50
  %66 = load i32, i32* %11, align 4
  switch i32 %66, label %108 [
    i32 131, label %67
    i32 129, label %77
    i32 130, label %87
    i32 128, label %97
    i32 132, label %107
  ]

67:                                               ; preds = %65
  %68 = load i32, i32* @WINCON0_BPPMODE_8BPP_PALETTE, align 4
  %69 = load i32, i32* %13, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* @WINCONx_BURSTLEN_8WORD, align 4
  %72 = load i32, i32* %13, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* @WINCONx_BYTSWP, align 4
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %118

77:                                               ; preds = %65
  %78 = load i32, i32* @WINCON0_BPPMODE_16BPP_1555, align 4
  %79 = load i32, i32* %13, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* @WINCONx_HAWSWP, align 4
  %82 = load i32, i32* %13, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* @WINCONx_BURSTLEN_16WORD, align 4
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %13, align 4
  br label %118

87:                                               ; preds = %65
  %88 = load i32, i32* @WINCON0_BPPMODE_16BPP_565, align 4
  %89 = load i32, i32* %13, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* @WINCONx_HAWSWP, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* @WINCONx_BURSTLEN_16WORD, align 4
  %95 = load i32, i32* %13, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %13, align 4
  br label %118

97:                                               ; preds = %65
  %98 = load i32, i32* @WINCON0_BPPMODE_24BPP_888, align 4
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* @WINCONx_WSWP, align 4
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* @WINCONx_BURSTLEN_16WORD, align 4
  %105 = load i32, i32* %13, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %13, align 4
  br label %118

107:                                              ; preds = %65
  br label %108

108:                                              ; preds = %65, %107
  %109 = load i32, i32* @WINCON1_BPPMODE_25BPP_A1888, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* @WINCONx_WSWP, align 4
  %113 = load i32, i32* %13, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* @WINCONx_BURSTLEN_16WORD, align 4
  %116 = load i32, i32* %13, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %13, align 4
  br label %118

118:                                              ; preds = %108, %97, %87, %77, %67
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* @MIN_FB_WIDTH_FOR_16WORD_BURST, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %118
  %123 = load i32, i32* @WINCONx_BURSTLEN_MASK, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %13, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* @WINCONx_BURSTLEN_4WORD, align 4
  %128 = load i32, i32* %13, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %122, %118
  %131 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @WINCON(i32 %132)
  %134 = load i32, i32* @WINCONx_BLEND_MODE_MASK, align 4
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %13, align 4
  %137 = call i32 @fimd_set_bits(%struct.fimd_context* %131, i32 %133, i32 %135, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %151

140:                                              ; preds = %130
  %141 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @fimd_win_set_bldmod(%struct.fimd_context* %141, i32 %142, i32 %143, i32 %144)
  %146 = load %struct.fimd_context*, %struct.fimd_context** %5, align 8
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @fimd_win_set_bldeq(%struct.fimd_context* %146, i32 %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %140, %130
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #2

declare dso_local i32 @fimd_set_bits(%struct.fimd_context*, i32, i32, i32) #2

declare dso_local i32 @WINCON(i32) #2

declare dso_local i32 @fimd_win_set_bldmod(%struct.fimd_context*, i32, i32, i32) #2

declare dso_local i32 @fimd_win_set_bldeq(%struct.fimd_context*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
