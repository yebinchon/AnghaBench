; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_force_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_plane_force_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { i32*, i32*, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.drm_plane*, i32*)* }

@.str = private unnamed_addr constant [38 x i8] c"failed to disable plane with busy fb\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_plane_force_disable(%struct.drm_plane* %0) #0 {
  %2 = alloca %struct.drm_plane*, align 8
  %3 = alloca i32, align 4
  store %struct.drm_plane* %0, %struct.drm_plane** %2, align 8
  %4 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %5 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %11 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @drm_drv_uses_atomic_modeset(i32 %12)
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %16 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %19 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %21 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.drm_plane*, i32*)*, i32 (%struct.drm_plane*, i32*)** %23, align 8
  %25 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %26 = call i32 %24(%struct.drm_plane* %25, i32* null)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %9
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %32 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %31, i32 0, i32 2
  store i32* null, i32** %32, align 8
  br label %44

33:                                               ; preds = %9
  %34 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %35 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @drm_framebuffer_put(i32* %36)
  %38 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %39 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %41 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.drm_plane*, %struct.drm_plane** %2, align 8
  %43 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %33, %29, %8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @drm_drv_uses_atomic_modeset(i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

declare dso_local i32 @drm_framebuffer_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
