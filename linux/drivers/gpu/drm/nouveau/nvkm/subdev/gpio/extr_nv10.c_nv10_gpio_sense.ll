; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv10.c_nv10_gpio_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_nv10.c_nv10_gpio_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_gpio*, i32)* @nv10_gpio_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv10_gpio_sense(%struct.nvkm_gpio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_gpio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %4, align 8
  %8 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = mul nsw i32 %14, 16
  store i32 %15, i32* %5, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 6293528)
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, 256
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %3, align 4
  br label %65

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 10
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 2
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %33, i32 6293532)
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %65

43:                                               ; preds = %26
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 14
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = sub nsw i32 %47, 10
  %49 = mul nsw i32 %48, 4
  store i32 %49, i32* %5, align 4
  %50 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %51 = call i32 @nvkm_rd32(%struct.nvkm_device* %50, i32 6293584)
  %52 = load i32, i32* %5, align 4
  %53 = ashr i32 %51, %52
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %62, %46, %29, %13
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
