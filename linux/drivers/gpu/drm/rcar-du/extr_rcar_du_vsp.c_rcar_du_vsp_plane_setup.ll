; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rcar-du/extr_rcar_du_vsp.c_rcar_du_vsp_plane_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_du_vsp_plane = type { i32, %struct.TYPE_17__*, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i64*, i32* }
%struct.rcar_du_vsp_plane_state = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_19__, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.rcar_du_crtc = type { i32 }
%struct.rcar_du_format_info = type { i32 }
%struct.vsp1_du_atomic_config = type { i32, i32, i64*, %struct.TYPE_13__, %struct.TYPE_12__, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rcar_du_vsp_plane*)* @rcar_du_vsp_plane_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_du_vsp_plane_setup(%struct.rcar_du_vsp_plane* %0) #0 {
  %2 = alloca %struct.rcar_du_vsp_plane*, align 8
  %3 = alloca %struct.rcar_du_vsp_plane_state*, align 8
  %4 = alloca %struct.rcar_du_crtc*, align 8
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.rcar_du_format_info*, align 8
  %7 = alloca %struct.vsp1_du_atomic_config, align 8
  %8 = alloca i32, align 4
  store %struct.rcar_du_vsp_plane* %0, %struct.rcar_du_vsp_plane** %2, align 8
  %9 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %2, align 8
  %10 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %13 = call %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.TYPE_18__* %12)
  store %struct.rcar_du_vsp_plane_state* %13, %struct.rcar_du_vsp_plane_state** %3, align 8
  %14 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %15 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.rcar_du_crtc* @to_rcar_crtc(i32 %17)
  store %struct.rcar_du_crtc* %18, %struct.rcar_du_crtc** %4, align 8
  %19 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %2, align 8
  %20 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %23, align 8
  store %struct.drm_framebuffer* %24, %struct.drm_framebuffer** %5, align 8
  %25 = bitcast %struct.vsp1_du_atomic_config* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 56, i1 false)
  %26 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 0
  %27 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %28 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %26, align 8
  %32 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 5
  %33 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %34 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %32, align 8
  %37 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 6
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %37, align 4
  %43 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %44 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  %49 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %52 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 16
  %57 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %60 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  %62 = call i32 @drm_rect_width(%struct.TYPE_19__* %61)
  %63 = ashr i32 %62, 16
  %64 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %67 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = call i32 @drm_rect_height(%struct.TYPE_19__* %68)
  %70 = ashr i32 %69, 16
  %71 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %74 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %81 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %88 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 1
  %90 = call i32 @drm_rect_width(%struct.TYPE_19__* %89)
  %91 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %94 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = call i32 @drm_rect_height(%struct.TYPE_19__* %95)
  %97 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  store i32 0, i32* %8, align 4
  br label %99

99:                                               ; preds = %130, %1
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %102 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %101, i32 0, i32 0
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp ult i32 %100, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %99
  %108 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %109 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %108, i32 0, i32 1
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @sg_dma_address(i32 %115)
  %117 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %118 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %116, %123
  %125 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 2
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %124, i64* %129, align 8
  br label %130

130:                                              ; preds = %107
  %131 = load i32, i32* %8, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %99

133:                                              ; preds = %99
  %134 = load %struct.rcar_du_vsp_plane_state*, %struct.rcar_du_vsp_plane_state** %3, align 8
  %135 = getelementptr inbounds %struct.rcar_du_vsp_plane_state, %struct.rcar_du_vsp_plane_state* %134, i32 0, i32 0
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.rcar_du_format_info* @rcar_du_format_info(i32 %138)
  store %struct.rcar_du_format_info* %139, %struct.rcar_du_format_info** %6, align 8
  %140 = load %struct.rcar_du_format_info*, %struct.rcar_du_format_info** %6, align 8
  %141 = getelementptr inbounds %struct.rcar_du_format_info, %struct.rcar_du_format_info* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds %struct.vsp1_du_atomic_config, %struct.vsp1_du_atomic_config* %7, i32 0, i32 1
  store i32 %142, i32* %143, align 4
  %144 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %2, align 8
  %145 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %144, i32 0, i32 1
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.rcar_du_crtc*, %struct.rcar_du_crtc** %4, align 8
  %150 = getelementptr inbounds %struct.rcar_du_crtc, %struct.rcar_du_crtc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.rcar_du_vsp_plane*, %struct.rcar_du_vsp_plane** %2, align 8
  %153 = getelementptr inbounds %struct.rcar_du_vsp_plane, %struct.rcar_du_vsp_plane* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @vsp1_du_atomic_update(i32 %148, i32 %151, i32 %154, %struct.vsp1_du_atomic_config* %7)
  ret void
}

declare dso_local %struct.rcar_du_vsp_plane_state* @to_rcar_vsp_plane_state(%struct.TYPE_18__*) #1

declare dso_local %struct.rcar_du_crtc* @to_rcar_crtc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @drm_rect_width(%struct.TYPE_19__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_19__*) #1

declare dso_local i64 @sg_dma_address(i32) #1

declare dso_local %struct.rcar_du_format_info* @rcar_du_format_info(i32) #1

declare dso_local i32 @vsp1_du_atomic_update(i32, i32, i32, %struct.vsp1_du_atomic_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
