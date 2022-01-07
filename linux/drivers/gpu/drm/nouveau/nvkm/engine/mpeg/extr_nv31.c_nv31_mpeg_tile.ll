; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_fb_tile = type { i32, i32, i32 }
%struct.nv31_mpeg = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv31_mpeg_tile(%struct.nvkm_engine* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_engine*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nv31_mpeg*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %9 = load %struct.nvkm_engine*, %struct.nvkm_engine** %4, align 8
  %10 = call %struct.nv31_mpeg* @nv31_mpeg(%struct.nvkm_engine* %9)
  store %struct.nv31_mpeg* %10, %struct.nv31_mpeg** %7, align 8
  %11 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %7, align 8
  %12 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %8, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 16
  %19 = add nsw i32 45064, %18
  %20 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %21 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 %19, i32 %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul nsw i32 %25, 16
  %27 = add nsw i32 45060, %26
  %28 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %29 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 %27, i32 %30)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %33 = load i32, i32* %5, align 4
  %34 = mul nsw i32 %33, 16
  %35 = add nsw i32 45056, %34
  %36 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %37 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 %35, i32 %38)
  ret void
}

declare dso_local %struct.nv31_mpeg* @nv31_mpeg(%struct.nvkm_engine*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
