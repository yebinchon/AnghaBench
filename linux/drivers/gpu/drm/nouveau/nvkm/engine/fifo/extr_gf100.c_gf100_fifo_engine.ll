; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.gf100_fifo = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_GR = common dso_local global i32 0, align 4
@NVKM_ENGINE_MSVLD = common dso_local global i32 0, align 4
@NVKM_ENGINE_MSPPP = common dso_local global i32 0, align 4
@NVKM_ENGINE_MSPDEC = common dso_local global i32 0, align 4
@NVKM_ENGINE_CE0 = common dso_local global i32 0, align 4
@NVKM_ENGINE_CE1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvkm_engine* (%struct.gf100_fifo*, i32)* @gf100_fifo_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvkm_engine* @gf100_fifo_engine(%struct.gf100_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_engine*, align 8
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.gf100_fifo* %0, %struct.gf100_fifo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %8 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %6, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %26 [
    i32 0, label %14
    i32 1, label %16
    i32 2, label %18
    i32 3, label %20
    i32 4, label %22
    i32 5, label %24
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @NVKM_ENGINE_GR, align 4
  store i32 %15, i32* %5, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load i32, i32* @NVKM_ENGINE_MSVLD, align 4
  store i32 %17, i32* %5, align 4
  br label %27

18:                                               ; preds = %2
  %19 = load i32, i32* @NVKM_ENGINE_MSPPP, align 4
  store i32 %19, i32* %5, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* @NVKM_ENGINE_MSPDEC, align 4
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @NVKM_ENGINE_CE0, align 4
  store i32 %23, i32* %5, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @NVKM_ENGINE_CE1, align 4
  store i32 %25, i32* %5, align 4
  br label %27

26:                                               ; preds = %2
  store %struct.nvkm_engine* null, %struct.nvkm_engine** %3, align 8
  br label %31

27:                                               ; preds = %24, %22, %20, %18, %16, %14
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device* %28, i32 %29)
  store %struct.nvkm_engine* %30, %struct.nvkm_engine** %3, align 8
  br label %31

31:                                               ; preds = %27, %26
  %32 = load %struct.nvkm_engine*, %struct.nvkm_engine** %3, align 8
  ret %struct.nvkm_engine* %32
}

declare dso_local %struct.nvkm_engine* @nvkm_device_engine(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
