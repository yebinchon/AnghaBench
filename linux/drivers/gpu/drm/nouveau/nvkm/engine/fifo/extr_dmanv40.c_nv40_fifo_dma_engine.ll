; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_dmanv40.c_nv40_fifo_dma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*, i32*, i32*)* @nv40_fifo_dma_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_fifo_dma_engine(%struct.nvkm_engine* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %9 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %28 [
    i32 131, label %12
    i32 128, label %12
    i32 130, label %13
    i32 129, label %16
  ]

12:                                               ; preds = %3, %3
  store i32 0, i32* %4, align 4
  br label %30

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  store i32 13024, i32* %14, align 4
  %15 = load i32*, i32** %7, align 8
  store i32 56, i32* %15, align 4
  store i32 1, i32* %4, align 4
  br label %30

16:                                               ; preds = %3
  %17 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %18 = getelementptr inbounds %struct.nvkm_engine, %struct.nvkm_engine* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 68
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %30

25:                                               ; preds = %16
  %26 = load i32*, i32** %6, align 8
  store i32 13068, i32* %26, align 4
  %27 = load i32*, i32** %7, align 8
  store i32 84, i32* %27, align 4
  store i32 1, i32* %4, align 4
  br label %30

28:                                               ; preds = %3
  %29 = call i32 @WARN_ON(i32 1)
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %25, %24, %13, %12
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
