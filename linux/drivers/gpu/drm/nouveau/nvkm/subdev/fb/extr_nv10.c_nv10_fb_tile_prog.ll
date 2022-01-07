; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv10.c_nv10_fb_tile_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_nv10.c_nv10_fb_tile_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fb_tile = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv10_fb_tile_prog(%struct.nvkm_fb* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %8 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %9 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %7, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = mul nsw i32 %13, 16
  %15 = add nsw i32 1049156, %14
  %16 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %17 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nvkm_wr32(%struct.nvkm_device* %12, i32 %15, i32 %18)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %21 = load i32, i32* %5, align 4
  %22 = mul nsw i32 %21, 16
  %23 = add nsw i32 1049160, %22
  %24 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %25 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 %23, i32 %26)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = mul nsw i32 %29, 16
  %31 = add nsw i32 1049152, %30
  %32 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %33 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 %31, i32 %34)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = mul nsw i32 %37, 16
  %39 = add nsw i32 1049152, %38
  %40 = call i32 @nvkm_rd32(%struct.nvkm_device* %36, i32 %39)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
