; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_set_tiling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/extr_nouveau_bo.c_nv10_bo_set_tiling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_drm_tile = type { i32 }
%struct.drm_device = type { i32 }
%struct.nouveau_drm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.nvkm_fb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nouveau_drm_tile* (%struct.drm_device*, i64, i64, i64, i64)* @nv10_bo_set_tiling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nouveau_drm_tile* @nv10_bo_set_tiling(%struct.drm_device* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.drm_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nouveau_drm*, align 8
  %12 = alloca %struct.nvkm_fb*, align 8
  %13 = alloca %struct.nouveau_drm_tile*, align 8
  %14 = alloca %struct.nouveau_drm_tile*, align 8
  %15 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %17 = call %struct.nouveau_drm* @nouveau_drm(%struct.drm_device* %16)
  store %struct.nouveau_drm* %17, %struct.nouveau_drm** %11, align 8
  %18 = load %struct.nouveau_drm*, %struct.nouveau_drm** %11, align 8
  %19 = getelementptr inbounds %struct.nouveau_drm, %struct.nouveau_drm* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call %struct.nvkm_fb* @nvxx_fb(i32* %20)
  store %struct.nvkm_fb* %21, %struct.nvkm_fb** %12, align 8
  store %struct.nouveau_drm_tile* null, %struct.nouveau_drm_tile** %14, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %63, %5
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %25 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %22
  %30 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.nouveau_drm_tile* @nv10_bo_get_tile_region(%struct.drm_device* %30, i32 %31)
  store %struct.nouveau_drm_tile* %32, %struct.nouveau_drm_tile** %13, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %14, align 8
  %37 = icmp ne %struct.nouveau_drm_tile* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %13, align 8
  store %struct.nouveau_drm_tile* %39, %struct.nouveau_drm_tile** %14, align 8
  br label %63

40:                                               ; preds = %35, %29
  %41 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %13, align 8
  %42 = icmp ne %struct.nouveau_drm_tile* %41, null
  br i1 %42, label %43, label %58

43:                                               ; preds = %40
  %44 = load %struct.nvkm_fb*, %struct.nvkm_fb** %12, align 8
  %45 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %43
  %55 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %56 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %13, align 8
  %57 = call i32 @nv10_bo_update_tile_region(%struct.drm_device* %55, %struct.nouveau_drm_tile* %56, i64 0, i64 0, i64 0, i64 0)
  br label %58

58:                                               ; preds = %54, %43, %40
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %61 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %13, align 8
  %62 = call i32 @nv10_bo_put_tile_region(%struct.drm_device* %60, %struct.nouveau_drm_tile* %61, i32* null)
  br label %63

63:                                               ; preds = %59, %38
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %22

66:                                               ; preds = %22
  %67 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %14, align 8
  %68 = icmp ne %struct.nouveau_drm_tile* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %66
  %70 = load %struct.drm_device*, %struct.drm_device** %6, align 8
  %71 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %14, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = call i32 @nv10_bo_update_tile_region(%struct.drm_device* %70, %struct.nouveau_drm_tile* %71, i64 %72, i64 %73, i64 %74, i64 %75)
  br label %77

77:                                               ; preds = %69, %66
  %78 = load %struct.nouveau_drm_tile*, %struct.nouveau_drm_tile** %14, align 8
  ret %struct.nouveau_drm_tile* %78
}

declare dso_local %struct.nouveau_drm* @nouveau_drm(%struct.drm_device*) #1

declare dso_local %struct.nvkm_fb* @nvxx_fb(i32*) #1

declare dso_local %struct.nouveau_drm_tile* @nv10_bo_get_tile_region(%struct.drm_device*, i32) #1

declare dso_local i32 @nv10_bo_update_tile_region(%struct.drm_device*, %struct.nouveau_drm_tile*, i64, i64, i64, i64) #1

declare dso_local i32 @nv10_bo_put_tile_region(%struct.drm_device*, %struct.nouveau_drm_tile*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
