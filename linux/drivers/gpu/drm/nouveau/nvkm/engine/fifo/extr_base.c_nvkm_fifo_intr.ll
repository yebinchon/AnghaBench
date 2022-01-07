; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_fifo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_fifo*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_engine*)* @nvkm_fifo_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_fifo_intr(%struct.nvkm_engine* %0) #0 {
  %2 = alloca %struct.nvkm_engine*, align 8
  %3 = alloca %struct.nvkm_fifo*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %2, align 8
  %4 = load %struct.nvkm_engine*, %struct.nvkm_engine** %2, align 8
  %5 = call %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine* %4)
  store %struct.nvkm_fifo* %5, %struct.nvkm_fifo** %3, align 8
  %6 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %7 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32 (%struct.nvkm_fifo*)*, i32 (%struct.nvkm_fifo*)** %9, align 8
  %11 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %12 = call i32 %10(%struct.nvkm_fifo* %11)
  ret void
}

declare dso_local %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
