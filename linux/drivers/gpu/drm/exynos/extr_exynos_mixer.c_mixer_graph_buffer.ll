; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_graph_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_mixer.c_mixer_graph_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixer_context = type { i32 }
%struct.exynos_drm_plane = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.exynos_drm_plane_state = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@DRM_MODE_BLEND_PIXEL_NONE = common dso_local global i32 0, align 4
@MXR_FORMAT_ARGB4444 = common dso_local global i32 0, align 4
@MXR_FORMAT_ARGB1555 = common dso_local global i32 0, align 4
@MXR_FORMAT_RGB565 = common dso_local global i32 0, align 4
@MXR_FORMAT_ARGB8888 = common dso_local global i32 0, align 4
@MXR_GRP_CFG_FORMAT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mixer_context*, %struct.exynos_drm_plane*)* @mixer_graph_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mixer_graph_buffer(%struct.mixer_context* %0, %struct.exynos_drm_plane* %1) #0 {
  %3 = alloca %struct.mixer_context*, align 8
  %4 = alloca %struct.exynos_drm_plane*, align 8
  %5 = alloca %struct.exynos_drm_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mixer_context* %0, %struct.mixer_context** %3, align 8
  store %struct.exynos_drm_plane* %1, %struct.exynos_drm_plane** %4, align 8
  %18 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %19 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32 %21)
  store %struct.exynos_drm_plane_state* %22, %struct.exynos_drm_plane_state** %5, align 8
  %23 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %24 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 3
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %25, align 8
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %6, align 8
  %27 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %28 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %7, align 4
  %32 = load %struct.exynos_drm_plane*, %struct.exynos_drm_plane** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_drm_plane, %struct.exynos_drm_plane* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %35 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %36 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %43 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  br label %48

46:                                               ; preds = %2
  %47 = load i32, i32* @DRM_MODE_BLEND_PIXEL_NONE, align 4
  store i32 %47, i32* %14, align 4
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %50 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %49, i32 0, i32 1
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %61 [
    i32 129, label %54
    i32 133, label %54
    i32 130, label %56
    i32 134, label %56
    i32 131, label %58
    i32 128, label %60
    i32 132, label %60
  ]

54:                                               ; preds = %48, %48
  %55 = load i32, i32* @MXR_FORMAT_ARGB4444, align 4
  store i32 %55, i32* %16, align 4
  br label %63

56:                                               ; preds = %48, %48
  %57 = load i32, i32* @MXR_FORMAT_ARGB1555, align 4
  store i32 %57, i32* %16, align 4
  br label %63

58:                                               ; preds = %48
  %59 = load i32, i32* @MXR_FORMAT_RGB565, align 4
  store i32 %59, i32* %16, align 4
  br label %63

60:                                               ; preds = %48, %48
  br label %61

