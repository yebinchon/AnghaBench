; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gp100.c_gp100_fb_init_unkn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fb/extr_gp100.c_gp100_fb_init_unkn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fb = type { i32 }
%struct.nvkm_device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gp100_fb_init_unkn(%struct.nvkm_fb* %0) #0 {
  %2 = alloca %struct.nvkm_fb*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_fb* %0, %struct.nvkm_fb** %2, align 8
  %4 = load %struct.nvkm_fb*, %struct.nvkm_fb** %2, align 8
  %5 = call %struct.TYPE_6__* @gf100_fb(%struct.nvkm_fb* %4)
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_rd32(%struct.nvkm_device* %11, i32 1051776)
  %13 = call i32 @nvkm_wr32(%struct.nvkm_device* %10, i32 2075776, i32 %12)
  %14 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = call i32 @nvkm_rd32(%struct.nvkm_device* %15, i32 1051844)
  %17 = call i32 @nvkm_wr32(%struct.nvkm_device* %14, i32 2075844, i32 %16)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %19, i32 1051848)
  %21 = call i32 @nvkm_wr32(%struct.nvkm_device* %18, i32 2075848, i32 %20)
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %24 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 1051852)
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %22, i32 2075852, i32 %24)
  ret void
}

declare dso_local %struct.TYPE_6__* @gf100_fb(%struct.nvkm_fb*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
