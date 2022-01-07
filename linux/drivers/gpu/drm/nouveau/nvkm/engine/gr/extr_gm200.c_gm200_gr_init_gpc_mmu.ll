; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_init_gpc_mmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gm200.c_gm200_gr_init_gpc_mmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gm200_gr_init_gpc_mmu(%struct.gf100_gr* %0) #0 {
  %2 = alloca %struct.gf100_gr*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %2, align 8
  %4 = load %struct.gf100_gr*, %struct.gf100_gr** %2, align 8
  %5 = getelementptr inbounds %struct.gf100_gr, %struct.gf100_gr* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 1051776)
  %13 = and i32 %12, -268427265
  %14 = call i32 @nvkm_wr32(%struct.nvkm_device* %10, i32 4294784, i32 %13)
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = call i32 @nvkm_wr32(%struct.nvkm_device* %15, i32 4294800, i32 0)
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = call i32 @nvkm_wr32(%struct.nvkm_device* %17, i32 4294804, i32 0)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = call i32 @nvkm_rd32(%struct.nvkm_device* %20, i32 1051848)
  %22 = call i32 @nvkm_wr32(%struct.nvkm_device* %19, i32 4294836, i32 %21)
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %24, i32 1051852)
  %26 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 4294840, i32 %25)
  %27 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %28 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %29 = call i32 @nvkm_rd32(%struct.nvkm_device* %28, i32 1051844)
  %30 = call i32 @nvkm_wr32(%struct.nvkm_device* %27, i32 4294832, i32 %29)
  ret void
}

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