61:                                               ; preds = %48, %60
  %62 = load i32, i32* @MXR_FORMAT_ARGB8888, align 4
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %61, %58, %56, %54
  %64 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %65 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp eq i32 %66, 32768
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %70 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 32768
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %11, align 4
  %74 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %75 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %12, align 4
  %78 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %79 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %13, align 4
  %82 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %83 = call i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer* %82, i32 0)
  %84 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %85 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %89 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %88, i32 0, i32 1
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %87, %94
  %96 = add nsw i32 %83, %95
  %97 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %98 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %102 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %100, %105
  %107 = add nsw i32 %96, %106
  store i32 %107, i32* %15, align 4
  %108 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %109 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %108, i32 0, i32 0
  %110 = load i64, i64* %8, align 8
  %111 = call i32 @spin_lock_irqsave(i32* %109, i64 %110)
  %112 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @MXR_GRAPHIC_CFG(i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i32 @MXR_GRP_CFG_FORMAT_VAL(i32 %115)
  %117 = load i32, i32* @MXR_GRP_CFG_FORMAT_MASK, align 4
  %118 = call i32 @mixer_reg_writemask(%struct.mixer_context* %112, i32 %114, i32 %116, i32 %117)
  %119 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 @MXR_GRAPHIC_SPAN(i32 %120)
  %122 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %123 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %128 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = sdiv i32 %126, %133
  %135 = call i32 @mixer_reg_write(%struct.mixer_context* %119, i32 %121, i32 %134)
  %136 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %137 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @MXR_GRP_WH_WIDTH(i32 %139)
  store i32 %140, i32* %17, align 4
  %141 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %142 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @MXR_GRP_WH_HEIGHT(i32 %144)
  %146 = load i32, i32* %17, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %17, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @MXR_GRP_WH_H_SCALE(i32 %148)
  %150 = load i32, i32* %17, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %17, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 @MXR_GRP_WH_V_SCALE(i32 %152)
  %154 = load i32, i32* %17, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %17, align 4
  %156 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %157 = load i32, i32* %9, align 4
  %158 = call i32 @MXR_GRAPHIC_WH(i32 %157)
  %159 = load i32, i32* %17, align 4
  %160 = call i32 @mixer_reg_write(%struct.mixer_context* %156, i32 %158, i32 %159)
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @MXR_GRP_DXY_DX(i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @MXR_GRP_DXY_DY(i32 %163)
  %165 = load i32, i32* %17, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %17, align 4
  %167 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @MXR_GRAPHIC_DXY(i32 %168)
  %170 = load i32, i32* %17, align 4
  %171 = call i32 @mixer_reg_write(%struct.mixer_context* %167, i32 %169, i32 %170)
  %172 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @MXR_GRAPHIC_BASE(i32 %173)
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @mixer_reg_write(%struct.mixer_context* %172, i32 %174, i32 %175)
  %177 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @mixer_cfg_layer(%struct.mixer_context* %177, i32 %178, i32 %179, i32 1)
  %181 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* %14, align 4
  %184 = load %struct.exynos_drm_plane_state*, %struct.exynos_drm_plane_state** %5, align 8
  %185 = getelementptr inbounds %struct.exynos_drm_plane_state, %struct.exynos_drm_plane_state* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @mixer_cfg_gfx_blend(%struct.mixer_context* %181, i32 %182, i32 %183, i32 %187)
  %189 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %190 = getelementptr inbounds %struct.mixer_context, %struct.mixer_context* %189, i32 0, i32 0
  %191 = load i64, i64* %8, align 8
  %192 = call i32 @spin_unlock_irqrestore(i32* %190, i64 %191)
  %193 = load %struct.mixer_context*, %struct.mixer_context** %3, align 8
  %194 = call i32 @mixer_regs_dump(%struct.mixer_context* %193)
  ret void
}

declare dso_local %struct.exynos_drm_plane_state* @to_exynos_plane_state(i32) #1

declare dso_local i32 @exynos_drm_fb_dma_addr(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mixer_reg_writemask(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @MXR_GRAPHIC_CFG(i32) #1

declare dso_local i32 @MXR_GRP_CFG_FORMAT_VAL(i32) #1

declare dso_local i32 @mixer_reg_write(%struct.mixer_context*, i32, i32) #1

declare dso_local i32 @MXR_GRAPHIC_SPAN(i32) #1

declare dso_local i32 @MXR_GRP_WH_WIDTH(i32) #1

declare dso_local i32 @MXR_GRP_WH_HEIGHT(i32) #1

declare dso_local i32 @MXR_GRP_WH_H_SCALE(i32) #1

declare dso_local i32 @MXR_GRP_WH_V_SCALE(i32) #1

declare dso_local i32 @MXR_GRAPHIC_WH(i32) #1

declare dso_local i32 @MXR_GRP_DXY_DX(i32) #1

declare dso_local i32 @MXR_GRP_DXY_DY(i32) #1

declare dso_local i32 @MXR_GRAPHIC_DXY(i32) #1

declare dso_local i32 @MXR_GRAPHIC_BASE(i32) #1

declare dso_local i32 @mixer_cfg_layer(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @mixer_cfg_gfx_blend(%struct.mixer_context*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mixer_regs_dump(%struct.mixer_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
