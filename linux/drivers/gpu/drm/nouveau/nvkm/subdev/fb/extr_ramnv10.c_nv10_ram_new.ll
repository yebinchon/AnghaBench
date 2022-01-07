; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv10.c_nv10_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv10.c_nv10_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32 }

@NVKM_RAM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_SDRAM = common dso_local global i32 0, align 4
@nv04_ram_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv10_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca %struct.nvkm_fb*, align 8
  %4 = alloca %struct.nvkm_ram**, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %3, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %4, align 8
  %9 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %5, align 8
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 1049100)
  %15 = and i32 %14, -16777216
  store i32 %15, i32* %6, align 4
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 1049088)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %22, i32* %8, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NVKM_RAM_TYPE_SDRAM, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %4, align 8
  %30 = call i32 @nvkm_ram_new_(i32* @nv04_ram_func, %struct.nvkm_fb* %26, i32 %27, i32 %28, %struct.nvkm_ram** %29)
  ret i32 %30
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_ram_new_(i32*, %struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
