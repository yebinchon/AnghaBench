; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_gf119.c_gf119_gpio_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/gpio/extr_gf119.c_gf119_gpio_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_gpio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@DCB_GPIO_UNUSED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf119_gpio_reset(%struct.nvkm_gpio* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_gpio*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.nvkm_gpio* %0, %struct.nvkm_gpio** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %18 = getelementptr inbounds %struct.nvkm_gpio, %struct.nvkm_gpio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %19, align 8
  store %struct.nvkm_device* %20, %struct.nvkm_device** %5, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load %struct.nvkm_bios*, %struct.nvkm_bios** %22, align 8
  store %struct.nvkm_bios* %23, %struct.nvkm_bios** %6, align 8
  store i32 -1, i32* %10, align 4
  br label %24

24:                                               ; preds = %92, %67, %2
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = call i32 @dcb_gpio_entry(%struct.nvkm_bios* %25, i32 0, i32 %27, i64* %7, i64* %8)
  store i32 %28, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %93

30:                                               ; preds = %24
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @nvbios_rd32(%struct.nvkm_bios* %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = and i32 %34, 63
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %12, align 8
  %37 = load i32, i32* %11, align 4
  %38 = and i32 %37, 128
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 65280
  %46 = ashr i32 %45, 8
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %14, align 8
  %48 = load i32, i32* %11, align 4
  %49 = and i32 %48, 16711680
  %50 = ashr i32 %49, 16
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %15, align 8
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 520093696
  %54 = ashr i32 %53, 24
  %55 = sext i32 %54 to i64
  store i64 %55, i64* %16, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %30
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @DCB_GPIO_UNUSED, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i64, i64* %4, align 8
  %65 = load i64, i64* %14, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %30
  br label %24

68:                                               ; preds = %63, %59
  %69 = load %struct.nvkm_gpio*, %struct.nvkm_gpio** %3, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32 @nvkm_gpio_set(%struct.nvkm_gpio* %69, i32 0, i64 %70, i64 %71, i64 %72)
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %75 = load i64, i64* %12, align 8
  %76 = mul nsw i64 %75, 4
  %77 = add nsw i64 54800, %76
  %78 = trunc i64 %77 to i32
  %79 = load i64, i64* %15, align 8
  %80 = call i32 @nvkm_mask(%struct.nvkm_device* %74, i32 %78, i32 255, i64 %79)
  %81 = load i64, i64* %16, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %16, align 8
  %83 = icmp ne i64 %81, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %68
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %86 = load i64, i64* %16, align 8
  %87 = mul nsw i64 %86, 4
  %88 = add nsw i64 55104, %87
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @nvkm_mask(%struct.nvkm_device* %85, i32 %89, i32 255, i64 %90)
  br label %92

92:                                               ; preds = %84, %68
  br label %24

93:                                               ; preds = %24
  ret void
}

declare dso_local i32 @dcb_gpio_entry(%struct.nvkm_bios*, i32, i32, i64*, i64*) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_gpio_set(%struct.nvkm_gpio*, i32, i64, i64, i64) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
