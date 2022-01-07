; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_tile_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_base.c_nvkm_fb_tile_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.nvkm_fb*, i32, i32, i32, i32, i32, %struct.nvkm_fb_tile*)* }
%struct.nvkm_fb_tile = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_fb_tile_init(%struct.nvkm_fb* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.nvkm_fb_tile* %6) #0 {
  %8 = alloca %struct.nvkm_fb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_fb_tile*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.nvkm_fb_tile* %6, %struct.nvkm_fb_tile** %14, align 8
  %15 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %16 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.nvkm_fb*, i32, i32, i32, i32, i32, %struct.nvkm_fb_tile*)*, i32 (%struct.nvkm_fb*, i32, i32, i32, i32, i32, %struct.nvkm_fb_tile*)** %19, align 8
  %21 = load %struct.nvkm_fb*, %struct.nvkm_fb** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %14, align 8
  %28 = call i32 %20(%struct.nvkm_fb* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, %struct.nvkm_fb_tile* %27)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
