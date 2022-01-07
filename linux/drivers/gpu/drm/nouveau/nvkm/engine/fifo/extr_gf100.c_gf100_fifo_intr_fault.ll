; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gf100.c_gf100_fifo_intr_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_fifo = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }
%struct.nvkm_fault_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gf100_fifo_intr_fault(%struct.nvkm_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.nvkm_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_fault_data, align 8
  store %struct.nvkm_fifo* %0, %struct.nvkm_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %12 = getelementptr inbounds %struct.nvkm_fifo, %struct.nvkm_fifo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.nvkm_device*, %struct.nvkm_device** %14, align 8
  store %struct.nvkm_device* %15, %struct.nvkm_device** %5, align 8
  %16 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 16
  %19 = add nsw i32 10240, %18
  %20 = call i32 @nvkm_rd32(%struct.nvkm_device* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 16
  %24 = add nsw i32 10244, %23
  %25 = call i32 @nvkm_rd32(%struct.nvkm_device* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 10248, %28
  %30 = call i32 @nvkm_rd32(%struct.nvkm_device* %26, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.nvkm_device*, %struct.nvkm_device** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 16
  %34 = add nsw i32 10252, %33
  %35 = call i32 @nvkm_rd32(%struct.nvkm_device* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 12
  %38 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = shl i32 %39, 32
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %40, %41
  %43 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 1
  store i32 %42, i32* %43, align 4
  %44 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %4, align 4
  %46 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 520093696
  %50 = ashr i32 %49, 24
  %51 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 4
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %52, 7936
  %54 = ashr i32 %53, 8
  %55 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 5
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 128
  %58 = ashr i32 %57, 7
  %59 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 6
  store i32 %58, i32* %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 64
  %62 = ashr i32 %61, 6
  %63 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 7
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = and i32 %64, 15
  %66 = getelementptr inbounds %struct.nvkm_fault_data, %struct.nvkm_fault_data* %10, i32 0, i32 8
  store i32 %65, i32* %66, align 8
  %67 = load %struct.nvkm_fifo*, %struct.nvkm_fifo** %3, align 8
  %68 = call i32 @nvkm_fifo_fault(%struct.nvkm_fifo* %67, %struct.nvkm_fault_data* %10)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_fifo_fault(%struct.nvkm_fifo*, %struct.nvkm_fault_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
