; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv41.c_nv41_ram_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_ramnv41.c_nv41_ram_new.c"
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
define dso_local i32 @nv41_ram_new(%struct.nvkm_fb* %0, %struct.nvkm_ram** %1) #0 {
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
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1049716)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* @NVKM_RAM_TYPE_UNKNOWN, align 4
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NVKM_RAM_TYPE_GDDR3, align 4
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %2
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @NVKM_RAM_TYPE_DDR2, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @NVKM_RAM_TYPE_DDR1, align 4
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %36, %32
  %39 = load %struct.nvkm_fb*, %struct.nvkm_fb** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %43 = call i32 @nv40_ram_new_(%struct.nvkm_fb* %39, i32 %40, i32 %41, %struct.nvkm_ram** %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %50 = call i32 @nvkm_rd32(%struct.nvkm_device* %49, i32 1049088)
  %51 = and i32 %50, 3
  %52 = add nsw i32 %51, 1
  %53 = load %struct.nvkm_ram**, %struct.nvkm_ram*** %5, align 8
  %54 = load %struct.nvkm_ram*, %struct.nvkm_ram** %53, align 8
  %55 = getelementptr inbounds %struct.nvkm_ram, %struct.nvkm_ram* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %46
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nv40_ram_new_(%struct.nvkm_fb*, i32, i32, %struct.nvkm_ram**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
