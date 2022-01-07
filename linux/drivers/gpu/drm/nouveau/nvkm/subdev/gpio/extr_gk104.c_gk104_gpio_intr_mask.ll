; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_gk104.c_gk104_gpio_intr_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_gk104.c_gk104_gpio_intr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_GPIO_LO = common dso_local global i32 0, align 4
@NVKM_GPIO_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_gpio*, i32, i32, i32)* @gk104_gpio_intr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_gpio_intr_mask(%struct.nvkm_gpio* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nvkm_gpio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nvkm_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %5, align 8
  %13 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %9, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 56328)
  store i32 %17, i32* %10, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 56456)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @NVKM_GPIO_LO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = shl i32 %26, 16
  %28 = xor i32 %27, -1
  %29 = and i32 %25, %28
  %30 = load i32, i32* %8, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %29, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %24, %4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @NVKM_GPIO_HI, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, 65535
  %42 = xor i32 %41, -1
  %43 = and i32 %39, %42
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 65535
  %46 = or i32 %43, %45
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %38, %33
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 16
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = ashr i32 %50, 16
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @NVKM_GPIO_LO, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %47
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %7, align 4
  %59 = shl i32 %58, 16
  %60 = xor i32 %59, -1
  %61 = and i32 %57, %60
  %62 = load i32, i32* %8, align 4
  %63 = shl i32 %62, 16
  %64 = or i32 %61, %63
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @NVKM_GPIO_HI, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %7, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %71, %73
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %78, i32 56328, i32 %79)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @nvkm_wr32(%struct.nvkm_device* %81, i32 56456, i32 %82)
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
