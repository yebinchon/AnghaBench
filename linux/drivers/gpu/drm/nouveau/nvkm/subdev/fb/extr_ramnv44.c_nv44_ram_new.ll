; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv44.c_nv44_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv44.c_nv44_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32 }

@NVKM_RAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv44_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
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
  %17 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 1049716)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 2
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %34, %30
  %37 = load %struct.nvkm_fb*, %struct.nvkm_fb** %3, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %4, align 8
  %41 = call i32 @nv40_ram_new_(%struct.nvkm_fb* %37, i32 %38, i32 %39, %struct.nvkm_ram** %40)
  ret i32 %41
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv40_ram_new_(%struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
