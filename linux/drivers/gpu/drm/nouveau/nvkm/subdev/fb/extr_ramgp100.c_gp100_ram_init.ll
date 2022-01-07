; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgp100.c_gp100_ram_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramgp100.c_gp100_ram_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*)* @gp100_ram_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gp100_ram_init(%struct.nvkm_ram* %0) #0 {
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
  br label %87

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
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %80

47:                                               ; preds = %36
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %49 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 10094172)
  %50 = and i32 %49, 240
  store i32 %50, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %51

51:                                               ; preds = %71, %47
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %51
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %15, align 4
  %58 = ashr i32 %57, 4
  %59 = icmp ne i32 %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %62 = load i32, i32* %14, align 4
  %63 = shl i32 %62, 4
  %64 = call i32 @nvkm_mask(%struct.nvkm_device* %61, i32 10094172, i32 240, i32 %63)
  %65 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %4, align 8
  %66 = load %struct.nvkm_bios*, %struct.nvkm_bios** %6, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @nvbios_rd32(%struct.nvkm_bios* %66, i32 %67)
  %69 = call i32 @nvbios_init(%struct.nvkm_subdev* %65, i32 %68)
  br label %70

70:                                               ; preds = %60, %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %13, align 4
  %75 = add nsw i32 %74, 4
  store i32 %75, i32* %13, align 4
  br label %51

76:                                               ; preds = %51
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @nvkm_mask(%struct.nvkm_device* %77, i32 10094172, i32 240, i32 %78)
  br label %80

80:                                               ; preds = %76, %36
  %81 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %82 = call i32 @nvkm_mask(%struct.nvkm_device* %81, i32 10093956, i32 285212672, i32 0)
  %83 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %84 = call i32 @nvkm_wr32(%struct.nvkm_device* %83, i32 1109184, i32 -1)
  %85 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %86 = call i32 @nvkm_mask(%struct.nvkm_device* %85, i32 10092896, i32 16, i32 16)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %33
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @nvbios_rammapTe(%struct.nvkm_bios*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @nvbios_rd08(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvbios_rd32(%struct.nvkm_bios*, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvbios_init(%struct.nvkm_subdev*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
