; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_chan.c_nvkm_fifo_chan_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nvkm_fifo_chan = type { i32, i32 }

@NVKM_OBJECT_MAP_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*, i8*, i32, i32*, i32*, i32*)* @nvkm_fifo_chan_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fifo_chan_map(%struct.nvkm_object* %0, i8* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.nvkm_object*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nvkm_fifo_chan*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.nvkm_object*, %struct.nvkm_object** %7, align 8
  %15 = call %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object* %14)
  store %struct.nvkm_fifo_chan* %15, %struct.nvkm_fifo_chan** %13, align 8
  %16 = load i32, i32* @NVKM_OBJECT_MAP_IO, align 4
  %17 = load i32*, i32** %10, align 8
  store i32 %16, i32* %17, align 4
  %18 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %19 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %11, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %13, align 8
  %23 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %12, align 8
  store i32 %24, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.nvkm_fifo_chan* @nvkm_fifo_chan(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
