; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_channv50.c_nv50_disp_chan_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_object = type { i32 }
%struct.nv50_disp_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.nv50_disp_chan*)*, i32 (%struct.nv50_disp_chan*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_object*)* @nv50_disp_chan_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_disp_chan_init(%struct.nvkm_object* %0) #0 {
  %2 = alloca %struct.nvkm_object*, align 8
  %3 = alloca %struct.nv50_disp_chan*, align 8
  store %struct.nvkm_object* %0, %struct.nvkm_object** %2, align 8
  %4 = load %struct.nvkm_object*, %struct.nvkm_object** %2, align 8
  %5 = call %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object* %4)
  store %struct.nv50_disp_chan* %5, %struct.nv50_disp_chan** %3, align 8
  %6 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %7 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32 (%struct.nv50_disp_chan*, i32)*, i32 (%struct.nv50_disp_chan*, i32)** %9, align 8
  %11 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %12 = call i32 %10(%struct.nv50_disp_chan* %11, i32 1)
  %13 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %14 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nv50_disp_chan*)*, i32 (%struct.nv50_disp_chan*)** %16, align 8
  %18 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %3, align 8
  %19 = call i32 %17(%struct.nv50_disp_chan* %18)
  ret i32 %19
}

declare dso_local %struct.nv50_disp_chan* @nv50_disp_chan(%struct.nvkm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
