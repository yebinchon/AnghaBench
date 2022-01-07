; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nv04_fifo_chan = type { i32, %struct.TYPE_9__, %struct.nv04_fifo* }
%struct.TYPE_9__ = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_10__, %struct.nv04_fifo_ramfc* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.nvkm_memory* }
%struct.nvkm_memory = type { i32 }
%struct.nv04_fifo_ramfc = type { i64, i64, i64, i32, i32 }

@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_DMA_PUSH = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_GET = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUT = common dso_local global i32 0, align 4
@NV04_PFIFO_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv04_fifo_dma_fini(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.nv04_fifo_chan*, align 8
  %4 = alloca %struct.nv04_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_memory*, align 8
  %7 = alloca %struct.nv04_fifo_ramfc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %16 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %17 = call %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan* %16)
  store %struct.nv04_fifo_chan* %17, %struct.nv04_fifo_chan** %3, align 8
  %18 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %19 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %18, i32 0, i32 2
  %20 = load %struct.nv04_fifo*, %struct.nv04_fifo** %19, align 8
  store %struct.nv04_fifo* %20, %struct.nv04_fifo** %4, align 8
  %21 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %22 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %25, align 8
  store %struct.nvkm_device* %26, %struct.nvkm_device** %5, align 8
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %28 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.nvkm_memory*, %struct.nvkm_memory** %30, align 8
  store %struct.nvkm_memory* %31, %struct.nvkm_memory** %6, align 8
  %32 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %33 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  %37 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %38 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %10, align 4
  %40 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %41 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %47 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %46, i32 0)
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %50 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %55 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %53, %57
  br i1 %58, label %59, label %173

59:                                               ; preds = %1
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %61 = load i32, i32* @NV04_PFIFO_CACHE1_DMA_PUSH, align 4
  %62 = call i32 @nvkm_mask(%struct.nvkm_device* %60, i32 %61, i32 1, i32 0)
  %63 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %64 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %63, i32 %64, i32 0)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %67 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %68 = call i32 @nvkm_mask(%struct.nvkm_device* %66, i32 %67, i32 1, i32 0)
  %69 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %70 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %69, i32 0, i32 1
  %71 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %70, align 8
  store %struct.nv04_fifo_ramfc* %71, %struct.nv04_fifo_ramfc** %7, align 8
  %72 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %73 = call i32 @nvkm_kmap(%struct.nvkm_memory* %72)
  br label %74

74:                                               ; preds = %132, %59
  %75 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %76 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = shl i64 1, %77
  %79 = sub i64 %78, 1
  %80 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %81 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = shl i64 %79, %82
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %12, align 4
  %85 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %86 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = shl i64 1, %87
  %89 = sub i64 %88, 1
  %90 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %91 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = shl i64 %89, %92
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %13, align 4
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %96 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %97 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @nvkm_rd32(%struct.nvkm_device* %95, i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = and i32 %99, %100
  %102 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %103 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = ashr i32 %101, %105
  store i32 %106, i32* %14, align 4
  %107 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %108 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %109 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @nvkm_ro32(%struct.nvkm_memory* %107, i32 %112)
  %114 = load i32, i32* %13, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* %15, align 4
  %117 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %118 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %119 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %126 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %124, %128
  %130 = or i32 %123, %129
  %131 = call i32 @nvkm_wo32(%struct.nvkm_memory* %117, i32 %122, i32 %130)
  br label %132

132:                                              ; preds = %74
  %133 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %134 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %133, i32 1
  store %struct.nv04_fifo_ramfc* %134, %struct.nv04_fifo_ramfc** %7, align 8
  %135 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %74, label %138

138:                                              ; preds = %132
  %139 = load %struct.nvkm_memory*, %struct.nvkm_memory** %6, align 8
  %140 = call i32 @nvkm_done(%struct.nvkm_memory* %139)
  %141 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %142 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %141, i32 0, i32 1
  %143 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %142, align 8
  store %struct.nv04_fifo_ramfc* %143, %struct.nv04_fifo_ramfc** %7, align 8
  br label %144

144:                                              ; preds = %150, %138
  %145 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %146 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %147 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @nvkm_wr32(%struct.nvkm_device* %145, i32 %148, i32 0)
  br label %150

150:                                              ; preds = %144
  %151 = load %struct.nv04_fifo_ramfc*, %struct.nv04_fifo_ramfc** %7, align 8
  %152 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %151, i32 1
  store %struct.nv04_fifo_ramfc* %152, %struct.nv04_fifo_ramfc** %7, align 8
  %153 = getelementptr inbounds %struct.nv04_fifo_ramfc, %struct.nv04_fifo_ramfc* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %144, label %156

156:                                              ; preds = %150
  %157 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %158 = load i32, i32* @NV03_PFIFO_CACHE1_GET, align 4
  %159 = call i32 @nvkm_wr32(%struct.nvkm_device* %157, i32 %158, i32 0)
  %160 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %161 = load i32, i32* @NV03_PFIFO_CACHE1_PUT, align 4
  %162 = call i32 @nvkm_wr32(%struct.nvkm_device* %160, i32 %161, i32 0)
  %163 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %164 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %165 = load i32, i32* %9, align 4
  %166 = call i32 @nvkm_wr32(%struct.nvkm_device* %163, i32 %164, i32 %165)
  %167 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %168 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %169 = call i32 @nvkm_wr32(%struct.nvkm_device* %167, i32 %168, i32 1)
  %170 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %171 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %172 = call i32 @nvkm_wr32(%struct.nvkm_device* %170, i32 %171, i32 1)
  br label %173

173:                                              ; preds = %156, %1
  %174 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %175 = load i32, i32* @NV04_PFIFO_MODE, align 4
  %176 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %3, align 8
  %177 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = shl i32 1, %179
  %181 = call i32 @nvkm_mask(%struct.nvkm_device* %174, i32 %175, i32 %180, i32 0)
  %182 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %183 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %184 = call i32 @nvkm_wr32(%struct.nvkm_device* %182, i32 %183, i32 1)
  %185 = load %struct.nv04_fifo*, %struct.nv04_fifo** %4, align 8
  %186 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i64, i64* %8, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  ret void
}

declare dso_local %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_ro32(%struct.nvkm_memory*, i32) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
