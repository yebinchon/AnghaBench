; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_probe_fbp_amount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgf100.c_gf100_ram_probe_fbp_amount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 (%struct.nvkm_device*, i32)* }
%struct.nvkm_device = type opaque
%struct.nvkm_device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ram_probe_fbp_amount(%struct.nvkm_ram_func* %0, i32 %1, %struct.nvkm_device.0* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_ram_func*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device.0*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.nvkm_device.0* %2, %struct.nvkm_device.0** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %10, align 4
  %14 = call i32 @BIT(i32 %13)
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  store i32 1, i32* %18, align 4
  %19 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %7, align 8
  %20 = getelementptr inbounds %struct.nvkm_ram_func, %struct.nvkm_ram_func* %19, i32 0, i32 0
  %21 = load i32 (%struct.nvkm_device*, i32)*, i32 (%struct.nvkm_device*, i32)** %20, align 8
  %22 = load %struct.nvkm_device.0*, %struct.nvkm_device.0** %9, align 8
  %23 = bitcast %struct.nvkm_device.0* %22 to %struct.nvkm_device*
  %24 = load i32, i32* %10, align 4
  %25 = call i32 %21(%struct.nvkm_device* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  br label %27

26:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
