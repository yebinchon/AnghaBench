; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gpfifogf100.c_gf100_fifo_gpfifo_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.gf100_fifo_chan = type { i32, i32, %struct.TYPE_5__, %struct.gf100_fifo* }
%struct.TYPE_5__ = type { i32 }
%struct.gf100_fifo = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_fifo_chan*)* @gf100_fifo_gpfifo_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gf100_fifo_gpfifo_fini(%struct.nvkm_fifo_chan* %0) #0 {
  %2 = alloca %struct.nvkm_fifo_chan*, align 8
  %3 = alloca %struct.gf100_fifo_chan*, align 8
  %4 = alloca %struct.gf100_fifo*, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %2, align 8
  %7 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %2, align 8
  %8 = call %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan* %7)
  store %struct.gf100_fifo_chan* %8, %struct.gf100_fifo_chan** %3, align 8
  %9 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %10 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %9, i32 0, i32 3
  %11 = load %struct.gf100_fifo*, %struct.gf100_fifo** %10, align 8
  store %struct.gf100_fifo* %11, %struct.gf100_fifo** %4, align 8
  %12 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %13 = getelementptr inbounds %struct.gf100_fifo, %struct.gf100_fifo* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %5, align 8
  %18 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %19 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %6, align 4
  %23 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %24 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %29 = getelementptr inbounds %struct.gf100_fifo_chan, %struct.gf100_fifo_chan* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %34 = load %struct.gf100_fifo_chan*, %struct.gf100_fifo_chan** %3, align 8
  %35 = call i32 @gf100_fifo_runlist_remove(%struct.gf100_fifo* %33, %struct.gf100_fifo_chan* %34)
  %36 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 12292, %37
  %39 = call i32 @nvkm_mask(%struct.nvkm_device* %36, i32 %38, i32 1, i32 0)
  %40 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %41 = call i32 @gf100_fifo_runlist_commit(%struct.gf100_fifo* %40)
  br label %42

42:                                               ; preds = %32, %27, %1
  %43 = load %struct.gf100_fifo*, %struct.gf100_fifo** %4, align 8
  %44 = call i32 @gf100_fifo_intr_engine(%struct.gf100_fifo* %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 12288, %46
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 %47, i32 0)
  ret void
}

declare dso_local %struct.gf100_fifo_chan* @gf100_fifo_chan(%struct.nvkm_fifo_chan*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @gf100_fifo_runlist_remove(%struct.gf100_fifo*, %struct.gf100_fifo_chan*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gf100_fifo_runlist_commit(%struct.gf100_fifo*) #1

declare dso_local i32 @gf100_fifo_intr_engine(%struct.gf100_fifo*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
