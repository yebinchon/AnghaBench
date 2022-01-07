; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_async_set_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_plane.c_vc4_plane_async_set_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.drm_framebuffer = type { i64* }
%struct.vc4_plane_state = type { i64, i64*, i32* }
%struct.drm_gem_cma_object = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc4_plane_async_set_fb(%struct.drm_plane* %0, %struct.drm_framebuffer* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_framebuffer*, align 8
  %5 = alloca %struct.vc4_plane_state*, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca i64, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_framebuffer* %1, %struct.drm_framebuffer** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = call %struct.vc4_plane_state* @to_vc4_plane_state(%struct.TYPE_2__* %10)
  store %struct.vc4_plane_state* %11, %struct.vc4_plane_state** %5, align 8
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %13 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %12, i32 0)
  store %struct.drm_gem_cma_object* %13, %struct.drm_gem_cma_object** %6, align 8
  %14 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %15 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %22 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %25, 0
  br label %27

27:                                               ; preds = %20, %2
  %28 = phi i1 [ true, %2 ], [ %26, %20 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %32 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %4, align 8
  %35 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %33, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %42 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %45 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @writel(i64 %40, i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %51 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %50, i32 0, i32 1
  %52 = load i64*, i64** %51, align 8
  %53 = load %struct.vc4_plane_state*, %struct.vc4_plane_state** %5, align 8
  %54 = getelementptr inbounds %struct.vc4_plane_state, %struct.vc4_plane_state* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  store i64 %49, i64* %56, align 8
  ret void
}

declare dso_local %struct.vc4_plane_state* @to_vc4_plane_state(%struct.TYPE_2__*) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @writel(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
