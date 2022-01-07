; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv40.c_nv40_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32 }

@NVKM_RAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_SDRAM = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR3 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv40_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvkm_fb*, align 8
  %5 = alloca %struct.nvkm_ram**, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %4, align 8
  store %struct.nvkm_ram** %1, %struct.nvkm_ram*** %5, align 8
  %11 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %12 = getelementptr inbounds %struct.nvkm_fb, %struct.nvkm_fb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %13, align 8
  store %struct.nvkm_device* %14, %struct.nvkm_device** %6, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 4632)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %18 = call i32 @nvkm_rd32(%struct.nvkm_device* %17, i32 1049100)
  %19 = and i32 %18, -16777216
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 768
  switch i32 %22, label %31 [
    i32 0, label %23
    i32 256, label %25
    i32 512, label %27
    i32 768, label %29
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @NVKM_RAM_TYPE_SDRAM, align 4
  store i32 %24, i32* %9, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %26, i32* %9, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %28, i32* %9, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %2, %29, %27, %25, %23
  %32 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %36 = call i32 @nv40_ram_new_(%struct.nvkm_fb* %32, i32 %33, i32 %34, %struct.nvkm_ram** %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %3, align 4
  br label %49

41:                                               ; preds = %31
  %42 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %43 = call i32 @nvkm_rd32(%struct.nvkm_device* %42, i32 1049088)
  %44 = and i32 %43, 3
  %45 = add nsw i32 %44, 1
  %46 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %47 = load %struct.nvkm_ram*, %struct.nvkm_ram** %46, align 8
  %48 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %41, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv40_ram_new_(%struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
