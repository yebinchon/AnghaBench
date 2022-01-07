; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_g98.c_g98_devinit_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/devinit/extr_g98.c_g98_devinit_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_devinit = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@NVKM_ENGINE_MSPDEC = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSVLD = common dso_local global i64 0, align 8
@NVKM_ENGINE_MSPPP = common dso_local global i64 0, align 8
@NVKM_ENGINE_DISP = common dso_local global i64 0, align 8
@NVKM_ENGINE_SEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_devinit*)* @g98_devinit_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @g98_devinit_disable(%struct.nvkm_devinit* %0) #0 {
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
  br i1 %17, label %31, label %18

18:                                               ; preds = %1
  %19 = load i64, i64* @NVKM_ENGINE_MSPDEC, align 8
  %20 = shl i64 1, %19
  %21 = load i64, i64* %6, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* @NVKM_ENGINE_MSVLD, align 8
  %24 = shl i64 1, %23
  %25 = load i64, i64* %6, align 8
  %26 = or i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* @NVKM_ENGINE_MSPPP, align 8
  %28 = shl i64 1, %27
  %29 = load i64, i64* %6, align 8
  %30 = or i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %31

31:                                               ; preds = %18, %1
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* @NVKM_ENGINE_DISP, align 8
  %37 = shl i64 1, %36
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %35, %31
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, 32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* @NVKM_ENGINE_MSVLD, align 8
  %46 = shl i64 1, %45
  %47 = load i64, i64* %6, align 8
  %48 = or i64 %47, %46
  store i64 %48, i64* %6, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 64
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* @NVKM_ENGINE_SEC, align 8
  %55 = shl i64 1, %54
  %56 = load i64, i64* %6, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %6, align 8
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
