; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_base.c_nvkm_fifo_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_engine = type { i32 }
%struct.nvkm_fifo = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_fifo*, i32, i32*)* }

@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_engine*, i32, i32*)* @nvkm_fifo_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_fifo_info(%struct.nvkm_engine* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_engine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nvkm_fifo*, align 8
  store %struct.nvkm_engine* %0, %struct.nvkm_engine** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load %struct.nvkm_engine*, %struct.nvkm_engine** %5, align 8
  %10 = call %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine* %9)
  store %struct.nvkm_fifo* %10, %struct.nvkm_fifo** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %17 [
    i32 128, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %8, align 8
  %14 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %7, align 8
  store i32 %15, i32* %16, align 4
  store i32 0, i32* %4, align 4
  br label %38

17:                                               ; preds = %3
  %18 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.nvkm_fifo*, i32, i32*)*, i32 (%struct.nvkm_fifo*, i32, i32*)** %21, align 8
  %23 = icmp ne i32 (%struct.nvkm_fifo*, i32, i32*)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %17
  %25 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.nvkm_fifo*, i32, i32*)*, i32 (%struct.nvkm_fifo*, i32, i32*)** %28, align 8
  %30 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 %29(%struct.nvkm_fifo* %30, i32 %31, i32* %32)
  store i32 %33, i32* %4, align 4
  br label %38

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* @ENOSYS, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %24, %12
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.nvkm_fifo* @nvkm_fifo(%struct.nvkm_engine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
