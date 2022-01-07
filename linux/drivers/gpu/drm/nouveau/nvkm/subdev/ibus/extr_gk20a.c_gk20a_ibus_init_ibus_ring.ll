; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gk20a.c_gk20a_ibus_init_ibus_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gk20a.c_gk20a_ibus_init_ibus_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_subdev*)* @gk20a_ibus_init_ibus_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk20a_ibus_init_ibus_ring(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %4 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %4, i32 0, i32 0
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_device* %6, %struct.nvkm_device** %3, align 8
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %8 = call i32 @nvkm_mask(%struct.nvkm_device* %7, i32 1274448, i32 63, i32 0)
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = call i32 @nvkm_mask(%struct.nvkm_device* %9, i32 512, i32 32, i32 0)
  %11 = call i32 @udelay(i32 20)
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %13 = call i32 @nvkm_mask(%struct.nvkm_device* %12, i32 512, i32 32, i32 32)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = call i32 @nvkm_wr32(%struct.nvkm_device* %14, i32 1179724, i32 4)
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %17 = call i32 @nvkm_wr32(%struct.nvkm_device* %16, i32 1188356, i32 2)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 1188356)
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %20, i32 1188692, i32 2048)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 1213224, i32 2048)
  %24 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %24, i32 1196832, i32 2048)
  ret void
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
