; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dmacgv100.c_gv100_disp_dmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/disp/extr_dmacgv100.c_gv100_disp_dmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_disp_chan = type { i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gv100_disp_dmac_init(%struct.nv50_disp_chan* %0) #0 {
  %2 = alloca %struct.nv50_disp_chan*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nv50_disp_chan* %0, %struct.nv50_disp_chan** %2, align 8
  %8 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %9 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.nvkm_subdev* %13, %struct.nvkm_subdev** %3, align 8
  %14 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %4, align 8
  %17 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %18 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  %22 = mul nsw i32 %21, 4096
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %24 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 16
  store i32 %27, i32* %6, align 4
  %28 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %29 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %7, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 6359844, %34
  %36 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %37 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @lower_32_bits(i32 %38)
  %40 = call i32 @nvkm_wr32(%struct.nvkm_device* %33, i32 %35, i32 %39)
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 6359840, %42
  %44 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %45 = getelementptr inbounds %struct.nv50_disp_chan, %struct.nv50_disp_chan* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @upper_32_bits(i32 %46)
  %48 = call i32 @nvkm_wr32(%struct.nvkm_device* %41, i32 %43, i32 %47)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 6359848, %50
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 %51, i32 1)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 6359852, %54
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 %55, i32 64)
  %57 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 6358240, %58
  %60 = call i32 @nvkm_mask(%struct.nvkm_device* %57, i32 %59, i32 16, i32 16)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 6881280, %62
  %64 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 %63, i32 0)
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 6358240, %66
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %65, i32 %67, i32 19)
  %69 = load %struct.nv50_disp_chan*, %struct.nv50_disp_chan** %2, align 8
  %70 = call i32 @gv100_disp_dmac_idle(%struct.nv50_disp_chan* %69)
  ret i32 %70
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @gv100_disp_dmac_idle(%struct.nv50_disp_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
