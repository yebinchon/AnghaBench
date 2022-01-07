; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv50.c_nv50_gpio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv50.c_nv50_gpio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@nv50_gpio_reset.regs = internal constant [2 x i32] [i32 57600, i32 57996], align 4
@DCB_GPIO_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv50_gpio_reset(%struct.nvkm_gpio* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_gpio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %3, align 8
  store i32 %1, i32* %4, align 4
  %20 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %21 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %22, align 8
  store %struct.nvkm_device* %23, %struct.nvkm_device** %5, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 0
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %25, align 8
  store %struct.nvkm_bios* %26, %struct.nvkm_bios** %6, align 8
  store i32 -1, i32* %10, align 4
  br label %27

27:                                               ; preds = %83, %82, %2
  %28 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %10, align 4
  %31 = call i32 @dcb_gpio_entry(%struct.nvkm_bios* %28, i32 0, i32 %30, i32* %7, i32* %8)
  store i32 %31, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %97

33:                                               ; preds = %27
  %34 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @nvbios_rd32(%struct.nvkm_bios* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 31
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %11, align 4
  %40 = and i32 %39, 65280
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, 16777216
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 33554432
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 67108864
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %16, align 4
  %60 = load i32, i32* %16, align 4
  %61 = shl i32 %60, 16
  %62 = load i32, i32* %15, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %17, align 4
  %64 = load i32, i32* %12, align 4
  %65 = ashr i32 %64, 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* @nv50_gpio_reset.regs, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 15
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %33
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @DCB_GPIO_UNUSED, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %33
  br label %27

83:                                               ; preds = %78, %74
  %84 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %84, i32 0, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %90 = load i32, i32* %18, align 4
  %91 = load i32, i32* %19, align 4
  %92 = shl i32 65537, %91
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %19, align 4
  %95 = shl i32 %93, %94
  %96 = call i32 @nvkm_mask(%struct.nvkm_device* %89, i32 %90, i32 %92, i32 %95)
  br label %27

97:                                               ; preds = %27
  ret void
}

declare dso_local i32 @dcb_gpio_entry(%struct.nvkm_bios*, i32, i32, i32*, i32*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i32, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
