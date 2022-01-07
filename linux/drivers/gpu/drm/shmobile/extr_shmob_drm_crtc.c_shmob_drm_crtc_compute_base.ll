; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_compute_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_crtc.c_shmob_drm_crtc_compute_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_crtc = type { i64*, %struct.TYPE_4__*, %struct.drm_crtc }
%struct.TYPE_4__ = type { i32, i64 }
%struct.drm_crtc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { i32*, i64* }
%struct.drm_gem_cma_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmob_drm_crtc*, i32, i32)* @shmob_drm_crtc_compute_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_crtc_compute_base(%struct.shmob_drm_crtc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.shmob_drm_crtc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.drm_crtc*, align 8
  %8 = alloca %struct.drm_framebuffer*, align 8
  %9 = alloca %struct.drm_gem_cma_object*, align 8
  %10 = alloca i32, align 4
  store %struct.shmob_drm_crtc* %0, %struct.shmob_drm_crtc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %12 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %11, i32 0, i32 2
  store %struct.drm_crtc* %12, %struct.drm_crtc** %7, align 8
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %7, align 8
  %14 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %16, align 8
  store %struct.drm_framebuffer* %17, %struct.drm_framebuffer** %8, align 8
  %18 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %19 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %31

25:                                               ; preds = %3
  %26 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %27 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  br label %31

31:                                               ; preds = %25, %24
  %32 = phi i32 [ 8, %24 ], [ %30, %25 ]
  store i32 %32, i32* %10, align 4
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %34 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %33, i32 0)
  store %struct.drm_gem_cma_object* %34, %struct.drm_gem_cma_object** %9, align 8
  %35 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %36 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %37, %42
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %46 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %44, %49
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %43, %51
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = mul i32 %53, %54
  %56 = udiv i32 %55, 8
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %52, %57
  %59 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %60 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 0
  store i64 %58, i64* %62, align 8
  %63 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %64 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %113

69:                                               ; preds = %31
  %70 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %71 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub nsw i32 %74, 8
  store i32 %75, i32* %10, align 4
  %76 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %77 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %76, i32 1)
  store %struct.drm_gem_cma_object* %77, %struct.drm_gem_cma_object** %9, align 8
  %78 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %79 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %82 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %80, %85
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp eq i32 %88, 4
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 1
  %92 = sdiv i32 %87, %91
  %93 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %8, align 8
  %94 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = mul nsw i32 %92, %97
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %86, %99
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp eq i32 %102, 16
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 2, i32 1
  %106 = mul nsw i32 %101, %105
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %100, %107
  %109 = load %struct.shmob_drm_crtc*, %struct.shmob_drm_crtc** %4, align 8
  %110 = getelementptr inbounds %struct.shmob_drm_crtc, %struct.shmob_drm_crtc* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %69, %31
  ret void
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
