; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_win_set_pixfmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos5433_drm_decon.c_decon_win_set_pixfmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.decon_context = type { i32, i64, %struct.exynos_drm_plane* }
%struct.exynos_drm_plane = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.drm_framebuffer = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32*, i64 }
%struct.exynos_drm_plane_state = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@WINCONx_ENWIN_F = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_16BPP_I1555 = common dso_local global i64 0, align 8
@WINCONx_HAWSWP_F = common dso_local global i64 0, align 8
@WINCONx_BURSTLEN_16WORD = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_16BPP_565 = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_24BPP_888 = common dso_local global i64 0, align 8
@WINCONx_WSWP_F = common dso_local global i64 0, align 8
@WINCONx_BPPMODE_32BPP_A8888 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"cpp = %u\0A\00", align 1
@MIN_FB_WIDTH_FOR_16WORD_BURST = common dso_local global i64 0, align 8
@WINCONx_BURSTLEN_MASK = common dso_local global i64 0, align 8
@WINCONx_BURSTLEN_8WORD = common dso_local global i64 0, align 8
@WINCONx_BLEND_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.decon_context*, i32, %struct.drm_framebuffer*)* @decon_win_set_pixfmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decon_win_set_pixfmt(%struct.decon_context* %0, i32 %1, %struct.drm_framebuffer* %2) #0 {
  %4 = alloca %struct.decon_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.exynos_drm_plane, align 4
  %8 = alloca %struct.exynos_drm_plane_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.decon_context* %0, %struct.decon_context** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.drm_framebuffer* %2, %struct.drm_framebuffer** %6, align 8
  %12 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %13 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %12, i32 0, i32 2
  %14 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %14, i64 %16
  %18 = bitcast %struct.exynos_drm_plane* %7 to i8*
  %19 = bitcast %struct.exynos_drm_plane* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 %19, i64 4, i1 false)
  %20 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %22)
  store %struct.exynos_drm_plane_state* %23, %struct.exynos_drm_plane_state** %8, align 8
  %24 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %8, align 8
  %25 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %29 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %8, align 8
  %36 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %39, %34
  %42 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %43 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @DECON_WINCONx(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = call i64 @readl(i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* @WINCONx_ENWIN_F, align 8
  %50 = load i64, i64* %11, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %11, align 8
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %88 [
    i32 129, label %57
    i32 130, label %67
    i32 128, label %77
    i32 131, label %87
  ]

57:                                               ; preds = %41
  %58 = load i64, i64* @WINCONx_BPPMODE_16BPP_I1555, align 8
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* @WINCONx_HAWSWP_F, align 8
  %62 = load i64, i64* %11, align 8
  %63 = or i64 %62, %61
  store i64 %63, i64* %11, align 8
  %64 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %65 = load i64, i64* %11, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %11, align 8
  br label %98

67:                                               ; preds = %41
  %68 = load i64, i64* @WINCONx_BPPMODE_16BPP_565, align 8
  %69 = load i64, i64* %11, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %11, align 8
  %71 = load i64, i64* @WINCONx_HAWSWP_F, align 8
  %72 = load i64, i64* %11, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %11, align 8
  %74 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %75 = load i64, i64* %11, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %11, align 8
  br label %98

77:                                               ; preds = %41
  %78 = load i64, i64* @WINCONx_BPPMODE_24BPP_888, align 8
  %79 = load i64, i64* %11, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* @WINCONx_WSWP_F, align 8
  %82 = load i64, i64* %11, align 8
  %83 = or i64 %82, %81
  store i64 %83, i64* %11, align 8
  %84 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %85 = load i64, i64* %11, align 8
  %86 = or i64 %85, %84
  store i64 %86, i64* %11, align 8
  br label %98

87:                                               ; preds = %41
  br label %88

88:                                               ; preds = %41, %87
  %89 = load i64, i64* @WINCONx_BPPMODE_32BPP_A8888, align 8
  %90 = load i64, i64* %11, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* @WINCONx_WSWP_F, align 8
  %93 = load i64, i64* %11, align 8
  %94 = or i64 %93, %92
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* @WINCONx_BURSTLEN_16WORD, align 8
  %96 = load i64, i64* %11, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %11, align 8
  br label %98

98:                                               ; preds = %88, %77, %67, %57
  %99 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %100 = getelementptr inbounds %struct.decon_context, %struct.decon_context* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %103 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %102, i32 0, i32 1
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @DRM_DEV_DEBUG_KMS(i32 %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %108)
  %110 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %111 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MIN_FB_WIDTH_FOR_16WORD_BURST, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %98
  %116 = load i64, i64* @WINCONx_BURSTLEN_MASK, align 8
  %117 = xor i64 %116, -1
  %118 = load i64, i64* %11, align 8
  %119 = and i64 %118, %117
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* @WINCONx_BURSTLEN_8WORD, align 8
  %121 = load i64, i64* %11, align 8
  %122 = or i64 %121, %120
  store i64 %122, i64* %11, align 8
  br label %123

123:                                              ; preds = %115, %98
  %124 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %125 = load i32, i32* %5, align 4
  %126 = call i64 @DECON_WINCONx(i32 %125)
  %127 = load i32, i32* @WINCONx_BLEND_MODE_MASK, align 4
  %128 = xor i32 %127, -1
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @decon_set_bits(%struct.decon_context* %124, i64 %126, i32 %128, i64 %129)
  %131 = load i32, i32* %5, align 4
  %132 = icmp ugt i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %123
  %134 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @decon_win_set_bldmod(%struct.decon_context* %134, i32 %135, i32 %136, i32 %137)
  %139 = load %struct.decon_context*, %struct.decon_context** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @decon_win_set_bldeq(%struct.decon_context* %139, i32 %140, i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %133, %123
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #2

declare dso_local i64 @readl(i64) #2

declare dso_local i64 @DECON_WINCONx(i32) #2

declare dso_local i32 @DRM_DEV_DEBUG_KMS(i32, i8*, i32) #2

declare dso_local i32 @decon_set_bits(%struct.decon_context*, i64, i32, i64) #2

declare dso_local i32 @decon_win_set_bldmod(%struct.decon_context*, i32, i32, i32) #2

declare dso_local i32 @decon_win_set_bldeq(%struct.decon_context*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
