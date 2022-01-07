; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fuse/extr_nv50.c_nv50_fuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fuse/extr_nv50.c_nv50_fuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fuse = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_fuse*, i64)* @nv50_fuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nv50_fuse_read(%struct.nvkm_fuse* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_fuse*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nvkm_fuse* %0, %struct.nvkm_fuse** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %10 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %5, align 8
  %13 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %14 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %13, i32 0, i32 0
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %18 = call i64 @nvkm_mask(%struct.nvkm_device* %17, i32 4228, i32 2048, i32 2048)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 135168, %20
  %22 = call i64 @nvkm_rd32(%struct.nvkm_device* %19, i64 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @nvkm_wr32(%struct.nvkm_device* %23, i32 4228, i64 %24)
  %26 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %27 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i64, i64* %8, align 8
  ret i64 %30
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

declare dso_local i64 @nvkm_rd32(%struct.nvkm_device*, i64) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
