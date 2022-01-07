; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_engine = type { i32 }
%struct.nv04_fifo_chan = type { i64, %struct.TYPE_7__, %struct.nv04_fifo* }
%struct.TYPE_7__ = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_instmem* }
%struct.nvkm_instmem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_engine*, i32)* @nv40_fifo_dma_engine_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_dma_engine_fini(%struct.nvkm_fifo_chan* %0, %struct.nvkm_engine* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_engine*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nv04_fifo_chan*, align 8
  %9 = alloca %struct.nv04_fifo*, align 8
  %10 = alloca %struct.nvkm_device*, align 8
  %11 = alloca %struct.nvkm_instmem*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_engine* %1, %struct.nvkm_engine** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %17 = call %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan* %16)
  store %struct.nv04_fifo_chan* %17, %struct.nv04_fifo_chan** %8, align 8
  %18 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %8, align 8
  %19 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %18, i32 0, i32 2
  %20 = load %struct.nv04_fifo*, %struct.nv04_fifo** %19, align 8
  store %struct.nv04_fifo* %20, %struct.nv04_fifo** %9, align 8
  %21 = load %struct.nv04_fifo*, %struct.nv04_fifo** %9, align 8
  %22 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %25, align 8
  store %struct.nvkm_device* %26, %struct.nvkm_device** %10, align 8
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 0
  %29 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %28, align 8
  store %struct.nvkm_instmem* %29, %struct.nvkm_instmem** %11, align 8
  %30 = load %struct.nvkm_engine*, %struct.nvkm_engine** %6, align 8
  %31 = call i32 @nv40_fifo_dma_engine(%struct.nvkm_engine* %30, i64* %13, i64* %14)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %85

34:                                               ; preds = %3
  %35 = load %struct.nv04_fifo*, %struct.nv04_fifo** %9, align 8
  %36 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %41 = call i32 @nvkm_mask(%struct.nvkm_device* %40, i32 9472, i32 1, i32 0)
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 12804)
  %44 = load %struct.nv04_fifo*, %struct.nv04_fifo** %9, align 8
  %45 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %43, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %8, align 8
  %52 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %34
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i64 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %34
  %61 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %11, align 8
  %62 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nvkm_kmap(i32 %63)
  %65 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %11, align 8
  %66 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %8, align 8
  %69 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %14, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @nvkm_wo32(i32 %67, i64 %72, i32 0)
  %74 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %11, align 8
  %75 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @nvkm_done(i32 %76)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  %79 = call i32 @nvkm_mask(%struct.nvkm_device* %78, i32 9472, i32 1, i32 1)
  %80 = load %struct.nv04_fifo*, %struct.nv04_fifo** %9, align 8
  %81 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %60, %33
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @nv40_fifo_dma_engine(%struct.nvkm_engine*, i64*, i64*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i64, i32) #1

declare dso_local i32 @nvkm_kmap(i32) #1

declare dso_local i32 @nvkm_wo32(i32, i64, i32) #1

declare dso_local i32 @nvkm_done(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
