; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv17.c_nv17_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv17.c_nv17_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_instmem* }
%struct.nvkm_instmem = type { %struct.nvkm_memory*, %struct.nvkm_memory*, %struct.nvkm_ramht* }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_ramht = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@NV04_PFIFO_DELAY_0 = common dso_local global i32 0, align 4
@NV04_PFIFO_DMA_TIMESLICE = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMHT = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMRO = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMFC = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_EN_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @nv17_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv17_fifo_init(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.nv04_fifo*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_instmem*, align 8
  %6 = alloca %struct.nvkm_ramht*, align 8
  %7 = alloca %struct.nvkm_memory*, align 8
  %8 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %9 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %10 = call %struct.nv04_fifo* @nv04_fifo(%struct.nvkm_fifo* %9)
  store %struct.nv04_fifo* %10, %struct.nv04_fifo** %3, align 8
  %11 = load %struct.nv04_fifo*, %struct.nv04_fifo** %3, align 8
  %12 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 0
  %19 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %18, align 8
  store %struct.nvkm_instmem* %19, %struct.nvkm_instmem** %5, align 8
  %20 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %21 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %20, i32 0, i32 2
  %22 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %21, align 8
  store %struct.nvkm_ramht* %22, %struct.nvkm_ramht** %6, align 8
  %23 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %23, i32 0, i32 1
  %25 = load %struct.nvkm_memory*, %struct.nvkm_memory** %24, align 8
  store %struct.nvkm_memory* %25, %struct.nvkm_memory** %7, align 8
  %26 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %5, align 8
  %27 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %26, i32 0, i32 0
  %28 = load %struct.nvkm_memory*, %struct.nvkm_memory** %27, align 8
  store %struct.nvkm_memory* %28, %struct.nvkm_memory** %8, align 8
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %30 = load i32, i32* @NV04_PFIFO_DELAY_0, align 4
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 %30, i32 255)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = load i32, i32* @NV04_PFIFO_DMA_TIMESLICE, align 4
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 %33, i32 16908287)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = load i32, i32* @NV03_PFIFO_RAMHT, align 4
  %37 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %6, align 8
  %38 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 9
  %41 = shl i32 %40, 16
  %42 = or i32 50331648, %41
  %43 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %6, align 8
  %44 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 8
  %49 = or i32 %42, %48
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 %36, i32 %49)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %52 = load i32, i32* @NV03_PFIFO_RAMRO, align 4
  %53 = load %struct.nvkm_memory*, %struct.nvkm_memory** %7, align 8
  %54 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %53)
  %55 = ashr i32 %54, 8
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 %52, i32 %55)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %58 = load i32, i32* @NV03_PFIFO_RAMFC, align 4
  %59 = load %struct.nvkm_memory*, %struct.nvkm_memory** %8, align 8
  %60 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %59)
  %61 = ashr i32 %60, 8
  %62 = or i32 %61, 65536
  %63 = call i32 @nvkm_wr32(%struct.nvkm_device* %57, i32 %58, i32 %62)
  %64 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %65 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %66 = load %struct.nv04_fifo*, %struct.nv04_fifo** %3, align 8
  %67 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @nvkm_wr32(%struct.nvkm_device* %64, i32 %65, i32 %70)
  %72 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %73 = load i32, i32* @NV03_PFIFO_INTR_0, align 4
  %74 = call i32 @nvkm_wr32(%struct.nvkm_device* %72, i32 %73, i32 -1)
  %75 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %76 = load i32, i32* @NV03_PFIFO_INTR_EN_0, align 4
  %77 = call i32 @nvkm_wr32(%struct.nvkm_device* %75, i32 %76, i32 -1)
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %79 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 %79, i32 1)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %82 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 %82, i32 1)
  %84 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %85 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %86 = call i32 @nvkm_wr32(%struct.nvkm_device* %84, i32 %85, i32 1)
  ret void
}

declare dso_local %struct.nv04_fifo* @nv04_fifo(%struct.nvkm_fifo*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_memory_addr(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
