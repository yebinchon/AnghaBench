; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_fire_dmablit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_dmablit.c_via_fire_dmablit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i64 }
%struct.TYPE_3__ = type { i32 }

@VIA_PCI_DMA_MAR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_DAR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_CSR0 = common dso_local global i64 0, align 8
@VIA_DMA_CSR_DD = common dso_local global i32 0, align 4
@VIA_DMA_CSR_TD = common dso_local global i32 0, align 4
@VIA_DMA_CSR_DE = common dso_local global i32 0, align 4
@VIA_PCI_DMA_MR0 = common dso_local global i64 0, align 8
@VIA_DMA_MR_CM = common dso_local global i32 0, align 4
@VIA_DMA_MR_TDIE = common dso_local global i32 0, align 4
@VIA_PCI_DMA_BCR0 = common dso_local global i64 0, align 8
@VIA_PCI_DMA_DPR0 = common dso_local global i64 0, align 8
@VIA_DMA_CSR_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_device*, %struct.TYPE_3__*, i32)* @via_fire_dmablit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @via_fire_dmablit(%struct.drm_device* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i64, i64* @VIA_PCI_DMA_MAR0, align 8
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 16
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @via_write(i32* %12, i64 %17, i32 0)
  %19 = load i32*, i32** %7, align 8
  %20 = load i64, i64* @VIA_PCI_DMA_DAR0, align 8
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %21, 16
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %20, %23
  %25 = call i32 @via_write(i32* %19, i64 %24, i32 0)
  %26 = load i32*, i32** %7, align 8
  %27 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %27, %30
  %32 = load i32, i32* @VIA_DMA_CSR_DD, align 4
  %33 = load i32, i32* @VIA_DMA_CSR_TD, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VIA_DMA_CSR_DE, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @via_write(i32* %26, i64 %31, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* @VIA_PCI_DMA_MR0, align 8
  %40 = load i32, i32* %6, align 4
  %41 = mul nsw i32 %40, 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %39, %42
  %44 = load i32, i32* @VIA_DMA_MR_CM, align 4
  %45 = load i32, i32* @VIA_DMA_MR_TDIE, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @via_write(i32* %38, i64 %43, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i64, i64* @VIA_PCI_DMA_BCR0, align 8
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, 16
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = call i32 @via_write(i32* %48, i64 %53, i32 0)
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* @VIA_PCI_DMA_DPR0, align 8
  %57 = load i32, i32* %6, align 4
  %58 = mul nsw i32 %57, 16
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @via_write(i32* %55, i64 %60, i32 %63)
  %65 = call i32 (...) @wmb()
  %66 = load i32*, i32** %7, align 8
  %67 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  %72 = load i32, i32* @VIA_DMA_CSR_DE, align 4
  %73 = load i32, i32* @VIA_DMA_CSR_TS, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @via_write(i32* %66, i64 %71, i32 %74)
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* @VIA_PCI_DMA_CSR0, align 8
  %78 = load i32, i32* %6, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  %82 = call i32 @via_read(i32* %76, i64 %81)
  ret void
}

declare dso_local i32 @via_write(i32*, i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @via_read(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
