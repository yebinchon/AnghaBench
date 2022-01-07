; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_fb_vram_rblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv50.c_nv50_fb_vram_rblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ram = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"memcfg %08x %08x %08x %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"memory controller reports %d MiB VRAM\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"rblock %d bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_ram*)* @nv50_fb_vram_rblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv50_fb_vram_rblock(%struct.nvkm_ram* %0) #0 {
  %2 = alloca %struct.nvkm_ram*, align 8
  %3 = alloca %struct.nvkm_subdev*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.nvkm_ram* %0, %struct.nvkm_ram** %2, align 8
  %15 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %16 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.nvkm_subdev* %18, %struct.nvkm_subdev** %3, align 8
  %19 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %20 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %19, i32 0, i32 0
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %20, align 8
  store %struct.nvkm_device* %21, %struct.nvkm_device** %4, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %23 = call i32 @nvkm_rd32(%struct.nvkm_device* %22, i32 1049088)
  store i32 %23, i32* %11, align 4
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 1049092)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 1049168)
  store i32 %27, i32* %13, align 4
  %28 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %33 = call i32 @nvkm_rd32(%struct.nvkm_device* %32, i32 5440)
  %34 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %33)
  %35 = load i32, i32* %12, align 4
  %36 = and i32 %35, 61440
  %37 = ashr i32 %36, 12
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %12, align 4
  %39 = and i32 %38, 983040
  %40 = ashr i32 %39, 16
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %12, align 4
  %43 = and i32 %42, 15728640
  %44 = ashr i32 %43, 20
  %45 = add nsw i32 %44, 8
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = and i32 %46, 50331648
  %48 = ashr i32 %47, 24
  %49 = add nsw i32 %48, 2
  %50 = shl i32 1, %49
  store i32 %50, i32* %8, align 4
  %51 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %52 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = mul nsw i32 %53, %54
  %56 = load i32, i32* %5, align 4
  %57 = shl i32 1, %56
  %58 = mul nsw i32 %55, %57
  %59 = mul nsw i32 %58, 8
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = and i32 %63, 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %1
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %66, %1
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %75 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %80 = load %struct.nvkm_ram*, %struct.nvkm_ram** %2, align 8
  %81 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 20
  %84 = call i32 @nvkm_warn(%struct.nvkm_subdev* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  %92 = mul nsw i32 %91, 3
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %3, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 (%struct.nvkm_subdev*, i8*, i32, ...) @nvkm_debug(%struct.nvkm_subdev* %94, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* %14, align 4
  ret i32 %97
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_debug(%struct.nvkm_subdev*, i8*, i32, ...) #1

declare dso_local i32 @nvkm_warn(%struct.nvkm_subdev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
