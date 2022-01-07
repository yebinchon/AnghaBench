; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_drm_plane_state_to_vbo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/imx/extr_ipuv3-plane.c_drm_plane_state_to_vbo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane_state = type { %struct.TYPE_3__, %struct.drm_framebuffer* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.drm_framebuffer = type { i64*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32* }
%struct.drm_gem_cma_object = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.drm_plane_state*)* @drm_plane_state_to_vbo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @drm_plane_state_to_vbo(%struct.drm_plane_state* %0) #0 {
  %2 = alloca %struct.drm_plane_state*, align 8
  %3 = alloca %struct.drm_framebuffer*, align 8
  %4 = alloca %struct.drm_gem_cma_object*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_plane_state* %0, %struct.drm_plane_state** %2, align 8
  %8 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %9 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %8, i32 0, i32 1
  %10 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %9, align 8
  store %struct.drm_framebuffer* %10, %struct.drm_framebuffer** %3, align 8
  %11 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %12 = call i64 @drm_plane_state_to_eba(%struct.drm_plane_state* %11, i32 0)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = ashr i32 %16, 16
  store i32 %17, i32* %6, align 4
  %18 = load %struct.drm_plane_state*, %struct.drm_plane_state** %2, align 8
  %19 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  store i32 %22, i32* %7, align 4
  %23 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %24 = call %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer* %23, i32 2)
  store %struct.drm_gem_cma_object* %24, %struct.drm_gem_cma_object** %4, align 8
  %25 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %26 = icmp ne %struct.drm_gem_cma_object* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %31 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %38 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sdiv i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %4, align 8
  %45 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %48 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 2
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %46, %51
  %53 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %54 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add i64 %52, %60
  %62 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %3, align 8
  %63 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %62, i32 0, i32 2
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = add i64 %61, %71
  %73 = load i64, i64* %5, align 8
  %74 = sub i64 %72, %73
  ret i64 %74
}

declare dso_local i64 @drm_plane_state_to_eba(%struct.drm_plane_state*, i32) #1

declare dso_local %struct.drm_gem_cma_object* @drm_fb_cma_get_gem_obj(%struct.drm_framebuffer*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
