; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_nv50.c_nv50_gr_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gr = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv50_gr = type { i32 }
%struct.nv50_gr_chan = type { %struct.nvkm_object, %struct.nv50_gr* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv50_gr_chan = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_gr_chan_new(%struct.nvkm_gr* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_gr*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv50_gr*, align 8
  %11 = alloca %struct.nv50_gr_chan*, align 8
  store %struct.nvkm_gr* %0, %struct.nvkm_gr** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %12 = load %struct.nvkm_gr*, %struct.nvkm_gr** %6, align 8
  %13 = call %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr* %12)
  store %struct.nv50_gr* %13, %struct.nv50_gr** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nv50_gr_chan* @kzalloc(i32 16, i32 %14)
  store %struct.nv50_gr_chan* %15, %struct.nv50_gr_chan** %11, align 8
  %16 = icmp ne %struct.nv50_gr_chan* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %4
  %21 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %22 = load %struct.nv50_gr_chan*, %struct.nv50_gr_chan** %11, align 8
  %23 = getelementptr inbounds %struct.nv50_gr_chan, %struct.nv50_gr_chan* %22, i32 0, i32 0
  %24 = call i32 @nvkm_object_ctor(i32* @nv50_gr_chan, %struct.nvkm_oclass* %21, %struct.nvkm_object* %23)
  %25 = load %struct.nv50_gr*, %struct.nv50_gr** %10, align 8
  %26 = load %struct.nv50_gr_chan*, %struct.nv50_gr_chan** %11, align 8
  %27 = getelementptr inbounds %struct.nv50_gr_chan, %struct.nv50_gr_chan* %26, i32 0, i32 1
  store %struct.nv50_gr* %25, %struct.nv50_gr** %27, align 8
  %28 = load %struct.nv50_gr_chan*, %struct.nv50_gr_chan** %11, align 8
  %29 = getelementptr inbounds %struct.nv50_gr_chan, %struct.nv50_gr_chan* %28, i32 0, i32 0
  %30 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %29, %struct.nvkm_object** %30, align 8
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %17
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.nv50_gr* @nv50_gr(%struct.nvkm_gr*) #1

declare dso_local %struct.nv50_gr_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_object_ctor(i32*, %struct.nvkm_oclass*, %struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
