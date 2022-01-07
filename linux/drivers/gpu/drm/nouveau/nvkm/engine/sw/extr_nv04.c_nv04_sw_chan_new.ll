; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv04.c_nv04_sw_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv04.c_nv04_sw_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nv04_sw_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv04_sw_chan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_sw*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv04_sw_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_sw_chan_new(%struct.nvkm_sw* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_sw*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nv04_sw_chan*, align 8
  store %struct.nvkm_sw* %0, %struct.nvkm_sw** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nv04_sw_chan* @kzalloc(i32 8, i32 %11)
  store %struct.nv04_sw_chan* %12, %struct.nv04_sw_chan** %10, align 8
  %13 = icmp ne %struct.nv04_sw_chan* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %31

17:                                               ; preds = %4
  %18 = load %struct.nv04_sw_chan*, %struct.nv04_sw_chan** %10, align 8
  %19 = getelementptr inbounds %struct.nv04_sw_chan, %struct.nv04_sw_chan* %18, i32 0, i32 1
  %20 = call i32 @atomic_set(i32* %19, i32 0)
  %21 = load %struct.nv04_sw_chan*, %struct.nv04_sw_chan** %10, align 8
  %22 = getelementptr inbounds %struct.nv04_sw_chan, %struct.nv04_sw_chan* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %23, %struct.nvkm_object** %24, align 8
  %25 = load %struct.nvkm_sw*, %struct.nvkm_sw** %6, align 8
  %26 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %27 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %28 = load %struct.nv04_sw_chan*, %struct.nv04_sw_chan** %10, align 8
  %29 = getelementptr inbounds %struct.nv04_sw_chan, %struct.nv04_sw_chan* %28, i32 0, i32 0
  %30 = call i32 @nvkm_sw_chan_ctor(i32* @nv04_sw_chan, %struct.nvkm_sw* %25, %struct.nvkm_fifo_chan* %26, %struct.nvkm_oclass* %27, %struct.TYPE_2__* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local %struct.nv04_sw_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @nvkm_sw_chan_ctor(i32*, %struct.nvkm_sw*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
