; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv44.c_nv44_mpeg_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv44_mpeg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.nv44_mpeg_chan = type { i32, %struct.nvkm_object, %struct.nvkm_fifo_chan*, %struct.nv44_mpeg* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv44_mpeg_chan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv44_mpeg_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv44_mpeg_chan_new(%struct.nvkm_fifo_chan* %0, %struct.nvkm_oclass* %1, %struct.nvkm_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca %struct.nvkm_object**, align 8
  %8 = alloca %struct.nv44_mpeg*, align 8
  %9 = alloca %struct.nv44_mpeg_chan*, align 8
  %10 = alloca i64, align 8
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %6, align 8
  store %struct.nvkm_object** %2, %struct.nvkm_object*** %7, align 8
  %11 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %12 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.nv44_mpeg* @nv44_mpeg(i32 %13)
  store %struct.nv44_mpeg* %14, %struct.nv44_mpeg** %8, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nv44_mpeg_chan* @kzalloc(i32 24, i32 %15)
  store %struct.nv44_mpeg_chan* %16, %struct.nv44_mpeg_chan** %9, align 8
  %17 = icmp ne %struct.nv44_mpeg_chan* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %50

21:                                               ; preds = %3
  %22 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %23 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %24 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %23, i32 0, i32 1
  %25 = call i32 @nvkm_object_ctor(i32* @nv44_mpeg_chan, %struct.nvkm_oclass* %22, %struct.nvkm_object* %24)
  %26 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %27 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %28 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %27, i32 0, i32 3
  store %struct.nv44_mpeg* %26, %struct.nv44_mpeg** %28, align 8
  %29 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %30 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %31 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %30, i32 0, i32 2
  store %struct.nvkm_fifo_chan* %29, %struct.nvkm_fifo_chan** %31, align 8
  %32 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %33 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %32, i32 0, i32 1
  %34 = load %struct.nvkm_object**, %struct.nvkm_object*** %7, align 8
  store %struct.nvkm_object* %33, %struct.nvkm_object** %34, align 8
  %35 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %36 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load %struct.nv44_mpeg_chan*, %struct.nv44_mpeg_chan** %9, align 8
  %41 = getelementptr inbounds %struct.nv44_mpeg_chan, %struct.nv44_mpeg_chan* %40, i32 0, i32 0
  %42 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %43 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %42, i32 0, i32 1
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.nv44_mpeg*, %struct.nv44_mpeg** %8, align 8
  %46 = getelementptr inbounds %struct.nv44_mpeg, %struct.nv44_mpeg* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %21, %18
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.nv44_mpeg* @nv44_mpeg(i32) #1

declare dso_local %struct.nv44_mpeg_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
