; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_update_tile_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_update_tile_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.nouveau_drm_tile = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.nouveau_drm_tile* }
%struct.nvkm_fb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_fb_tile* }
%struct.nvkm_fb_tile = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.nouveau_drm_tile*, i32, i32, i32, i32)* @nv10_bo_update_tile_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv10_bo_update_tile_region(%struct.drm_device* %0, %struct.nouveau_drm_tile* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.drm_device*, align 8
  %8 = alloca %struct.nouveau_drm_tile*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nouveau_drm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nvkm_fb*, align 8
  %16 = alloca %struct.nvkm_fb_tile*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %7, align 8
  store %struct.nouveau_drm_tile* %1, %struct.nouveau_drm_tile** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load %struct.drm_device*, %struct.drm_device** %7, align 8
  %18 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %17)
  store %struct.nouveau_drm* %18, %struct.nouveau_drm** %13, align 8
  %19 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %8, align 8
  %20 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %22, align 8
  %24 = ptrtoint %struct.nouveau_drm_tile* %19 to i64
  %25 = ptrtoint %struct.nouveau_drm_tile* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load %struct.nouveau_drm*, %struct.nouveau_drm** %13, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = call %struct.nvkm_fb* @nvxx_fb(i32* %31)
  store %struct.nvkm_fb* %32, %struct.nvkm_fb** %15, align 8
  %33 = load %struct.nvkm_fb*, %struct.nvkm_fb** %15, align 8
  %34 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %35, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %36, i64 %38
  store %struct.nvkm_fb_tile* %39, %struct.nvkm_fb_tile** %16, align 8
  %40 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %8, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm_tile, %struct.nouveau_drm_tile* %40, i32 0, i32 0
  %42 = call i32 @nouveau_fence_unref(i32* %41)
  %43 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %16, align 8
  %44 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %6
  %48 = load %struct.nvkm_fb*, %struct.nvkm_fb** %15, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %16, align 8
  %51 = call i32 @nvkm_fb_tile_fini(%struct.nvkm_fb* %48, i32 %49, %struct.nvkm_fb_tile* %50)
  br label %52

52:                                               ; preds = %47, %6
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.nvkm_fb*, %struct.nvkm_fb** %15, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %16, align 8
  %63 = call i32 @nvkm_fb_tile_init(%struct.nvkm_fb* %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, %struct.nvkm_fb_tile* %62)
  br label %64

64:                                               ; preds = %55, %52
  %65 = load %struct.nvkm_fb*, %struct.nvkm_fb** %15, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %16, align 8
  %68 = call i32 @nvkm_fb_tile_prog(%struct.nvkm_fb* %65, i32 %66, %struct.nvkm_fb_tile* %67)
  ret void
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_fb* @nvxx_fb(i32*) #1

declare dso_local i32 @nouveau_fence_unref(i32*) #1

declare dso_local i32 @nvkm_fb_tile_fini(%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*) #1

declare dso_local i32 @nvkm_fb_tile_init(%struct.nvkm_fb*, i32, i32, i32, i32, i32, %struct.nvkm_fb_tile*) #1

declare dso_local i32 @nvkm_fb_tile_prog(%struct.nvkm_fb*, i32, %struct.nvkm_fb_tile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
