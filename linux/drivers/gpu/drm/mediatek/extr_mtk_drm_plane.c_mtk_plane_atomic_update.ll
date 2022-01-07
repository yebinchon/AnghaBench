; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_drm_plane.c_mtk_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_8__, %struct.drm_framebuffer*, %struct.drm_crtc* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.drm_framebuffer = type { i32*, %struct.TYPE_7__*, %struct.drm_gem_object** }
%struct.TYPE_7__ = type { i32, i32* }
%struct.drm_gem_object = type { i32 }
%struct.drm_crtc = type { i32 }
%struct.drm_plane_state = type { i32 }
%struct.mtk_plane_state = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mtk_drm_gem_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @mtk_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.mtk_plane_state*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca %struct.drm_framebuffer*, align 8
  %8 = alloca %struct.drm_gem_object*, align 8
  %9 = alloca %struct.mtk_drm_gem_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = call %struct.mtk_plane_state* @to_mtk_plane_state(%struct.TYPE_10__* %15)
  store %struct.mtk_plane_state* %16, %struct.mtk_plane_state** %5, align 8
  %17 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %20, align 8
  store %struct.drm_crtc* %21, %struct.drm_crtc** %6, align 8
  %22 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %23 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %22, i32 0, i32 0
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 2
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %25, align 8
  store %struct.drm_framebuffer* %26, %struct.drm_framebuffer** %7, align 8
  %27 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %28 = icmp ne %struct.drm_crtc* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %31 = icmp ne %struct.drm_framebuffer* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @WARN_ON(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %2
  br label %139

37:                                               ; preds = %29
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 2
  %40 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %39, align 8
  %41 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %40, i64 0
  %42 = load %struct.drm_gem_object*, %struct.drm_gem_object** %41, align 8
  store %struct.drm_gem_object* %42, %struct.drm_gem_object** %8, align 8
  %43 = load %struct.drm_gem_object*, %struct.drm_gem_object** %8, align 8
  %44 = call %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object* %43)
  store %struct.mtk_drm_gem_obj* %44, %struct.mtk_drm_gem_obj** %9, align 8
  %45 = load %struct.mtk_drm_gem_obj*, %struct.mtk_drm_gem_obj** %9, align 8
  %46 = getelementptr inbounds %struct.mtk_drm_gem_obj, %struct.mtk_drm_gem_obj* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %12, align 4
  %48 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %49 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %11, align 4
  %58 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %59 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = ashr i32 %63, 16
  %65 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %7, align 8
  %66 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %64, %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %12, align 4
  %75 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %76 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %75, i32 0, i32 0
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 16
  %82 = load i32, i32* %10, align 4
  %83 = mul i32 %81, %82
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, %83
  store i32 %85, i32* %12, align 4
  %86 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %87 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %91 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %95 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 2
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %99 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 4
  %101 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %102 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %108 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 8
  store i32 %106, i32* %109, align 4
  %110 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %111 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %117 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 7
  store i32 %115, i32* %118, align 4
  %119 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %120 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = call i32 @drm_rect_width(%struct.TYPE_11__* %122)
  %124 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %125 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 6
  store i32 %123, i32* %126, align 4
  %127 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %128 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = call i32 @drm_rect_height(%struct.TYPE_11__* %130)
  %132 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %133 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 5
  store i32 %131, i32* %134, align 4
  %135 = call i32 (...) @wmb()
  %136 = load %struct.mtk_plane_state*, %struct.mtk_plane_state** %5, align 8
  %137 = getelementptr inbounds %struct.mtk_plane_state, %struct.mtk_plane_state* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 4
  store i32 1, i32* %138, align 4
  br label %139

139:                                              ; preds = %37, %36
  ret void
}

declare dso_local %struct.mtk_plane_state* @to_mtk_plane_state(%struct.TYPE_10__*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.mtk_drm_gem_obj* @to_mtk_gem_obj(%struct.drm_gem_object*) #1

declare dso_local i32 @drm_rect_width(%struct.TYPE_11__*) #1

declare dso_local i32 @drm_rect_height(%struct.TYPE_11__*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
