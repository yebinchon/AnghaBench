; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/bios/extr_pll.c_pll_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_mapping = type { i32 }
%struct.nvkm_bios = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32, i32 }

@nv04_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@nv40_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@nv50_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@g84_pll_mapping = common dso_local global %struct.pll_mapping* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pll_mapping* (%struct.nvkm_bios*)* @pll_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pll_mapping* @pll_map(%struct.nvkm_bios* %0) #0 {
  %2 = alloca %struct.pll_mapping*, align 8
  %3 = alloca %struct.nvkm_bios*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_bios* %0, %struct.nvkm_bios** %3, align 8
  %5 = load %struct.nvkm_bios*, %struct.nvkm_bios** %3, align 8
  %6 = getelementptr inbounds %struct.nvkm_bios, %struct.nvkm_bios* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %4, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %42 [
    i32 134, label %12
    i32 133, label %12
    i32 132, label %12
    i32 131, label %12
    i32 130, label %12
    i32 129, label %14
    i32 128, label %16
  ]

12:                                               ; preds = %1, %1, %1, %1, %1
  %13 = load %struct.pll_mapping*, %struct.pll_mapping** @nv04_pll_mapping, align 8
  store %struct.pll_mapping* %13, %struct.pll_mapping** %2, align 8
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.pll_mapping*, %struct.pll_mapping** @nv40_pll_mapping, align 8
  store %struct.pll_mapping* %15, %struct.pll_mapping** %2, align 8
  br label %43

16:                                               ; preds = %1
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 80
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load %struct.pll_mapping*, %struct.pll_mapping** @nv50_pll_mapping, align 8
  store %struct.pll_mapping* %22, %struct.pll_mapping** %2, align 8
  br label %43

23:                                               ; preds = %16
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 163
  br i1 %27, label %38, label %28

28:                                               ; preds = %23
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %30 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 170
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 172
  br i1 %37, label %38, label %40

38:                                               ; preds = %33, %28, %23
  %39 = load %struct.pll_mapping*, %struct.pll_mapping** @g84_pll_mapping, align 8
  store %struct.pll_mapping* %39, %struct.pll_mapping** %2, align 8
  br label %43

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %1, %41
  store %struct.pll_mapping* null, %struct.pll_mapping** %2, align 8
  br label %43

43:                                               ; preds = %42, %38, %21, %14, %12
  %44 = load %struct.pll_mapping*, %struct.pll_mapping** %2, align 8
  ret %struct.pll_mapping* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
