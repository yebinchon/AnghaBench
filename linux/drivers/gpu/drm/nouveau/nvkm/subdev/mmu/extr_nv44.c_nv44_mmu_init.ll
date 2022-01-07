; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_nv44.c_nv44_mmu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_nv44.c_nv44_mmu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_mmu = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { %struct.nvkm_memory* }
%struct.nvkm_memory = type { i32 }
%struct.TYPE_8__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_mmu*)* @nv44_mmu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv44_mmu_init(%struct.nvkm_mmu* %0) #0 {
  %2 = alloca %struct.nvkm_mmu*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i32, align 4
  store %struct.nvkm_mmu* %0, %struct.nvkm_mmu** %2, align 8
  %6 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %7 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load %struct.nvkm_device*, %struct.nvkm_device** %8, align 8
  store %struct.nvkm_device* %9, %struct.nvkm_device** %3, align 8
  %10 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %11 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %16, i64 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.nvkm_memory*, %struct.nvkm_memory** %19, align 8
  store %struct.nvkm_memory* %20, %struct.nvkm_memory** %4, align 8
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 1049100)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %24 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %23)
  %25 = ashr i32 %24, 19
  %26 = add nsw i32 %25, 1
  %27 = shl i32 %26, 19
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %31 = call i32 @nvkm_wr32(%struct.nvkm_device* %30, i32 1050704, i32 -2147483648)
  %32 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %33 = load %struct.nvkm_mmu*, %struct.nvkm_mmu** %2, align 8
  %34 = getelementptr inbounds %struct.nvkm_mmu, %struct.nvkm_mmu* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @nvkm_wr32(%struct.nvkm_device* %32, i32 1050648, i32 %37)
  %39 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %40 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %41 = call i32 @nvkm_memory_size(%struct.nvkm_memory* %40)
  %42 = sdiv i32 %41, 4
  %43 = mul nsw i32 %42, 4096
  %44 = call i32 @nvkm_wr32(%struct.nvkm_device* %39, i32 1050628, i32 %43)
  %45 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %46 = call i32 @nvkm_wr32(%struct.nvkm_device* %45, i32 1050704, i32 32768)
  %47 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %48 = call i32 @nvkm_mask(%struct.nvkm_device* %47, i32 1048716, i32 512, i32 512)
  %49 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %50 = call i32 @nvkm_wr32(%struct.nvkm_device* %49, i32 1050656, i32 0)
  %51 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %52 = call i32 @nvkm_wr32(%struct.nvkm_device* %51, i32 1050668, i32 1)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %54 = load i32, i32* %5, align 4
  %55 = or i32 %54, 16
  %56 = call i32 @nvkm_wr32(%struct.nvkm_device* %53, i32 1050624, i32 %55)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_memory_addr(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_memory_size(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_mask(%struct.nvkm_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
