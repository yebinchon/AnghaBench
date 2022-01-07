; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_chan_ntfy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_chan_ntfy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_event, %struct.nvkm_event }
%struct.nvkm_event = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_fifo_chan_ntfy(%struct.nvkm_fifo_chan* %0, i32 %1, %struct.nvkm_event** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_event**, align 8
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_event** %2, %struct.nvkm_event*** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 129, label %15
  ]

9:                                                ; preds = %3
  %10 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %11 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.nvkm_event**, %struct.nvkm_event*** %7, align 8
  store %struct.nvkm_event* %13, %struct.nvkm_event** %14, align 8
  store i32 0, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %17 = getelementptr inbounds %struct.nvkm_fifo_chan, %struct.nvkm_fifo_chan* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_event**, %struct.nvkm_event*** %7, align 8
  store %struct.nvkm_event* %19, %struct.nvkm_event** %20, align 8
  store i32 0, i32* %4, align 4
  br label %25

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %15, %9
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
