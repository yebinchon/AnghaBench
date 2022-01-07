; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_atomic_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vkms/extr_vkms_plane.c_vkms_plane_atomic_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.drm_framebuffer, %struct.drm_framebuffer, i32, %struct.drm_framebuffer* }
%struct.drm_framebuffer = type { %struct.TYPE_3__*, i32*, i32* }
%struct.TYPE_3__ = type { i32* }
%struct.drm_plane_state = type { i32 }
%struct.vkms_plane_state = type { %struct.vkms_composer* }
%struct.vkms_composer = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @vkms_plane_atomic_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vkms_plane_atomic_update(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.vkms_plane_state*, align 8
  %6 = alloca %struct.drm_framebuffer*, align 8
  %7 = alloca %struct.vkms_composer*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %8 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %9 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %11, align 8
  store %struct.drm_framebuffer* %12, %struct.drm_framebuffer** %6, align 8
  %13 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %14 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %21 = icmp ne %struct.drm_framebuffer* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19, %2
  br label %75

23:                                               ; preds = %19
  %24 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %25 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call %struct.vkms_plane_state* @to_vkms_plane_state(%struct.TYPE_4__* %26)
  store %struct.vkms_plane_state* %27, %struct.vkms_plane_state** %5, align 8
  %28 = load %struct.vkms_plane_state*, %struct.vkms_plane_state** %5, align 8
  %29 = getelementptr inbounds %struct.vkms_plane_state, %struct.vkms_plane_state* %28, i32 0, i32 0
  %30 = load %struct.vkms_composer*, %struct.vkms_composer** %29, align 8
  store %struct.vkms_composer* %30, %struct.vkms_composer** %7, align 8
  %31 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %32 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %31, i32 0, i32 5
  %33 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %34 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = call i32 @memcpy(i32* %32, %struct.drm_framebuffer* %36, i32 4)
  %38 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %39 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %38, i32 0, i32 4
  %40 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @memcpy(i32* %39, %struct.drm_framebuffer* %43, i32 4)
  %45 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %46 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %45, i32 0, i32 3
  %47 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %48 = call i32 @memcpy(i32* %46, %struct.drm_framebuffer* %47, i32 24)
  %49 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %50 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %49, i32 0, i32 3
  %51 = call i32 @drm_framebuffer_get(i32* %50)
  %52 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %53 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %58 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %60 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %65 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.drm_framebuffer*, %struct.drm_framebuffer** %6, align 8
  %67 = getelementptr inbounds %struct.drm_framebuffer, %struct.drm_framebuffer* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.vkms_composer*, %struct.vkms_composer** %7, align 8
  %74 = getelementptr inbounds %struct.vkms_composer, %struct.vkms_composer* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.vkms_plane_state* @to_vkms_plane_state(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, %struct.drm_framebuffer*, i32) #1

declare dso_local i32 @drm_framebuffer_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
