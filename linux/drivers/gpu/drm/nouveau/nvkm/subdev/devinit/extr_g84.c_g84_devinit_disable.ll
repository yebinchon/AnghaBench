; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_g84.c_g84_devinit_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_g84.c_g84_devinit_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_MPEG = common dso_local global i64 0, align 8
@NVKM_ENGINE_VP = common dso_local global i64 0, align 8
@NVKM_ENGINE_BSP = common dso_local global i64 0, align 8
@NVKM_ENGINE_CIPHER = common dso_local global i64 0, align 8
@NVKM_ENGINE_DISP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_devinit*)* @g84_devinit_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g84_devinit_disable(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %7 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %8 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %9, align 8
  store %struct.nvkm_device* %10, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 5440)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %14 = call i32 @nvkm_rd32(%struct.nvkm_device* %13, i32 5452)
  store i32 %14, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 1073741824
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %35, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @NVKM_ENGINE_MPEG, align 8
  %20 = shl i64 1, %19
  %21 = load i64, i64* %6, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @NVKM_ENGINE_VP, align 8
  %24 = shl i64 1, %23
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* @NVKM_ENGINE_BSP, align 8
  %28 = shl i64 1, %27
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* @NVKM_ENGINE_CIPHER, align 8
  %32 = shl i64 1, %31
  %33 = load i64, i64* %6, align 8
  %34 = or i64 %33, %32
  store i64 %34, i64* %6, align 8
  br label %35

35:                                               ; preds = %18, %1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* @NVKM_ENGINE_DISP, align 8
  %41 = shl i64 1, %40
  %42 = load i64, i64* %6, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, 32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load i64, i64* @NVKM_ENGINE_BSP, align 8
  %50 = shl i64 1, %49
  %51 = load i64, i64* %6, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load i64, i64* @NVKM_ENGINE_CIPHER, align 8
  %59 = shl i64 1, %58
  %60 = load i64, i64* %6, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %57, %53
  %63 = load i64, i64* %6, align 8
  ret i64 %63
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
