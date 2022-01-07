; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogk104.c_gk104_fifo_gpfifo_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.gk104_fifo_chan = type { i32, i32, %struct.TYPE_8__, %struct.gk104_fifo* }
%struct.TYPE_8__ = type { i32 }
%struct.gk104_fifo = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk104_fifo_gpfifo_fini(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.gk104_fifo_chan*, align 8
  %4 = alloca %struct.gk104_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %7 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %8 = call %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan* %7)
  store %struct.gk104_fifo_chan* %8, %struct.gk104_fifo_chan** %3, align 8
  %9 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %10 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %9, i32 0, i32 3
  %11 = load %struct.gk104_fifo*, %struct.gk104_fifo** %10, align 8
  store %struct.gk104_fifo* %11, %struct.gk104_fifo** %4, align 8
  %12 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %13 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %5, align 8
  %18 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %19 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %24 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %29 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %30 = call i32 @gk104_fifo_runlist_remove(%struct.gk104_fifo* %28, %struct.gk104_fifo_chan* %29)
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 8388612, %32
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %31, i32 %33, i32 2048, i32 2048)
  %35 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %36 = call i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan* %35)
  %37 = load %struct.gk104_fifo*, %struct.gk104_fifo** %4, align 8
  %38 = load %struct.gk104_fifo_chan*, %struct.gk104_fifo_chan** %3, align 8
  %39 = getelementptr inbounds %struct.gk104_fifo_chan, %struct.gk104_fifo_chan* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @gk104_fifo_runlist_update(%struct.gk104_fifo* %37, i32 %40)
  br label %42

42:                                               ; preds = %27, %1
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 8388608, %44
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 %45, i32 0)
  ret void
}

declare dso_local %struct.gk104_fifo_chan* @gk104_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gk104_fifo_runlist_remove(%struct.gk104_fifo*, %struct.gk104_fifo_chan*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gk104_fifo_gpfifo_kick(%struct.gk104_fifo_chan*) #1

declare dso_local i32 @gk104_fifo_runlist_update(%struct.gk104_fifo*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
