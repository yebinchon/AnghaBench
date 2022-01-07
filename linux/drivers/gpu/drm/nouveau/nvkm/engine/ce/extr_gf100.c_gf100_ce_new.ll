; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gf100.c_gf100_ce_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/ce/extr_gf100.c_gf100_ce_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_device = type { i32 }
%struct.nvkm_engine = type { i32 }

@NVKM_ENGINE_CE0 = common dso_local global i32 0, align 4
@gf100_ce0 = common dso_local global i32 0, align 4
@NVKM_ENGINE_CE1 = common dso_local global i32 0, align 4
@gf100_ce1 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gf100_ce_new(%struct.nvkm_device* %0, i32 %1, %struct.nvkm_engine** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvkm_engine**, align 8
  store %struct.nvkm_device* %0, %struct.nvkm_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nvkm_engine** %2, %struct.nvkm_engine*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @NVKM_ENGINE_CE0, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %7, align 8
  %15 = call i32 @nvkm_falcon_new_(i32* @gf100_ce0, %struct.nvkm_device* %12, i32 %13, i32 1, i32 1064960, %struct.nvkm_engine** %14)
  store i32 %15, i32* %4, align 4
  br label %29

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NVKM_ENGINE_CE1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.nvkm_engine**, %struct.nvkm_engine*** %7, align 8
  %24 = call i32 @nvkm_falcon_new_(i32* @gf100_ce1, %struct.nvkm_device* %21, i32 %22, i32 1, i32 1069056, %struct.nvkm_engine** %23)
  store i32 %24, i32* %4, align 4
  br label %29

25:                                               ; preds = %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %26, %20, %11
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @nvkm_falcon_new_(i32*, %struct.nvkm_device*, i32, i32, i32, %struct.nvkm_engine**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
