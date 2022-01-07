; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/mpeg/extr_nv31.c_nv31_mpeg_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv31_mpeg = type { %struct.TYPE_2__, %struct.nv31_mpeg_chan* }
%struct.TYPE_2__ = type { i32 }
%struct.nv31_mpeg_chan = type { %struct.nvkm_object, %struct.nvkm_fifo_chan*, %struct.nv31_mpeg* }

@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv31_mpeg_chan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv31_mpeg_chan_new(%struct.nvkm_fifo_chan* %0, %struct.nvkm_oclass* %1, %struct.nvkm_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_fifo_chan*, align 8
  %6 = alloca %struct.nvkm_oclass*, align 8
  %7 = alloca %struct.nvkm_object**, align 8
  %8 = alloca %struct.nv31_mpeg*, align 8
  %9 = alloca %struct.nv31_mpeg_chan*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nvkm_fifo_chan* %0, %struct.nvkm_fifo_chan** %5, align 8
  store %struct.nvkm_oclass* %1, %struct.nvkm_oclass** %6, align 8
  store %struct.nvkm_object** %2, %struct.nvkm_object*** %7, align 8
  %12 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %13 = getelementptr inbounds %struct.nvkm_oclass, %struct.nvkm_oclass* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.nv31_mpeg* @nv31_mpeg(i32 %14)
  store %struct.nv31_mpeg* %15, %struct.nv31_mpeg** %8, align 8
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.nv31_mpeg_chan* @kzalloc(i32 24, i32 %18)
  store %struct.nv31_mpeg_chan* %19, %struct.nv31_mpeg_chan** %9, align 8
  %20 = icmp ne %struct.nv31_mpeg_chan* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %6, align 8
  %26 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %9, align 8
  %27 = getelementptr inbounds %struct.nv31_mpeg_chan, %struct.nv31_mpeg_chan* %26, i32 0, i32 0
  %28 = call i32 @nvkm_object_ctor(i32* @nv31_mpeg_chan, %struct.nvkm_oclass* %25, %struct.nvkm_object* %27)
  %29 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %30 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %9, align 8
  %31 = getelementptr inbounds %struct.nv31_mpeg_chan, %struct.nv31_mpeg_chan* %30, i32 0, i32 2
  store %struct.nv31_mpeg* %29, %struct.nv31_mpeg** %31, align 8
  %32 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %5, align 8
  %33 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %9, align 8
  %34 = getelementptr inbounds %struct.nv31_mpeg_chan, %struct.nv31_mpeg_chan* %33, i32 0, i32 1
  store %struct.nvkm_fifo_chan* %32, %struct.nvkm_fifo_chan** %34, align 8
  %35 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %9, align 8
  %36 = getelementptr inbounds %struct.nv31_mpeg_chan, %struct.nv31_mpeg_chan* %35, i32 0, i32 0
  %37 = load %struct.nvkm_object**, %struct.nvkm_object*** %7, align 8
  store %struct.nvkm_object* %36, %struct.nvkm_object** %37, align 8
  %38 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %39 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %44 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %43, i32 0, i32 1
  %45 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %44, align 8
  %46 = icmp ne %struct.nv31_mpeg_chan* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %24
  %48 = load %struct.nv31_mpeg_chan*, %struct.nv31_mpeg_chan** %9, align 8
  %49 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %50 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %49, i32 0, i32 1
  store %struct.nv31_mpeg_chan* %48, %struct.nv31_mpeg_chan** %50, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %47, %24
  %52 = load %struct.nv31_mpeg*, %struct.nv31_mpeg** %8, align 8
  %53 = getelementptr inbounds %struct.nv31_mpeg, %struct.nv31_mpeg* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %51, %21
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.nv31_mpeg* @nv31_mpeg(i32) #1

declare dso_local %struct.nv31_mpeg_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
