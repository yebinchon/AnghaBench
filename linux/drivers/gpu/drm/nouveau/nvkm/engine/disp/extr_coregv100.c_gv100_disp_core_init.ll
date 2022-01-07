; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_coregv100.c_gv100_disp_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_coregv100.c_gv100_disp_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv50_disp_chan*)* @gv100_disp_core_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv100_disp_core_init(%struct.nv50_disp_chan* %0) #0 {
  %2 = alloca %struct.nv50_disp_chan*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nv50_disp_chan* %0, %struct.nv50_disp_chan** %2, align 8
  %5 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %6 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %5, i32 0, i32 1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.nvkm_subdev* %10, %struct.nvkm_subdev** %3, align 8
  %11 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %4, align 8
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %16 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lower_32_bits(i32 %17)
  %19 = call i32 @nvkm_wr32(%struct.nvkm_device* %14, i32 6359844, i32 %18)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %21 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %22 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @upper_32_bits(i32 %23)
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 6359840, i32 %24)
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %27 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 6359848, i32 1)
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %29 = call i32 @nvkm_wr32(%struct.nvkm_device* %28, i32 6359852, i32 64)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i32 6358240, i32 16, i32 16)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 6815744, i32 0)
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = call i32 @nvkm_wr32(%struct.nvkm_device* %34, i32 6358240, i32 19)
  %36 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %37 = call i32 @gv100_disp_core_idle(%struct.nv50_disp_chan* %36)
  ret i32 %37
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gv100_disp_core_idle(%struct.nv50_disp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
