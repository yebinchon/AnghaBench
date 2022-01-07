; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_object_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv04.c_nv04_fifo_dma_object_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_object = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.nv04_fifo_chan = type { %struct.TYPE_16__*, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.nvkm_instmem* }
%struct.nvkm_instmem = type { i32 }
%struct.TYPE_12__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_object*)* @nv04_fifo_dma_object_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_fifo_dma_object_ctor(%struct.nvkm_fifo_chan* %0, %struct.nvkm_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fifo_chan*, align 8
  %5 = alloca %struct.nvkm_object*, align 8
  %6 = alloca %struct.nv04_fifo_chan*, align 8
  %7 = alloca %struct.nvkm_instmem*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %4, align 8
  store %struct.nvkm_object* %1, %struct.nvkm_object** %5, align 8
  %11 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %4, align 8
  %12 = call %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan* %11)
  store %struct.nv04_fifo_chan* %12, %struct.nv04_fifo_chan** %6, align 8
  %13 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %14 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %13, i32 0, i32 0
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %21, align 8
  store %struct.nvkm_instmem* %22, %struct.nvkm_instmem** %7, align 8
  %23 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %24 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 %26, 24
  %28 = or i32 -2147483648, %27
  store i32 %28, i32* %8, align 4
  %29 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %30 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  %32 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, %struct.nvkm_object* %32, i32 0, i32 1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %46 [
    i32 131, label %38
    i32 128, label %38
    i32 130, label %40
    i32 129, label %43
  ]

38:                                               ; preds = %2, %2
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %8, align 4
  br label %50

40:                                               ; preds = %2
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, 65536
  store i32 %42, i32* %8, align 4
  br label %50

43:                                               ; preds = %2
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 131072
  store i32 %45, i32* %8, align 4
  br label %50

46:                                               ; preds = %2
  %47 = call i32 @WARN_ON(i32 1)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %79

50:                                               ; preds = %43, %40, %38
  %51 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %52 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %51, i32 0, i32 0
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.nvkm_instmem*, %struct.nvkm_instmem** %7, align 8
  %60 = getelementptr inbounds %struct.nvkm_instmem, %struct.nvkm_instmem* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.nvkm_object*, %struct.nvkm_object** %5, align 8
  %63 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %64 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @nvkm_ramht_insert(i32 %61, %struct.nvkm_object* %62, i32 %66, i32 4, i32 %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.nv04_fifo_chan*, %struct.nv04_fifo_chan** %6, align 8
  %71 = getelementptr inbounds %struct.nv04_fifo_chan, %struct.nv04_fifo_chan* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %50, %46
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.nv04_fifo_chan* @nv04_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nvkm_ramht_insert(i32, %struct.nvkm_object*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
