; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_scanout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_plane.c_rcar_du_plane_setup_scanout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_group = type { i32 }
%struct.rcar_du_plane_state = type { i32, i64, %struct.TYPE_11__*, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_12__, %struct.drm_framebuffer*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.drm_gem_cma_object = type { i32 }

@DRM_MODE_FLAG_INTERLACE = common dso_local global i32 0, align 4
@RCAR_DU_PLANE_MEMORY = common dso_local global i64 0, align 8
@PnMWR = common dso_local global i32 0, align 4
@PnSPXR = common dso_local global i32 0, align 4
@PnSPYR = common dso_local global i32 0, align 4
@PnDSA0R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_group*, %struct.rcar_du_plane_state*)* @rcar_du_plane_setup_scanout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_plane_setup_scanout(%struct.rcar_du_group* %0, %struct.rcar_du_plane_state* %1) #0 {
  %3 = alloca %struct.rcar_du_group*, align 8
  %4 = alloca %struct.rcar_du_plane_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca %struct.drm_framebuffer*, align 8
  %12 = alloca %struct.drm_gem_cma_object*, align 8
  %13 = alloca i32, align 4
  store %struct.rcar_du_group* %0, %struct.rcar_du_group** %3, align 8
  store %struct.rcar_du_plane_state* %1, %struct.rcar_du_plane_state** %4, align 8
  %14 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %15 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = ashr i32 %18, 16
  store i32 %19, i32* %5, align 4
  %20 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %21 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 16
  store i32 %25, i32* %6, align 4
  %26 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %27 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %7, align 4
  %29 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %30 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DRM_MODE_FLAG_INTERLACE, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %41 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @RCAR_DU_PLANE_MEMORY, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %106

45:                                               ; preds = %2
  %46 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %47 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %48, align 8
  store %struct.drm_framebuffer* %49, %struct.drm_framebuffer** %11, align 8
  %50 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %51 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 2
  br i1 %55, label %56, label %62

56:                                               ; preds = %45
  %57 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %58 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  br label %75

62:                                               ; preds = %45
  %63 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %64 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = mul i32 %67, 8
  %69 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %70 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %69, i32 0, i32 2
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = udiv i32 %68, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %62, %56
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %102, %75
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %79 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %78, i32 0, i32 2
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp ult i32 %77, %82
  br i1 %83, label %84, label %105

84:                                               ; preds = %76
  %85 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %85, i32 %86)
  store %struct.drm_gem_cma_object* %87, %struct.drm_gem_cma_object** %12, align 8
  %88 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %12, align 8
  %89 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  %92 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add i32 %90, %97
  %99 = load i32, i32* %13, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  br label %102

102:                                              ; preds = %84
  %103 = load i32, i32* %13, align 4
  %104 = add i32 %103, 1
  store i32 %104, i32* %13, align 4
  br label %76

105:                                              ; preds = %76
  br label %114

106:                                              ; preds = %2
  %107 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %108 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @drm_rect_width(%struct.TYPE_12__* %109)
  %111 = ashr i32 %110, 16
  store i32 %111, i32* %8, align 4
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 0, i32* %112, align 4
  %113 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %106, %105
  %115 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @PnMWR, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %122 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 32
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %8, align 4
  %129 = mul i32 %128, 2
  br label %132

130:                                              ; preds = %120, %114
  %131 = load i32, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %127
  %133 = phi i32 [ %129, %127 ], [ %131, %130 ]
  %134 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %115, i32 %116, i32 %117, i32 %133)
  %135 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @PnSPXR, align 4
  %138 = load i32, i32* %5, align 4
  %139 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @PnSPYR, align 4
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %153, label %146

146:                                              ; preds = %132
  %147 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %148 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %147, i32 0, i32 2
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 32
  br label %153

153:                                              ; preds = %146, %132
  %154 = phi i1 [ false, %132 ], [ %152, %146 ]
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i32 2, i32 1
  %157 = mul i32 %143, %156
  %158 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %140, i32 %141, i32 %142, i32 %157)
  %159 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @PnDSA0R, align 4
  %162 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %159, i32 %160, i32 %161, i32 %163)
  %165 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %166 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %165, i32 0, i32 2
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %171, label %206

171:                                              ; preds = %153
  %172 = load i32, i32* %7, align 4
  %173 = add i32 %172, 1
  %174 = urem i32 %173, 8
  store i32 %174, i32* %7, align 4
  %175 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %176 = load i32, i32* %7, align 4
  %177 = load i32, i32* @PnMWR, align 4
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %175, i32 %176, i32 %177, i32 %178)
  %180 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* @PnSPXR, align 4
  %183 = load i32, i32* %5, align 4
  %184 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @PnSPYR, align 4
  %188 = load i32, i32* %6, align 4
  %189 = load %struct.rcar_du_plane_state*, %struct.rcar_du_plane_state** %4, align 8
  %190 = getelementptr inbounds %struct.rcar_du_plane_state, %struct.rcar_du_plane_state* %189, i32 0, i32 2
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 16
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 2, i32 1
  %197 = mul i32 %188, %196
  %198 = udiv i32 %197, 2
  %199 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %185, i32 %186, i32 %187, i32 %198)
  %200 = load %struct.rcar_du_group*, %struct.rcar_du_group** %3, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load i32, i32* @PnDSA0R, align 4
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @rcar_du_plane_write(%struct.rcar_du_group* %200, i32 %201, i32 %202, i32 %204)
  br label %206

206:                                              ; preds = %171, %153
  ret void
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_12__*) #1

declare dso_local i32 @rcar_du_plane_write(%struct.rcar_du_group*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
