; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_device_includesvga3d_surfacedefs.h_svga3dsurface_get_image_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_device_includesvga3d_surfacedefs.h_svga3dsurface_get_image_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga3d_surface_desc = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.svga3d_surface_desc*, %struct.TYPE_6__*, i32)* @svga3dsurface_get_image_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svga3dsurface_get_image_buffer_size(%struct.svga3d_surface_desc* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.svga3d_surface_desc*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.svga3d_surface_desc* %0, %struct.svga3d_surface_desc** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %5, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = call i32 @svga3dsurface_get_size_in_blocks(%struct.svga3d_surface_desc* %11, %struct.TYPE_6__* %12, %struct.TYPE_6__* %8)
  %14 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %5, align 8
  %15 = call i64 @svga3dsurface_is_planar_surface(%struct.svga3d_surface_desc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clamped_umul32(i32 %19, i32 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clamped_umul32(i32 %23, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %5, align 8
  %29 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clamped_umul32(i32 %27, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %50

33:                                               ; preds = %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %39 = call i32 @svga3dsurface_calculate_pitch(%struct.svga3d_surface_desc* %37, %struct.TYPE_6__* %38)
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @clamped_umul32(i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @clamped_umul32(i32 %45, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %17
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @svga3dsurface_get_size_in_blocks(%struct.svga3d_surface_desc*, %struct.TYPE_6__*, %struct.TYPE_6__*) #1

declare dso_local i64 @svga3dsurface_is_planar_surface(%struct.svga3d_surface_desc*) #1

declare dso_local i32 @clamped_umul32(i32, i32) #1

declare dso_local i32 @svga3dsurface_calculate_pitch(%struct.svga3d_surface_desc*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
