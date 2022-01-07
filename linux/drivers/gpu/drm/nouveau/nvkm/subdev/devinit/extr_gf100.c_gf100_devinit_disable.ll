; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gf100.c_gf100_devinit_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_gf100.c_gf100_devinit_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_DISP = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSPDEC = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSPPP = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSVLD = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSENC = common dso_local global i64 0, align 8
@NVKM_ENGINE_CE0 = common dso_local global i64 0, align 8
@NVKM_ENGINE_CE1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_devinit*)* @gf100_devinit_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gf100_devinit_disable(%struct.nvkm_devinit* %0) #0 {
  %2 = alloca %struct.nvkm_devinit*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.nvkm_devinit* %0, %struct.nvkm_devinit** %2, align 8
  %6 = load %struct.nvkm_devinit*, %struct.nvkm_devinit** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_devinit, %struct.nvkm_devinit* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = call i32 @nvkm_rd32(%struct.nvkm_device* %10, i32 140544)
  store i32 %11, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i64, i64* @NVKM_ENGINE_DISP, align 8
  %17 = shl i64 1, %16
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i64, i64* @NVKM_ENGINE_MSPDEC, align 8
  %26 = shl i64 1, %25
  %27 = load i64, i64* %5, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* @NVKM_ENGINE_MSPPP, align 8
  %30 = shl i64 1, %29
  %31 = load i64, i64* %5, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %24, %20
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i64, i64* @NVKM_ENGINE_MSVLD, align 8
  %39 = shl i64 1, %38
  %40 = load i64, i64* %5, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %5, align 8
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* %4, align 4
  %44 = and i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* @NVKM_ENGINE_MSENC, align 8
  %48 = shl i64 1, %47
  %49 = load i64, i64* %5, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 256
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i64, i64* @NVKM_ENGINE_CE0, align 8
  %57 = shl i64 1, %56
  %58 = load i64, i64* %5, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %55, %51
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 512
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load i64, i64* @NVKM_ENGINE_CE1, align 8
  %66 = shl i64 1, %65
  %67 = load i64, i64* %5, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %64, %60
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
