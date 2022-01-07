; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_probe_fbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_probe_fbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 (%struct.nvkm_ram_func*, i32, %struct.nvkm_device*, i32, i32*)* }
%struct.nvkm_device = type opaque
%struct.nvkm_device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_probe_fbp(%struct.nvkm_ram_func* %0, %struct.nvkm_device.0* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.nvkm_ram_func*, align 8
  %6 = alloca %struct.nvkm_device.0*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %5, align 8
  store %struct.nvkm_device.0* %1, %struct.nvkm_device.0** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %6, align 8
  %11 = call i32 @nvkm_rd32(%struct.nvkm_device.0* %10, i32 140628)
  store i32 %11, i32* %9, align 4
  %12 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %12, i32 0, i32 0
  %14 = load i32 (%struct.nvkm_ram_func*, i32, %struct.nvkm_device*, i32, i32*)*, i32 (%struct.nvkm_ram_func*, i32, %struct.nvkm_device*, i32, i32*)** %13, align 8
  %15 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %6, align 8
  %18 = bitcast %struct.nvkm_device.0* %17 to %struct.nvkm_device*
  %19 = load i32, i32* %7, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 %14(%struct.nvkm_ram_func* %15, i32 %16, %struct.nvkm_device* %18, i32 %19, i32* %20)
  ret i32 %21
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device.0*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
