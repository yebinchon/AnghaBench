; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_runlist_update_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_nv50.c_nv50_fifo_runlist_update_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_fifo = type { i64, %struct.TYPE_4__, %struct.nvkm_memory** }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_memory = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nv50_fifo*)* @nv50_fifo_runlist_update_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_fifo_runlist_update_locked(%struct.nv50_fifo* %0) #0 {
  %2 = alloca %struct.nv50_fifo*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca %struct.nvkm_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nv50_fifo* %0, %struct.nv50_fifo** %2, align 8
  %7 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %8 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.nvkm_device*, %struct.nvkm_device** %11, align 8
  store %struct.nvkm_device* %12, %struct.nvkm_device** %3, align 8
  %13 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %14 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %13, i32 0, i32 2
  %15 = load %struct.nvkm_memory**, %struct.nvkm_memory*** %14, align 8
  %16 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %17 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.nvkm_memory*, %struct.nvkm_memory** %15, i64 %18
  %20 = load %struct.nvkm_memory*, %struct.nvkm_memory** %19, align 8
  store %struct.nvkm_memory* %20, %struct.nvkm_memory** %4, align 8
  %21 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %22 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %29 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %31 = call i32 @nvkm_kmap(%struct.nvkm_memory* %30)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %55, %1
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.nv50_fifo*, %struct.nv50_fifo** %2, align 8
  %35 = getelementptr inbounds %struct.nv50_fifo, %struct.nv50_fifo* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %33, %37
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 9728, %42
  %44 = call i32 @nvkm_rd32(%struct.nvkm_device* %40, i32 %43)
  %45 = and i32 %44, -2147483648
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  %51 = mul nsw i32 %49, 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @nvkm_wo32(%struct.nvkm_memory* %48, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %39
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %32

58:                                               ; preds = %32
  %59 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %60 = call i32 @nvkm_done(%struct.nvkm_memory* %59)
  %61 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %62 = load %struct.nvkm_memory*, %struct.nvkm_memory** %4, align 8
  %63 = call i32 @nvkm_memory_addr(%struct.nvkm_memory* %62)
  %64 = ashr i32 %63, 12
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %61, i32 13044, i32 %64)
  %66 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @nvkm_wr32(%struct.nvkm_device* %66, i32 13036, i32 %67)
  %69 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %70 = call i32 @nvkm_wr32(%struct.nvkm_device* %69, i32 9472, i32 257)
  ret void
}

declare dso_local i32 @nvkm_kmap(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_wo32(%struct.nvkm_memory*, i32, i32) #1

declare dso_local i32 @nvkm_done(%struct.nvkm_memory*) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

declare dso_local i32 @nvkm_memory_addr(%struct.nvkm_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
