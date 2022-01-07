; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gk104.c_gk104_ibus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/ibus/extr_gk104.c_gk104_ibus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_subdev*)* @gk104_ibus_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gk104_ibus_init(%struct.nvkm_subdev* %0) #0 {
  %2 = alloca %struct.nvkm_subdev*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  store %struct.nvkm_subdev* %0, %struct.nvkm_subdev** %2, align 8
  %4 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %2, align 8
  %5 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %4, i32 0, i32 0
  %6 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  store %struct.nvkm_device* %6, %struct.nvkm_device** %3, align 8
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %8 = call i32 @nvkm_mask(%struct.nvkm_device* %7, i32 1188632, i32 262143, i32 4096)
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %10 = call i32 @nvkm_mask(%struct.nvkm_device* %9, i32 1188636, i32 262143, i32 512)
  %11 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %12 = call i32 @nvkm_mask(%struct.nvkm_device* %11, i32 1188624, i32 262143, i32 2048)
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %14 = call i32 @nvkm_mask(%struct.nvkm_device* %13, i32 1188680, i32 262143, i32 256)
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %16 = call i32 @nvkm_mask(%struct.nvkm_device* %15, i32 1188784, i32 262143, i32 4095)
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %18 = call i32 @nvkm_mask(%struct.nvkm_device* %17, i32 1188680, i32 262143, i32 512)
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %20 = call i32 @nvkm_mask(%struct.nvkm_device* %19, i32 1188696, i32 262143, i32 10368)
  ret i32 0
}

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
