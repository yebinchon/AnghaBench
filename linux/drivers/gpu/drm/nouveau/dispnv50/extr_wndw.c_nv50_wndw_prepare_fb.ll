; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_prepare_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/dispnv50/extr_wndw.c_nv50_wndw_prepare_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32, i32 }
%struct.drm_plane_state = type { i32 }
%struct.nouveau_framebuffer = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.nouveau_drm = type { i32 }
%struct.nv50_wndw = type { %struct.TYPE_16__*, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)* }
%struct.nv50_wndw_ctxdma = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.nv50_wndw_atom = type { %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.nv50_head_atom = type { %struct.TYPE_11__ }

@.str = private unnamed_addr constant [16 x i8] c"%s prepare: %p\0A\00", align 1
@TTM_PL_FLAG_VRAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_plane*, %struct.drm_plane_state*)* @nv50_wndw_prepare_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_wndw_prepare_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_plane*, align 8
  %5 = alloca %struct.drm_plane_state*, align 8
  %6 = alloca %struct.nouveau_framebuffer*, align 8
  %7 = alloca %struct.nouveau_drm*, align 8
  %8 = alloca %struct.nv50_wndw*, align 8
  %9 = alloca %struct.nv50_wndw_atom*, align 8
  %10 = alloca %struct.nv50_head_atom*, align 8
  %11 = alloca %struct.nv50_wndw_ctxdma*, align 8
  %12 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %4, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %5, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.nouveau_framebuffer* @nouveau_framebuffer(i32 %15)
  store %struct.nouveau_framebuffer* %16, %struct.nouveau_framebuffer** %6, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.nouveau_drm* @nouveau_drm(i32 %19)
  store %struct.nouveau_drm* %20, %struct.nouveau_drm** %7, align 8
  %21 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %22 = call %struct.nv50_wndw* @nv50_wndw(%struct.drm_plane* %21)
  store %struct.nv50_wndw* %22, %struct.nv50_wndw** %8, align 8
  %23 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %24 = call %struct.nv50_wndw_atom* @nv50_wndw_atom(%struct.drm_plane_state* %23)
  store %struct.nv50_wndw_atom* %24, %struct.nv50_wndw_atom** %9, align 8
  %25 = load %struct.nouveau_drm*, %struct.nouveau_drm** %7, align 8
  %26 = load %struct.drm_plane*, %struct.drm_plane** %4, align 8
  %27 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.drm_plane_state*, %struct.drm_plane_state** %5, align 8
  %30 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @NV_ATOMIC(%struct.nouveau_drm* %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %31)
  %33 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %34 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %139

39:                                               ; preds = %2
  %40 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %41 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %40, i32 0, i32 0
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = load i32, i32* @TTM_PL_FLAG_VRAM, align 4
  %44 = call i32 @nouveau_bo_pin(%struct.TYPE_17__* %42, i32 %43, i32 1)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %3, align 4
  br label %139

49:                                               ; preds = %39
  %50 = load %struct.nv50_wndw*, %struct.nv50_wndw** %8, align 8
  %51 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %79

55:                                               ; preds = %49
  %56 = load %struct.nv50_wndw*, %struct.nv50_wndw** %8, align 8
  %57 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %58 = call %struct.nv50_wndw_ctxdma* @nv50_wndw_ctxdma_new(%struct.nv50_wndw* %56, %struct.nouveau_framebuffer* %57)
  store %struct.nv50_wndw_ctxdma* %58, %struct.nv50_wndw_ctxdma** %11, align 8
  %59 = load %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_ctxdma** %11, align 8
  %60 = call i64 @IS_ERR(%struct.nv50_wndw_ctxdma* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %64 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = call i32 @nouveau_bo_unpin(%struct.TYPE_17__* %65)
  %67 = load %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_ctxdma** %11, align 8
  %68 = call i32 @PTR_ERR(%struct.nv50_wndw_ctxdma* %67)
  store i32 %68, i32* %3, align 4
  br label %139

69:                                               ; preds = %55
  %70 = load %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_ctxdma** %11, align 8
  %71 = getelementptr inbounds %struct.nv50_wndw_ctxdma, %struct.nv50_wndw_ctxdma* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %75 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %73, i32* %78, align 4
  br label %79

79:                                               ; preds = %69, %49
  %80 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %81 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dma_resv_get_excl_rcu(i32 %86)
  %88 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %89 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 2
  store i32 %87, i32* %90, align 8
  %91 = load %struct.nouveau_framebuffer*, %struct.nouveau_framebuffer** %6, align 8
  %92 = getelementptr inbounds %struct.nouveau_framebuffer, %struct.nouveau_framebuffer* %91, i32 0, i32 0
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %98 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %96, i32* %101, align 4
  %102 = load %struct.nv50_wndw*, %struct.nv50_wndw** %8, align 8
  %103 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %102, i32 0, i32 0
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)** %105, align 8
  %107 = icmp ne i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)* %106, null
  br i1 %107, label %108, label %138

