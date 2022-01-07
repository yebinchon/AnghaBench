; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv49.c_nv49_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv49.c_nv49_ram_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_ram = type { i32 }

@NVKM_RAM_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR1 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_DDR2 = common dso_local global i32 0, align 4
@NVKM_RAM_TYPE_GDDR3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv49_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
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
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 1049100)
  %17 = and i32 %16, -16777216
  store i32 %17, i32* %7, align 4
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1050900)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 3
  switch i32 %22, label %30 [
    i32 0, label %23
    i32 1, label %25
    i32 2, label %27
    i32 3, label %29
  ]

23:                                               ; preds = %2
  %24 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %24, i32* %9, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %28, i32* %9, align 4
  br label %30

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %2, %29, %27, %25, %23
  %31 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %35 = call i32 @nv40_ram_new_(%struct.nvkm_fb* %31, i32 %32, i32 %33, %struct.nvkm_ram** %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %30
  %41 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %42 = call i32 @nvkm_rd32(%struct.nvkm_device* %41, i32 1049088)
  %43 = and i32 %42, 3
  %44 = add nsw i32 %43, 1
  %45 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %46 = load %struct.nvkm_ram*, %struct.nvkm_ram** %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %38
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv40_ram_new_(%struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
