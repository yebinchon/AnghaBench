; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_pbdma_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/fifo/extr_gk104.c_gk104_fifo_intr_pbdma_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gk104_fifo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.nvkm_subdev }
%struct.nvkm_subdev = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@gk104_fifo_pbdma_intr_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"PBDMA%d: %08x [%s] ch %d %08x %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gk104_fifo*, i32)* @gk104_fifo_intr_pbdma_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gk104_fifo_intr_pbdma_1(%struct.gk104_fifo* %0, i32 %1) #0 {
  %3 = alloca %struct.gk104_fifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvkm_subdev*, align 8
  %6 = alloca %struct.nvkm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  store %struct.gk104_fifo* %0, %struct.gk104_fifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.gk104_fifo*, %struct.gk104_fifo** %3, align 8
  %12 = getelementptr inbounds %struct.gk104_fifo, %struct.gk104_fifo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.nvkm_subdev* %14, %struct.nvkm_subdev** %5, align 8
  %15 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %16 = getelementptr inbounds %struct.nvkm_subdev, %struct.nvkm_subdev* %15, i32 0, i32 0
  %17 = load %struct.nvkm_device*, %struct.nvkm_device** %16, align 8
  store %struct.nvkm_device* %17, %struct.nvkm_device** %6, align 8
  %18 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %19 = load i32, i32* %4, align 4
  %20 = mul nsw i32 %19, 8192
  %21 = add nsw i32 262476, %20
  %22 = call i32 @nvkm_rd32(%struct.nvkm_device* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 8192
  %26 = add nsw i32 262472, %25
  %27 = call i32 @nvkm_rd32(%struct.nvkm_device* %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = mul nsw i32 %31, 8192
  %33 = add nsw i32 262432, %32
  %34 = call i32 @nvkm_rd32(%struct.nvkm_device* %30, i32 %33)
  %35 = and i32 %34, 4095
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %59

38:                                               ; preds = %2
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %40 = load i32, i32* @gk104_fifo_pbdma_intr_1, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @nvkm_snprintbf(i8* %39, i32 128, i32 %40, i32 %41)
  %43 = load %struct.nvkm_subdev*, %struct.nvkm_subdev** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %8, align 4
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %49 = load i32, i32* %4, align 4
  %50 = mul nsw i32 %49, 8192
  %51 = add nsw i32 262480, %50
  %52 = call i32 @nvkm_rd32(%struct.nvkm_device* %48, i32 %51)
  %53 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = mul nsw i32 %54, 8192
  %56 = add nsw i32 262484, %55
  %57 = call i32 @nvkm_rd32(%struct.nvkm_device* %53, i32 %56)
  %58 = call i32 @nvkm_error(%struct.nvkm_subdev* %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45, i8* %46, i32 %47, i32 %52, i32 %57)
  br label %59

59:                                               ; preds = %38, %2
  %60 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  %61 = load i32, i32* %4, align 4
  %62 = mul nsw i32 %61, 8192
  %63 = add nsw i32 262472, %62
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @nvkm_wr32(%struct.nvkm_device* %60, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @nvkm_rd32(%struct.nvkm_device*, i32) #1

declare dso_local i32 @nvkm_snprintbf(i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_error(%struct.nvkm_subdev*, i8*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @nvkm_wr32(%struct.nvkm_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
