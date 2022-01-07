; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_ctor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_ram_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram_func = type { i32 }
%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { %struct.nvkm_bios* }
%struct.nvkm_bios = type { i32 }
%struct.nvkm_ram = type { i32, i32, i32, i32 }

@NVKM_RAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR4 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR5 = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv50_ram_ctor(%struct.nvkm_ram_func* %0, %struct.nvkm_fb* %1, %struct.nvkm_ram* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_ram_func*, align 8
  %6 = alloca %struct.nvkm_fb*, align 8
  %7 = alloca %struct.nvkm_ram*, align 8
  %8 = alloca %struct.nvkm_device*, align 8
  %9 = alloca %struct.nvkm_bios*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_ram_func* %0, %struct.nvkm_ram_func** %5, align 8
  store %struct.nvkm_fb* %1, %struct.nvkm_fb** %6, align 8
  store %struct.nvkm_ram* %2, %struct.nvkm_ram** %7, align 8
  %15 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %16 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %17, align 8
  store %struct.nvkm_device* %18, %struct.nvkm_device** %8, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %20 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %19, i32 0, i32 0
  %21 = load %struct.nvkm_bios*, %struct.nvkm_bios** %20, align 8
  store %struct.nvkm_bios* %21, %struct.nvkm_bios** %9, align 8
  store i32 262144, i32* %10, align 4
  store i32 1048576, i32* %11, align 4
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 1049100)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %24, i32* %13, align 4
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %26 = call i32 @nvkm_rd32(%struct.nvkm_device* %25, i32 1050388)
  %27 = and i32 %26, 7
  switch i32 %27, label %46 [
    i32 0, label %28
    i32 1, label %30
    i32 2, label %40
    i32 3, label %42
    i32 4, label %44
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %29, i32* %13, align 4
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.nvkm_bios*, %struct.nvkm_bios** %9, align 8
  %32 = call i32 @nvkm_fb_bios_memtype(%struct.nvkm_bios* %31)
  %33 = load i32, i32* @NVKM_RAM_TYPE_DDR3, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @NVKM_RAM_TYPE_DDR3, align 4
  store i32 %36, i32* %13, align 4
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %37, %35
  br label %47

40:                                               ; preds = %3
  %41 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %41, i32* %13, align 4
  br label %47

42:                                               ; preds = %3
  %43 = load i32, i32* @NVKM_RAM_TYPE_GDDR4, align 4
  store i32 %43, i32* %13, align 4
  br label %47

44:                                               ; preds = %3
  %45 = load i32, i32* @NVKM_RAM_TYPE_GDDR5, align 4
  store i32 %45, i32* %13, align 4
  br label %47

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %46, %44, %42, %40, %39, %28
  %48 = load i32, i32* %12, align 4
  %49 = and i32 %48, 255
  %50 = shl i32 %49, 32
  %51 = load i32, i32* %12, align 4
  %52 = and i32 %51, -256
  %53 = or i32 %50, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.nvkm_ram_func*, %struct.nvkm_ram_func** %5, align 8
  %55 = load %struct.nvkm_fb*, %struct.nvkm_fb** %6, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %59 = call i32 @nvkm_ram_ctor(%struct.nvkm_ram_func* %54, %struct.nvkm_fb* %55, i32 %56, i32 %57, %struct.nvkm_ram* %58)
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %47
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %4, align 4
  br label %103

64:                                               ; preds = %47
  %65 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %66 = call i32 @nvkm_rd32(%struct.nvkm_device* %65, i32 5440)
  %67 = and i32 %66, 16711680
  %68 = ashr i32 %67, 16
  %69 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %70 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %72 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @hweight8(i32 %73)
  %75 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %76 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  %78 = call i32 @nvkm_rd32(%struct.nvkm_device* %77, i32 1049088)
  %79 = and i32 %78, 4
  %80 = icmp ne i32 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 2, i32 1
  %83 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %84 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %83, i32 0, i32 1
  store i32 %82, i32* %84, align 4
  %85 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %86 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %85, i32 0, i32 2
  %87 = call i32 @nvkm_mm_fini(i32* %86)
  %88 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %89 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %88, i32 0, i32 2
  %90 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %91 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %92 = ashr i32 262144, %91
  %93 = load i32, i32* %12, align 4
  %94 = sub nsw i32 %93, 262144
  %95 = sub nsw i32 %94, 1048576
  %96 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load %struct.nvkm_ram*, %struct.nvkm_ram** %7, align 8
  %99 = call i32 @nv50_fb_vram_rblock(%struct.nvkm_ram* %98)
  %100 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %101 = ashr i32 %99, %100
  %102 = call i32 @nvkm_mm_init(i32* %89, i32 %90, i32 %92, i32 %97, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %64, %62
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_fb_bios_memtype(%struct.nvkm_bios*) #1

declare dso_local i32 @nvkm_ram_ctor(%struct.nvkm_ram_func*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram*) #1

declare dso_local i32 @hweight8(i32) #1

declare dso_local i32 @nvkm_mm_fini(i32*) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @nv50_fb_vram_rblock(%struct.nvkm_ram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
