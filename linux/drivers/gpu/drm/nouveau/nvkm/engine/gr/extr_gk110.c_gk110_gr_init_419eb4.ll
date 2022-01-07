; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk110.c_gk110_gr_init_419eb4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk110.c_gk110_gr_init_419eb4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gk110_gr_init_419eb4(%struct.gf100_gr* %0) #0 {
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
  %11 = call i32 @nvkm_mask(%struct.nvkm_device* %10, i32 4300468, i32 4096, i32 4096)
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_mask(%struct.nvkm_device* %12, i32 4300468, i32 8192, i32 8192)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = call i32 @nvkm_mask(%struct.nvkm_device* %14, i32 4300468, i32 16384, i32 16384)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_mask(%struct.nvkm_device* %16, i32 4300468, i32 32768, i32 32768)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = call i32 @nvkm_mask(%struct.nvkm_device* %18, i32 4300468, i32 4096, i32 0)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = call i32 @nvkm_mask(%struct.nvkm_device* %20, i32 4300468, i32 8192, i32 0)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = call i32 @nvkm_mask(%struct.nvkm_device* %22, i32 4300468, i32 16384, i32 0)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = call i32 @nvkm_mask(%struct.nvkm_device* %24, i32 4300468, i32 32768, i32 0)
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
