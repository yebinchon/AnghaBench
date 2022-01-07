; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv40.c_nv40_gr_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv40_gr = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nv40_gr_chan = type { %struct.nv40_gr*, i32, %struct.nvkm_object, %struct.nvkm_fifo_chan* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv40_gr_chan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gr*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv40_gr*, align 8
  %11 = alloca %struct.nv40_gr_chan*, align 8
  %12 = alloca i64, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %13 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  %14 = call %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr* %13)
  store %struct.nv40_gr* %14, %struct.nv40_gr** %10, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.nv40_gr_chan* @kzalloc(i32 24, i32 %15)
  store %struct.nv40_gr_chan* %16, %struct.nv40_gr_chan** %11, align 8
  %17 = icmp ne %struct.nv40_gr_chan* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %4
  %22 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %23 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %24 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %23, i32 0, i32 2
  %25 = call i32 @nvkm_object_ctor(i32* @nv40_gr_chan, %struct.nvkm_oclass* %22, %struct.nvkm_object* %24)
  %26 = load %struct.nv40_gr*, %struct.nv40_gr** %10, align 8
  %27 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %28 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %27, i32 0, i32 0
  store %struct.nv40_gr* %26, %struct.nv40_gr** %28, align 8
  %29 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %30 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %31 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %30, i32 0, i32 3
  store %struct.nvkm_fifo_chan* %29, %struct.nvkm_fifo_chan** %31, align 8
  %32 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %33 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %32, i32 0, i32 2
  %34 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %33, %struct.nvkm_object** %34, align 8
  %35 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %36 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %35, i32 0, i32 0
  %37 = load %struct.nv40_gr*, %struct.nv40_gr** %36, align 8
  %38 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %44 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %43, i32 0, i32 1
  %45 = load %struct.nv40_gr*, %struct.nv40_gr** %10, align 8
  %46 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %45, i32 0, i32 1
  %47 = call i32 @list_add(i32* %44, i32* %46)
  %48 = load %struct.nv40_gr_chan*, %struct.nv40_gr_chan** %11, align 8
  %49 = getelementptr inbounds %struct.nv40_gr_chan, %struct.nv40_gr_chan* %48, i32 0, i32 0
  %50 = load %struct.nv40_gr*, %struct.nv40_gr** %49, align 8
  %51 = getelementptr inbounds %struct.nv40_gr, %struct.nv40_gr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %12, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %21, %18
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local %struct.nv40_gr* @nv40_gr(%struct.nvkm_gr*) #1

declare dso_local %struct.nv40_gr_chan* @kzalloc(i32, i32) #1

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
