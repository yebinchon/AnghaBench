; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/clk/extr_nv40.c_nv40_clk_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_clk = type { i32 }
%struct.nv40_clk = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_clk*)* @nv40_clk_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv40_clk_prog(%struct.nvkm_clk* %0) #0 {
  %2 = alloca %struct.nvkm_clk*, align 8
  %3 = alloca %struct.nv40_clk*, align 8
  %4 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_clk* %0, %struct.nvkm_clk** %2, align 8
  %5 = load %struct.nvkm_clk*, %struct.nvkm_clk** %2, align 8
  %6 = call %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk* %5)
  store %struct.nv40_clk* %6, %struct.nv40_clk** %3, align 8
  %7 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %8 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %10, align 8
  store %struct.nvkm_device* %11, %struct.nvkm_device** %4, align 8
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %13 = call i32 @nvkm_mask(%struct.nvkm_device* %12, i32 49216, i32 819, i32 0)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %15 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %16 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @nvkm_wr32(%struct.nvkm_device* %14, i32 16388, i32 %17)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %20 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %21 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 16384, i32 -1073282816, i32 %22)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %25 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %26 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 16392, i32 -1073217537, i32 %27)
  %29 = call i32 @mdelay(i32 5)
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %4, align 8
  %31 = load %struct.nv40_clk*, %struct.nv40_clk** %3, align 8
  %32 = getelementptr inbounds %struct.nv40_clk, %struct.nv40_clk* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @nvkm_mask(%struct.nvkm_device* %30, i32 49216, i32 819, i32 %33)
  ret i32 0
}

declare dso_local %struct.nv40_clk* @nv40_clk(%struct.nvkm_clk*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
