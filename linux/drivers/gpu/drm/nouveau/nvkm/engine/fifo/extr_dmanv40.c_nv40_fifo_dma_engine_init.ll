; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_11__, %struct.TYPE_9__**, %struct.nv04_fifo* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_instmem* }
%struct.nvkm_instmem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*)* @nv40_fifo_dma_engine_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_dma_engine_init(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca %struct.nv04_fifo_chan*, align 8
  %7 = alloca %struct.nv04_fifo*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %struct.nvkm_instmem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %4, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %5, align 8
  %15 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %16 = call %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan* %15)
  store %struct.nv04_fifo_chan* %16, %struct.nv04_fifo_chan** %6, align 8
  %17 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %18 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %17, i32 0, i32 3
  %19 = load %struct.nv04_fifo*, %struct.nv04_fifo** %18, align 8
  store %struct.nv04_fifo* %19, %struct.nv04_fifo** %7, align 8
  %20 = load %struct.nv04_fifo*, %struct.nv04_fifo** %7, align 8
  %21 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %24, align 8
  store %struct.nvkm_device* %25, %struct.nvkm_device** %8, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %27 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %26, i32 0, i32 0
  %28 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %27, align 8
  store %struct.nvkm_instmem* %28, %struct.nvkm_instmem** %9, align 8
  %29 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %30 = call i32 @nv40_fifo_dma_engine(%struct.nvkm_engine* %29, i32* %12, i32* %13)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %98

33:                                               ; preds = %2
  %34 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %35 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %38 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 %40
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 4
  store i32 %45, i32* %11, align 4
  %46 = load %struct.nv04_fifo*, %struct.nv04_fifo** %7, align 8
  %47 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %52 = call i32 @nvkm_mask(%struct.nvkm_device* %51, i32 9472, i32 1, i32 0)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %54 = call i32 @nvkm_rd32(%struct.nvkm_device* %53, i32 12804)
  %55 = load %struct.nv04_fifo*, %struct.nv04_fifo** %7, align 8
  %56 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %54, %59
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %63 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %61, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %33
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %33
  %73 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %9, align 8
  %74 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @nvkm_kmap(i32 %75)
  %77 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %9, align 8
  %78 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %81 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @nvkm_wo32(i32 %79, i32 %84, i32 %85)
  %87 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %9, align 8
  %88 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @nvkm_done(i32 %89)
  %91 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %92 = call i32 @nvkm_mask(%struct.nvkm_device* %91, i32 9472, i32 1, i32 1)
  %93 = load %struct.nv04_fifo*, %struct.nv04_fifo** %7, align 8
  %94 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i64, i64* %10, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %72, %32
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nv40_fifo_dma_engine(%struct.nvkm_engine*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i32, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
