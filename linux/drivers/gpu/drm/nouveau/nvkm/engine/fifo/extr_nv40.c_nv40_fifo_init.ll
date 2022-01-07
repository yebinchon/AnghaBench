; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv40.c_nv40_fifo_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv40.c_nv40_fifo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nv04_fifo = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, %struct.nvkm_instmem*, %struct.nvkm_fb* }
%struct.nvkm_instmem = type { %struct.nvkm_memory*, %struct.nvkm_memory*, %struct.nvkm_ramht* }
%struct.nvkm_memory = type { i32 }
%struct.nvkm_ramht = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.nvkm_fb = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@NV03_PFIFO_RAMHT = common dso_local global i32 0, align 4
@NV03_PFIFO_RAMRO = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH1 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_INTR_EN_0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHE1_PUSH0 = common dso_local global i32 0, align 4
@NV04_PFIFO_CACHE1_PULL0 = common dso_local global i32 0, align 4
@NV03_PFIFO_CACHES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo*)* @nv40_fifo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv40_fifo_init(%struct.nvkm_fifo* %0) #0 {
  %2 = alloca %struct.nvkm_fifo*, align 8
  %3 = alloca %struct.nv04_fifo*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca %struct.nvkm_fb*, align 8
  %6 = alloca %struct.nvkm_instmem*, align 8
  %7 = alloca %struct.nvkm_ramht*, align 8
  %8 = alloca %struct.nvkm_memory*, align 8
  %9 = alloca %struct.nvkm_memory*, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %2, align 8
  %10 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %2, align 8
  %11 = call %struct.nv04_fifo* @nv04_fifo(%struct.nvkm_fifo* %10)
  store %struct.nv04_fifo* %11, %struct.nv04_fifo** %3, align 8
  %12 = load %struct.nv04_fifo*, %struct.nv04_fifo** %3, align 8
  %13 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %4, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 2
  %20 = load %struct.nvkm_fb*, %struct.nvkm_fb** %19, align 8
  store %struct.nvkm_fb* %20, %struct.nvkm_fb** %5, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 1
  %23 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %22, align 8
  store %struct.nvkm_instmem* %23, %struct.nvkm_instmem** %6, align 8
  %24 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %6, align 8
  %25 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %24, i32 0, i32 2
  %26 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %25, align 8
  store %struct.nvkm_ramht* %26, %struct.nvkm_ramht** %7, align 8
  %27 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %6, align 8
  %28 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %27, i32 0, i32 1
  %29 = load %struct.nvkm_memory*, %struct.nvkm_memory** %28, align 8
  store %struct.nvkm_memory* %29, %struct.nvkm_memory** %8, align 8
  %30 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %6, align 8
  %31 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %30, i32 0, i32 0
  %32 = load %struct.nvkm_memory*, %struct.nvkm_memory** %31, align 8
  store %struct.nvkm_memory* %32, %struct.nvkm_memory** %9, align 8
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 8256, i32 255)
  %35 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %36 = call i32 @nvkm_wr32(%struct.nvkm_device* %35, i32 8260, i32 553779199)
  %37 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %37, i32 8280, i32 1)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %40 = load i32, i32* @NV03_PFIFO_RAMHT, align 4
  %41 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %7, align 8
  %42 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 9
  %45 = shl i32 %44, 16
  %46 = or i32 50331648, %45
  %47 = load %struct.nvkm_ramht*, %struct.nvkm_ramht** %7, align 8
  %48 = getelementptr inbounds %struct.nvkm_ramht, %struct.nvkm_ramht* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 8
  %53 = or i32 %46, %52
  %54 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 %40, i32 %53)
  %55 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %56 = load i32, i32* @NV03_PFIFO_RAMRO, align 4
  %57 = load %struct.nvkm_memory*, %struct.nvkm_memory** %8, align 8
  %58 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %57)
  %59 = ashr i32 %58, 8
  %60 = call i32 @nvkm_wr32(%struct.nvkm_device* %55, i32 %56, i32 %59)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  switch i32 %63, label %70 [
    i32 71, label %64
    i32 73, label %64
    i32 75, label %64
    i32 64, label %67
    i32 65, label %67
    i32 66, label %67
    i32 67, label %67
    i32 69, label %67
    i32 72, label %67
  ]

64:                                               ; preds = %1, %1, %1
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %66 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 8752, i32 1)
  br label %67

67:                                               ; preds = %1, %1, %1, %1, %1, %1, %64
  %68 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %69 = call i32 @nvkm_wr32(%struct.nvkm_device* %68, i32 8736, i32 196610)
  br label %86

70:                                               ; preds = %1
  %71 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %72 = call i32 @nvkm_wr32(%struct.nvkm_device* %71, i32 8752, i32 0)
  %73 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %74 = load %struct.nvkm_fb*, %struct.nvkm_fb** %5, align 8
  %75 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %74, i32 0, i32 0
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sub nsw i32 %78, 524288
  %80 = load %struct.nvkm_memory*, %struct.nvkm_memory** %9, align 8
  %81 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %80)
  %82 = add nsw i32 %79, %81
  %83 = ashr i32 %82, 16
  %84 = or i32 %83, 196608
  %85 = call i32 @nvkm_wr32(%struct.nvkm_device* %73, i32 8736, i32 %84)
  br label %86

86:                                               ; preds = %70, %67
  %87 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %88 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH1, align 4
  %89 = load %struct.nv04_fifo*, %struct.nv04_fifo** %3, align 8
  %90 = getelementptr inbounds %struct.nv04_fifo, %struct.nv04_fifo* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = call i32 @nvkm_wr32(%struct.nvkm_device* %87, i32 %88, i32 %93)
  %95 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %96 = load i32, i32* @NV03_PFIFO_INTR_0, align 4
  %97 = call i32 @nvkm_wr32(%struct.nvkm_device* %95, i32 %96, i32 -1)
  %98 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %99 = load i32, i32* @NV03_PFIFO_INTR_EN_0, align 4
  %100 = call i32 @nvkm_wr32(%struct.nvkm_device* %98, i32 %99, i32 -1)
  %101 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %102 = load i32, i32* @NV03_PFIFO_CACHE1_PUSH0, align 4
  %103 = call i32 @nvkm_wr32(%struct.nvkm_device* %101, i32 %102, i32 1)
  %104 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %105 = load i32, i32* @NV04_PFIFO_CACHE1_PULL0, align 4
  %106 = call i32 @nvkm_wr32(%struct.nvkm_device* %104, i32 %105, i32 1)
  %107 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %108 = load i32, i32* @NV03_PFIFO_CACHES, align 4
  %109 = call i32 @nvkm_wr32(%struct.nvkm_device* %107, i32 %108, i32 1)
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
