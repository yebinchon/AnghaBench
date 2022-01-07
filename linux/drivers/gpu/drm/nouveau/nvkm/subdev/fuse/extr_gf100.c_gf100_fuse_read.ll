; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fuse/extr_gf100.c_gf100_fuse_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/fuse/extr_gf100.c_gf100_fuse_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fuse = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nvkm_fuse*, i64)* @gf100_fuse_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gf100_fuse_read(%struct.nvkm_fuse* %0, i64 %1) #0 {
  %3 = alloca %struct.nvkm_fuse*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.nvkm_fuse* %0, %struct.nvkm_fuse** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %11 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.nvkm_device*, %struct.nvkm_device** %12, align 8
  store %struct.nvkm_device* %13, %struct.nvkm_device** %5, align 8
  %14 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %15 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %19 = call i64 @nvkm_mask(%struct.nvkm_device* %18, i32 140288, i32 2048, i32 2048)
  store i64 %19, i64* %7, align 8
  %20 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %21 = call i64 @nvkm_mask(%struct.nvkm_device* %20, i32 135168, i32 1, i32 1)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = add nsw i64 135424, %23
  %25 = call i64 @nvkm_rd32(%struct.nvkm_device* %22, i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @nvkm_wr32(%struct.nvkm_device* %26, i32 135168, i64 %27)
  %29 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %29, i32 140288, i64 %30)
  %32 = load %struct.nvkm_fuse*, %struct.nvkm_fuse** %3, align 8
  %33 = getelementptr inbounds %struct.nvkm_fuse, %struct.nvkm_fuse* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  %36 = load i64, i64* %9, align 8
  ret i64 %36
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
