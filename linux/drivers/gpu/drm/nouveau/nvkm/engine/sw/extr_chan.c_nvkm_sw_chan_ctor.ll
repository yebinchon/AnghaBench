; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_chan.c_nvkm_sw_chan_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw_chan_func = type { i32 }
%struct.nvkm_sw = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_sw_chan = type { i32, i32, %struct.nvkm_fifo_chan*, %struct.nvkm_sw*, %struct.nvkm_sw_chan_func*, i32 }

@nvkm_sw_chan = common dso_local global i32 0, align 4
@nvkm_sw_chan_event = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvkm_sw_chan_ctor(%struct.nvkm_sw_chan_func* %0, %struct.nvkm_sw* %1, %struct.nvkm_fifo_chan* %2, %struct.nvkm_oclass* %3, %struct.nvkm_sw_chan* %4) #0 {
  %6 = alloca %struct.nvkm_sw_chan_func*, align 8
  %7 = alloca %struct.nvkm_sw*, align 8
  %8 = alloca %struct.nvkm_fifo_chan*, align 8
  %9 = alloca %struct.nvkm_oclass*, align 8
  %10 = alloca %struct.nvkm_sw_chan*, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_sw_chan_func* %0, %struct.nvkm_sw_chan_func** %6, align 8
  store %struct.nvkm_sw* %1, %struct.nvkm_sw** %7, align 8
  store %struct.nvkm_fifo_chan* %2, %struct.nvkm_fifo_chan** %8, align 8
  store %struct.nvkm_oclass* %3, %struct.nvkm_oclass** %9, align 8
  store %struct.nvkm_sw_chan* %4, %struct.nvkm_sw_chan** %10, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %9, align 8
  %13 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %14 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %13, i32 0, i32 5
  %15 = call i32 @nvkm_object_ctor(i32* @nvkm_sw_chan, %struct.nvkm_oclass* %12, i32* %14)
  %16 = load %struct.nvkm_sw_chan_func*, %struct.nvkm_sw_chan_func** %6, align 8
  %17 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %18 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %17, i32 0, i32 4
  store %struct.nvkm_sw_chan_func* %16, %struct.nvkm_sw_chan_func** %18, align 8
  %19 = load %struct.nvkm_sw*, %struct.nvkm_sw** %7, align 8
  %20 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %21 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %20, i32 0, i32 3
  store %struct.nvkm_sw* %19, %struct.nvkm_sw** %21, align 8
  %22 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %8, align 8
  %23 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %24 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %23, i32 0, i32 2
  store %struct.nvkm_fifo_chan* %22, %struct.nvkm_fifo_chan** %24, align 8
  %25 = load %struct.nvkm_sw*, %struct.nvkm_sw** %7, align 8
  %26 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %31 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %30, i32 0, i32 1
  %32 = load %struct.nvkm_sw*, %struct.nvkm_sw** %7, align 8
  %33 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %32, i32 0, i32 1
  %34 = call i32 @list_add(i32* %31, i32* %33)
  %35 = load %struct.nvkm_sw*, %struct.nvkm_sw** %7, align 8
  %36 = getelementptr inbounds %struct.nvkm_sw, %struct.nvkm_sw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %41 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %40, i32 0, i32 0
  %42 = call i32 @nvkm_event_init(i32* @nvkm_sw_chan_event, i32 1, i32 1, i32* %41)
  ret i32 %42
}

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvkm_event_init(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
