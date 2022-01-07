; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_gpio.c_dcb_gpio_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_gpio.c_dcb_gpio_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_bios = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dcb_gpio_table(%struct.nvkm_bios* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nvkm_bios*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32 @dcb_table(%struct.nvkm_bios* %13, i32* %14, i32* %15, i32* %16, i32* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %98

21:                                               ; preds = %5
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 48
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 12
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 10
  %33 = call i32 @nvbios_rd16(%struct.nvkm_bios* %30, i32 %32)
  store i32 %33, i32* %11, align 4
  br label %50

34:                                               ; preds = %25, %21
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 34
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, 1
  %42 = call i32 @nvbios_rd08(%struct.nvkm_bios* %39, i32 %41)
  %43 = icmp sge i32 %42, 19
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sub nsw i32 %46, 15
  %48 = call i32 @nvbios_rd16(%struct.nvkm_bios* %45, i32 %47)
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %44, %38, %34
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %97

53:                                               ; preds = %50
  %54 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 0
  %57 = call i32 @nvbios_rd08(%struct.nvkm_bios* %54, i32 %56)
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %60, 48
  br i1 %61, label %62, label %74

62:                                               ; preds = %53
  %63 = load i32*, i32** %8, align 8
  store i32 3, i32* %63, align 4
  %64 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 2
  %67 = call i32 @nvbios_rd08(%struct.nvkm_bios* %64, i32 %66)
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  %69 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  %72 = call i32 @nvbios_rd08(%struct.nvkm_bios* %69, i32 %71)
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  br label %96

74:                                               ; preds = %53
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %76, 65
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  %82 = call i32 @nvbios_rd08(%struct.nvkm_bios* %79, i32 %81)
  %83 = load i32*, i32** %8, align 8
  store i32 %82, i32* %83, align 4
  %84 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, 2
  %87 = call i32 @nvbios_rd08(%struct.nvkm_bios* %84, i32 %86)
  %88 = load i32*, i32** %9, align 8
  store i32 %87, i32* %88, align 4
  %89 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 3
  %92 = call i32 @nvbios_rd08(%struct.nvkm_bios* %89, i32 %91)
  %93 = load i32*, i32** %10, align 8
  store i32 %92, i32* %93, align 4
  br label %95

94:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %78
  br label %96

96:                                               ; preds = %95, %62
  br label %97

97:                                               ; preds = %96, %50
  br label %98

98:                                               ; preds = %97, %5
  %99 = load i32, i32* %11, align 4
  ret i32 %99
}

declare dso_local i32 @dcb_table(%struct.nvkm_bios*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd16(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
