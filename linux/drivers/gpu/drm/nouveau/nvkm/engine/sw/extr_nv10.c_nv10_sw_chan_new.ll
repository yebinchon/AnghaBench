; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv10.c_nv10_sw_chan_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/sw/extr_nv10.c_nv10_sw_chan_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_sw = type { i32 }
%struct.nvkm_fifo_chan = type { i32 }
%struct.nvkm_oclass = type { i32 }
%struct.nvkm_object = type { i32 }
%struct.nvkm_sw_chan = type { %struct.nvkm_object }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nv10_sw_chan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_sw*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_object**)* @nv10_sw_chan_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_sw_chan_new(%struct.nvkm_sw* %0, %struct.nvkm_fifo_chan* %1, %struct.nvkm_oclass* %2, %struct.nvkm_object** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_sw*, align 8
  %7 = alloca %struct.nvkm_fifo_chan*, align 8
  %8 = alloca %struct.nvkm_oclass*, align 8
  %9 = alloca %struct.nvkm_object**, align 8
  %10 = alloca %struct.nvkm_sw_chan*, align 8
  store %struct.nvkm_sw* %0, %struct.nvkm_sw** %6, align 8
  store %struct.nvkm_fifo_chan* %1, %struct.nvkm_fifo_chan** %7, align 8
  store %struct.nvkm_oclass* %2, %struct.nvkm_oclass** %8, align 8
  store %struct.nvkm_object** %3, %struct.nvkm_object*** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.nvkm_sw_chan* @kzalloc(i32 4, i32 %11)
  store %struct.nvkm_sw_chan* %12, %struct.nvkm_sw_chan** %10, align 8
  %13 = icmp ne %struct.nvkm_sw_chan* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %26

17:                                               ; preds = %4
  %18 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %19 = getelementptr inbounds %struct.nvkm_sw_chan, %struct.nvkm_sw_chan* %18, i32 0, i32 0
  %20 = load %struct.nvkm_object**, %struct.nvkm_object*** %9, align 8
  store %struct.nvkm_object* %19, %struct.nvkm_object** %20, align 8
  %21 = load %struct.nvkm_sw*, %struct.nvkm_sw** %6, align 8
  %22 = load %struct.nvkm_fifo_chan*, %struct.nvkm_fifo_chan** %7, align 8
  %23 = load %struct.nvkm_oclass*, %struct.nvkm_oclass** %8, align 8
  %24 = load %struct.nvkm_sw_chan*, %struct.nvkm_sw_chan** %10, align 8
  %25 = call i32 @nvkm_sw_chan_ctor(i32* @nv10_sw_chan, %struct.nvkm_sw* %21, %struct.nvkm_fifo_chan* %22, %struct.nvkm_oclass* %23, %struct.nvkm_sw_chan* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local %struct.nvkm_sw_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_sw_chan_ctor(i32*, %struct.nvkm_sw*, %struct.nvkm_fifo_chan*, %struct.nvkm_oclass*, %struct.nvkm_sw_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
