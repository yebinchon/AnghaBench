; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_compute_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/shmobile/extr_shmob_drm_plane.c_shmob_drm_plane_compute_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmob_drm_plane = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.drm_framebuffer = type { i32*, i64* }
%struct.drm_gem_cma_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shmob_drm_plane*, %struct.drm_framebuffer*, i32, i32)* @shmob_drm_plane_compute_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shmob_drm_plane_compute_base(%struct.shmob_drm_plane* %0, %struct.drm_framebuffer* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.shmob_drm_plane*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.drm_gem_cma_object*, align 8
  %10 = alloca i32, align 4
  store %struct.shmob_drm_plane* %0, %struct.shmob_drm_plane** %5, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %12 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %24

18:                                               ; preds = %4
  %19 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %20 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %18, %17
  %25 = phi i32 [ 8, %17 ], [ %23, %18 ]
  store i32 %25, i32* %10, align 4
  %26 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %27 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %26, i32 0)
  store %struct.drm_gem_cma_object* %27, %struct.drm_gem_cma_object** %9, align 8
  %28 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %29 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %32 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %30, %35
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %39 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = mul nsw i32 %37, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %36, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul i32 %46, %47
  %49 = udiv i32 %48, 8
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %45, %50
  %52 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %53 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %51, i64* %55, align 8
  %56 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %57 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %106

62:                                               ; preds = %24
  %63 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %64 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 8
  store i32 %68, i32* %10, align 4
  %69 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %70 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %69, i32 1)
  store %struct.drm_gem_cma_object* %70, %struct.drm_gem_cma_object** %9, align 8
  %71 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %9, align 8
  %72 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %75 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %73, %78
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp eq i32 %81, 4
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 1
  %85 = sdiv i32 %80, %84
  %86 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %87 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %85, %90
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %79, %92
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp eq i32 %95, 16
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 2, i32 1
  %99 = mul nsw i32 %94, %98
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %93, %100
  %102 = load %struct.shmob_drm_plane*, %struct.shmob_drm_plane** %5, align 8
  %103 = getelementptr inbounds %struct.shmob_drm_plane, %struct.shmob_drm_plane* %102, i32 0, i32 0
  %104 = load i64*, i64** %103, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 1
  store i64 %101, i64* %105, align 8
  br label %106

106:                                              ; preds = %62, %24
  ret void
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
