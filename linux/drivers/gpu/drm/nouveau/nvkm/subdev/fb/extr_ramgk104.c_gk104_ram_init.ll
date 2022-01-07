; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgk104.c_gk104_ram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk104_ram_init(%struct.nvkm_ram* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvkm_ram*, align 8
  %4 = alloca %struct.nvkm_subdev*, align 8
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
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %3, align 8
  %16 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %17 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.nvkm_subdev* %19, %struct.nvkm_subdev** %4, align 8
  %20 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %21 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %20, i32 0, i32 0
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %21, align 8
  store %struct.nvkm_device* %22, %struct.nvkm_device** %5, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %23, i32 0, i32 0
  %25 = load %struct.nvkm_bios*, %struct.nvkm_bios** %24, align 8
  store %struct.nvkm_bios* %25, %struct.nvkm_bios** %6, align 8
  %26 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %27 = call i32 @nvbios_rammapTe(%struct.nvkm_bios* %26, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 21
  br i1 %32, label %33, label %36

33:                                               ; preds = %30, %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %30
  %37 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = add nsw i32 %38, 20
  %40 = call i32 @nvbios_rd08(%struct.nvkm_bios* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 16
  %44 = call i32 @nvbios_rd32(%struct.nvkm_bios* %41, i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %46 = call i32 @nvkm_rd32(%struct.nvkm_device* %45, i32 1111644)
  %47 = and i32 %46, 240
  store i32 %47, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %48

48:                                               ; preds = %68, %36
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %14, align 4
  %55 = ashr i32 %54, 4
  %56 = icmp ne i32 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %59 = load i32, i32* %15, align 4
  %60 = shl i32 %59, 4
  %61 = call i32 @nvkm_mask(%struct.nvkm_device* %58, i32 1111644, i32 240, i32 %60)
  %62 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %63 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @nvbios_rd32(%struct.nvkm_bios* %63, i32 %64)
  %66 = call i32 @nvbios_init(%struct.nvkm_subdev* %62, i32 %65)
  br label %67

67:                                               ; preds = %57, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 4
  store i32 %72, i32* %13, align 4
  br label %48

73:                                               ; preds = %48
  %74 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @nvkm_mask(%struct.nvkm_device* %74, i32 1111644, i32 240, i32 %75)
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %78 = call i32 @nvkm_mask(%struct.nvkm_device* %77, i32 1111428, i32 285212672, i32 0)
  %79 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %80 = call i32 @nvkm_wr32(%struct.nvkm_device* %79, i32 1109184, i32 -1)
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %82 = call i32 @nvkm_mask(%struct.nvkm_device* %81, i32 1110368, i32 16, i32 16)
  %83 = load %struct.nvkm_ram*, %struct.nvkm_ram** %3, align 8
  %84 = call i32 @gk104_ram_train_init(%struct.nvkm_ram* %83)
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %73, %33
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @nvbios_rammapTe(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvbios_init(%struct.nvkm_subdev*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @gk104_ram_train_init(%struct.nvkm_ram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
