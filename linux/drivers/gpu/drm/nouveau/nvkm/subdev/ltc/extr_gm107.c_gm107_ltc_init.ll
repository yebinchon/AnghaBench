; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ltc/extr_gm107.c_gm107_ltc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_ltc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_ltc*)* @gm107_ltc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gm107_ltc_init(%struct.nvkm_ltc* %0) #0 {
  %2 = alloca %struct.nvkm_ltc*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_ltc* %0, %struct.nvkm_ltc** %2, align 8
  %5 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %7, align 8
  store %struct.nvkm_device* %8, %struct.nvkm_device** %3, align 8
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = call i32 @nvkm_rd32(%struct.nvkm_device* %9, i32 1051776)
  %11 = and i32 %10, 1
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %17 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @nvkm_wr32(%struct.nvkm_device* %15, i32 1565308, i32 %18)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = load %struct.nvkm_ltc*, %struct.nvkm_ltc** %2, align 8
  %22 = getelementptr inbounds %struct.nvkm_ltc, %struct.nvkm_ltc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 1565304, i32 %23)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 2, i32 0
  %30 = call i32 @nvkm_mask(%struct.nvkm_device* %25, i32 1565284, i32 2, i32 %29)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
