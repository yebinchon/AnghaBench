; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_chan_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_chan_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_fifo_chan_put(%struct.nvkm_fifo* %0, i64 %1, %struct.nvkm_fifo_chan** %2) #0 {
  %4 = alloca %struct.nvkm_fifo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvkm_fifo_chan**, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nvkm_fifo_chan** %2, %struct.nvkm_fifo_chan*** %6, align 8
  %8 = load %struct.nvkm_fifo_chan**, %struct.nvkm_fifo_chan*** %6, align 8
  %9 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  store %struct.nvkm_fifo_chan* %9, %struct.nvkm_fifo_chan** %7, align 8
  %10 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %11 = call i64 @likely(%struct.nvkm_fifo_chan* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.nvkm_fifo_chan**, %struct.nvkm_fifo_chan*** %6, align 8
  store %struct.nvkm_fifo_chan* null, %struct.nvkm_fifo_chan** %14, align 8
  %15 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %4, align 8
  %16 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %15, i32 0, i32 0
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* %16, i64 %17)
  br label %19

19:                                               ; preds = %13, %3
  ret void
}

declare dso_local i64 @likely(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
