; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_g94.c_g94_gpio_intr_stat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_g94.c_g94_gpio_intr_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g94_gpio_intr_stat(%struct.nvkm_gpio* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.nvkm_gpio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nvkm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %13 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %7, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 57428)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 57460)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 57424)
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 57456)
  %26 = load i32, i32* %9, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = and i32 %28, -65536
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 16
  %32 = or i32 %29, %31
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 16
  %36 = load i32, i32* %10, align 4
  %37 = and i32 %36, 65535
  %38 = or i32 %35, %37
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @nvkm_wr32(%struct.nvkm_device* %40, i32 57428, i32 %41)
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 57460, i32 %44)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