108:                                              ; preds = %79
  %109 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %110 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %114 = getelementptr inbounds %struct.nv50_wndw_atom, %struct.nv50_wndw_atom* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call %struct.nv50_wndw_ctxdma* @nv50_head_atom_get(i32 %112, i32 %116)
  %118 = bitcast %struct.nv50_wndw_ctxdma* %117 to %struct.nv50_head_atom*
  store %struct.nv50_head_atom* %118, %struct.nv50_head_atom** %10, align 8
  %119 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %10, align 8
  %120 = bitcast %struct.nv50_head_atom* %119 to %struct.nv50_wndw_ctxdma*
  %121 = call i64 @IS_ERR(%struct.nv50_wndw_ctxdma* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %108
  %124 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %10, align 8
  %125 = bitcast %struct.nv50_head_atom* %124 to %struct.nv50_wndw_ctxdma*
  %126 = call i32 @PTR_ERR(%struct.nv50_wndw_ctxdma* %125)
  store i32 %126, i32* %3, align 4
  br label %139

127:                                              ; preds = %108
  %128 = load %struct.nv50_wndw*, %struct.nv50_wndw** %8, align 8
  %129 = getelementptr inbounds %struct.nv50_wndw, %struct.nv50_wndw* %128, i32 0, i32 0
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)*, i32 (%struct.nv50_wndw*, %struct.nv50_wndw_ctxdma*, %struct.nv50_wndw_atom*)** %131, align 8
  %133 = load %struct.nv50_wndw*, %struct.nv50_wndw** %8, align 8
  %134 = load %struct.nv50_head_atom*, %struct.nv50_head_atom** %10, align 8
  %135 = bitcast %struct.nv50_head_atom* %134 to %struct.nv50_wndw_ctxdma*
  %136 = load %struct.nv50_wndw_atom*, %struct.nv50_wndw_atom** %9, align 8
  %137 = call i32 %132(%struct.nv50_wndw* %133, %struct.nv50_wndw_ctxdma* %135, %struct.nv50_wndw_atom* %136)
  br label %138

138:                                              ; preds = %127, %79
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %123, %62, %47, %38
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.nouveau_framebuffer* @nouveau_framebuffer(i32) #1

declare dso_local %struct.nouveau_drm* @nouveau_drm(i32) #1

declare dso_local %struct.nv50_wndw* @nv50_wndw(%struct.drm_plane*) #1

declare dso_local %struct.nv50_wndw_atom* @nv50_wndw_atom(%struct.drm_plane_state*) #1

declare dso_local i32 @NV_ATOMIC(%struct.nouveau_drm*, i8*, i32, i32) #1

declare dso_local i32 @nouveau_bo_pin(%struct.TYPE_17__*, i32, i32) #1

declare dso_local %struct.nv50_wndw_ctxdma* @nv50_wndw_ctxdma_new(%struct.nv50_wndw*, %struct.nouveau_framebuffer*) #1

declare dso_local i64 @IS_ERR(%struct.nv50_wndw_ctxdma*) #1

declare dso_local i32 @nouveau_bo_unpin(%struct.TYPE_17__*) #1

declare dso_local i32 @PTR_ERR(%struct.nv50_wndw_ctxdma*) #1

declare dso_local i32 @dma_resv_get_excl_rcu(i32) #1

declare dso_local %struct.nv50_wndw_ctxdma* @nv50_head_atom_get(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
