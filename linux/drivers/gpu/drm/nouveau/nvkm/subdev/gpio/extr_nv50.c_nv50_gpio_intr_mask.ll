; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv50.c_nv50_gpio_intr_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv50.c_nv50_gpio_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_GPIO_LO = common dso_local global i32 0, align 4
@NVKM_GPIO_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gpio*, i32, i32, i32)* @nv50_gpio_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gpio_intr_mask(%struct.nvkm_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %12 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %9, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 57424)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NVKM_GPIO_LO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = shl i32 %23, 16
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  %27 = load i32, i32* %8, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 %26, %28
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %21, %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @NVKM_GPIO_HI, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %39, %40
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %35, %30
  %43 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @nvkm_wr32(%struct.nvkm_device* %43, i32 57424, i32 %44)
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
