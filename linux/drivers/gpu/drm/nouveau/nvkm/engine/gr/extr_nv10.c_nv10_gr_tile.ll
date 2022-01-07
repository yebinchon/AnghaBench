; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_tile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv10.c_nv10_gr_tile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fb_tile = type { i32, i32, i32 }
%struct.nv10_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_fifo* }
%struct.nvkm_fifo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv10_gr_tile(%struct.nvkm_gr* %0, i32 %1, %struct.nvkm_fb_tile* %2) #0 {
  %4 = alloca %struct.nvkm_gr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_fb_tile*, align 8
  %7 = alloca %struct.nv10_gr*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %struct.nvkm_fifo*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nvkm_fb_tile* %2, %struct.nvkm_fb_tile** %6, align 8
  %11 = load %struct.nvkm_gr*, %struct.nvkm_gr** %4, align 8
  %12 = call %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr* %11)
  store %struct.nv10_gr* %12, %struct.nv10_gr** %7, align 8
  %13 = load %struct.nv10_gr*, %struct.nv10_gr** %7, align 8
  %14 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %20, align 8
  store %struct.nvkm_fifo* %21, %struct.nvkm_fifo** %9, align 8
  %22 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %9, align 8
  %23 = call i32 @nvkm_fifo_pause(%struct.nvkm_fifo* %22, i64* %10)
  %24 = load %struct.nv10_gr*, %struct.nv10_gr** %7, align 8
  %25 = getelementptr inbounds %struct.nv10_gr, %struct.nv10_gr* %24, i32 0, i32 0
  %26 = call i32 @nv04_gr_idle(%struct.TYPE_6__* %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @NV10_PGRAPH_TLIMIT(i32 %28)
  %30 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 %29, i32 %32)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @NV10_PGRAPH_TSIZE(i32 %35)
  %37 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %38 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 %36, i32 %39)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @NV10_PGRAPH_TILE(i32 %42)
  %44 = load %struct.nvkm_fb_tile*, %struct.nvkm_fb_tile** %6, align 8
  %45 = getelementptr inbounds %struct.nvkm_fb_tile, %struct.nvkm_fb_tile* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 %43, i32 %46)
  %48 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %9, align 8
  %49 = call i32 @nvkm_fifo_start(%struct.nvkm_fifo* %48, i64* %10)
  ret void
}

declare dso_local %struct.nv10_gr* @nv10_gr(%struct.nvkm_gr*) #1

declare dso_local i32 @nvkm_fifo_pause(%struct.nvkm_fifo*, i64*) #1

declare dso_local i32 @nv04_gr_idle(%struct.TYPE_6__*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @NV10_PGRAPH_TLIMIT(i32) #1

declare dso_local i32 @NV10_PGRAPH_TSIZE(i32) #1

declare dso_local i32 @NV10_PGRAPH_TILE(i32) #1

declare dso_local i32 @nvkm_fifo_start(%struct.nvkm_fifo*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
