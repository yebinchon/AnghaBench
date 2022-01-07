; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_device_includesvga3d_surfacedefs.h_svga3dsurface_get_pixel_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_device_includesvga3d_surfacedefs.h_svga3dsurface_get_pixel_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga3d_surface_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @svga3dsurface_get_pixel_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svga3dsurface_get_pixel_offset(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.svga3d_surface_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32 %20)
  store %struct.svga3d_surface_desc* %21, %struct.svga3d_surface_desc** %13, align 8
  %22 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %13, align 8
  %23 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %13, align 8
  %27 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %15, align 4
  %30 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %13, align 8
  %31 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @__KERNEL_DIV_ROUND_UP(i32 %34, i32 %35)
  %37 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %13, align 8
  %38 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @__KERNEL_DIV_ROUND_UP(i32 %41, i32 %42)
  %44 = load i32, i32* %17, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %18, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %16, align 4
  %48 = sdiv i32 %46, %47
  %49 = load i32, i32* %18, align 4
  %50 = mul nsw i32 %48, %49
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %15, align 4
  %53 = sdiv i32 %51, %52
  %54 = load i32, i32* %17, align 4
  %55 = mul nsw i32 %53, %54
  %56 = add nsw i32 %50, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %14, align 4
  %59 = sdiv i32 %57, %58
  %60 = load %struct.svga3d_surface_desc*, %struct.svga3d_surface_desc** %13, align 8
  %61 = getelementptr inbounds %struct.svga3d_surface_desc, %struct.svga3d_surface_desc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = add nsw i32 %56, %63
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  ret i32 %65
}

declare dso_local %struct.svga3d_surface_desc* @svga3dsurface_get_desc(i32) #1

declare dso_local i32 @__KERNEL_DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
