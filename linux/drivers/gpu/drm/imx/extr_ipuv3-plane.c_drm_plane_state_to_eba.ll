; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_drm_plane_state_to_eba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_drm_plane_state_to_eba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_4__, %struct.drm_framebuffer* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.drm_framebuffer = type { i64*, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_gem_cma_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_plane_state*, i32)* @drm_plane_state_to_eba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_plane_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_framebuffer*, align 8
  %6 = alloca %struct.drm_gem_cma_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %10 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %9, i32 0, i32 1
  %11 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %10, align 8
  store %struct.drm_framebuffer* %11, %struct.drm_framebuffer** %5, align 8
  %12 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %13 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 16
  store i32 %16, i32* %7, align 4
  %17 = load %struct.drm_plane_state*, %struct.drm_plane_state** %3, align 8
  %18 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 16
  store i32 %21, i32* %8, align 4
  %22 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %22, i32 %23)
  store %struct.drm_gem_cma_object* %24, %struct.drm_gem_cma_object** %6, align 8
  %25 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %26 = icmp ne %struct.drm_gem_cma_object* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %6, align 8
  %31 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %34 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %32, %39
  %41 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %42 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 %40, %50
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %5, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = add i64 %51, %63
  ret i64 %64
}

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
