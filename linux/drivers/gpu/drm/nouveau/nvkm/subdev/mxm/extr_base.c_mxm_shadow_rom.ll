; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_mxm_shadow_rom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mxm/extr_base.c_mxm_shadow_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mxm = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_i2c*, %struct.nvkm_bios* }
%struct.nvkm_i2c = type { i32 }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_i2c_bus = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_mxm*, i32)* @mxm_shadow_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxm_shadow_rom(%struct.nvkm_mxm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_mxm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca %struct.nvkm_bios*, align 8
  %8 = alloca %struct.nvkm_i2c*, align 8
  %9 = alloca %struct.nvkm_i2c_bus*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.nvkm_mxm* %0, %struct.nvkm_mxm** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %15 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %18, i32 0, i32 1
  %20 = load %struct.nvkm_bios*, %struct.nvkm_bios** %19, align 8
  store %struct.nvkm_bios* %20, %struct.nvkm_bios** %7, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %21, i32 0, i32 0
  %23 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %22, align 8
  store %struct.nvkm_i2c* %23, %struct.nvkm_i2c** %8, align 8
  store %struct.nvkm_i2c_bus* null, %struct.nvkm_i2c_bus** %9, align 8
  %24 = load %struct.nvkm_bios*, %struct.nvkm_bios** %7, align 8
  %25 = call i32 @mxm_ddc_map(%struct.nvkm_bios* %24, i32 1)
  %26 = and i32 %25, 15
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 15
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.nvkm_i2c*, %struct.nvkm_i2c** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c* %30, i32 %31)
  store %struct.nvkm_i2c_bus* %32, %struct.nvkm_i2c_bus** %9, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %35 = icmp ne %struct.nvkm_i2c_bus* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %86

37:                                               ; preds = %33
  store i32 84, i32* %12, align 4
  %38 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %41 = call i64 @mxm_shadow_rom_fetch(%struct.nvkm_i2c_bus* %38, i32 %39, i32 0, i32 6, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %37
  store i32 86, i32* %12, align 4
  %44 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %47 = call i64 @mxm_shadow_rom_fetch(%struct.nvkm_i2c_bus* %44, i32 %45, i32 0, i32 6, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %86

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %37
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %53 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %54 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %53, i32 0, i32 0
  store i32* %52, i32** %54, align 8
  %55 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %56 = call i32 @mxms_headerlen(%struct.nvkm_mxm* %55)
  %57 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %58 = call i32 @mxms_structlen(%struct.nvkm_mxm* %57)
  %59 = add nsw i32 %56, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i32* @kmalloc(i32 %60, i32 %61)
  %63 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %64 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %63, i32 0, i32 0
  store i32* %62, i32** %64, align 8
  %65 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %66 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %79

69:                                               ; preds = %51
  %70 = load %struct.nvkm_i2c_bus*, %struct.nvkm_i2c_bus** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %74 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i64 @mxm_shadow_rom_fetch(%struct.nvkm_i2c_bus* %70, i32 %71, i32 0, i32 %72, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %86

79:                                               ; preds = %69, %51
  %80 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %81 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @kfree(i32* %82)
  %84 = load %struct.nvkm_mxm*, %struct.nvkm_mxm** %4, align 8
  %85 = getelementptr inbounds %struct.nvkm_mxm, %struct.nvkm_mxm* %84, i32 0, i32 0
  store i32* null, i32** %85, align 8
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %79, %78, %49, %36
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @mxm_ddc_map(%struct.nvkm_bios*, i32) #1

declare dso_local %struct.nvkm_i2c_bus* @nvkm_i2c_bus_find(%struct.nvkm_i2c*, i32) #1

declare dso_local i64 @mxm_shadow_rom_fetch(%struct.nvkm_i2c_bus*, i32, i32, i32, i32*) #1

declare dso_local i32 @mxms_headerlen(%struct.nvkm_mxm*) #1

declare dso_local i32 @mxms_structlen(%struct.nvkm_mxm*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
