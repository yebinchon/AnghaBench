; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/therm/extr_base.c_nvkm_therm_clkgate_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_therm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)* }
%struct.nvkm_therm_clkgate_pack = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_therm_clkgate_init(%struct.nvkm_therm* %0, %struct.nvkm_therm_clkgate_pack* %1) #0 {
  %3 = alloca %struct.nvkm_therm*, align 8
  %4 = alloca %struct.nvkm_therm_clkgate_pack*, align 8
  store %struct.nvkm_therm* %0, %struct.nvkm_therm** %3, align 8
  store %struct.nvkm_therm_clkgate_pack* %1, %struct.nvkm_therm_clkgate_pack** %4, align 8
  %5 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %6 = icmp ne %struct.nvkm_therm* %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)*, i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)** %11, align 8
  %13 = icmp ne i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %7
  %15 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %16 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %7, %2
  br label %29

20:                                               ; preds = %14
  %21 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %22 = getelementptr inbounds %struct.nvkm_therm, %struct.nvkm_therm* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)*, i32 (%struct.nvkm_therm*, %struct.nvkm_therm_clkgate_pack*)** %24, align 8
  %26 = load %struct.nvkm_therm*, %struct.nvkm_therm** %3, align 8
  %27 = load %struct.nvkm_therm_clkgate_pack*, %struct.nvkm_therm_clkgate_pack** %4, align 8
  %28 = call i32 %25(%struct.nvkm_therm* %26, %struct.nvkm_therm_clkgate_pack* %27)
  br label %29

29:                                               ; preds = %20, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
