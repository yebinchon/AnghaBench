; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_rammcp77.c_mcp77_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_rammcp77.c_mcp77_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32, i32 }
%struct.mcp77_ram = type { i32, %struct.nvkm_ram }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mcp77_ram_func = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_STOLEN = common dso_local global i32 0, align 4
@NVKM_RAM_MM_NORMAL = common dso_local global i32 0, align 4
@NVKM_RAM_MM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcp77_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram**, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mcp77_ram*, align 8
  %12 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %5, align 8
  %13 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %14 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %15, align 8
  store %struct.nvkm_device* %16, %struct.nvkm_device** %6, align 8
  store i32 262144, i32* %7, align 4
  store i32 1052672, i32* %8, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %18 = call i64 @nvkm_rd32(%struct.nvkm_device* %17, i32 1052176)
  %19 = trunc i64 %18 to i32
  %20 = shl i32 %19, 12
  store i32 %20, i32* %9, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %22 = call i64 @nvkm_rd32(%struct.nvkm_device* %21, i32 1052180)
  %23 = trunc i64 %22 to i32
  %24 = shl i32 %23, 12
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mcp77_ram* @kzalloc(i32 12, i32 %25)
  store %struct.mcp77_ram* %26, %struct.mcp77_ram** %11, align 8
  %27 = icmp ne %struct.mcp77_ram* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %74

31:                                               ; preds = %2
  %32 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %33 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %32, i32 0, i32 1
  %34 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  store %struct.nvkm_ram* %33, %struct.nvkm_ram** %34, align 8
  %35 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %36 = load i32, i32* @NVKM_RAM_TYPE_STOLEN, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %39 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %38, i32 0, i32 1
  %40 = call i32 @nvkm_ram_ctor(i32* @mcp77_ram_func, %struct.nvkm_fb* %35, i32 %36, i32 %37, %struct.nvkm_ram* %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %3, align 4
  br label %74

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %46, %47
  %49 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %50 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %53 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  %55 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %56 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %56, i32 0, i32 1
  %58 = call i32 @nvkm_mm_fini(i32* %57)
  %59 = load %struct.mcp77_ram*, %struct.mcp77_ram** %11, align 8
  %60 = getelementptr inbounds %struct.mcp77_ram, %struct.mcp77_ram* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %60, i32 0, i32 1
  %62 = load i32, i32* @NVKM_RAM_MM_NORMAL, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* @NVKM_RAM_MM_SHIFT, align 4
  %72 = ashr i32 %70, %71
  %73 = call i32 @nvkm_mm_init(i32* %61, i32 %62, i32 %65, i32 %72, i32 1)
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %45, %43, %28
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local %struct.mcp77_ram* @kzalloc(i32, i32) #1

declare dso_local i32 @nvkm_ram_ctor(i32*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram*) #1

declare dso_local i32 @nvkm_mm_fini(i32*) #1

declare dso_local i32 @nvkm_mm_init(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
