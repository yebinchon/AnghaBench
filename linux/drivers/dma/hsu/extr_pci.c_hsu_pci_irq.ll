; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_pci.c_hsu_pci_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/hsu/extr_pci.c_hsu_pci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hsu_dma_chip = type { %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i16 }
%struct.pci_dev = type { i64 }

@PCI_DEVICE_ID_INTEL_MRFLD_HSU_DMA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@HSU_PCI_DMAISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hsu_pci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsu_pci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hsu_dma_chip*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hsu_dma_chip*
  store %struct.hsu_dma_chip* %14, %struct.hsu_dma_chip** %6, align 8
  %15 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %16 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.pci_dev* @to_pci_dev(i32 %17)
  store %struct.pci_dev* %18, %struct.pci_dev** %7, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PCI_DEVICE_ID_INTEL_MRFLD_HSU_DMA, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %3, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %28 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HSU_PCI_DMAISR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %8, align 4
  store i16 0, i16* %10, align 2
  br label %33

33:                                               ; preds = %71, %26
  %34 = load i16, i16* %10, align 2
  %35 = zext i16 %34 to i32
  %36 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %37 = getelementptr inbounds %struct.hsu_dma_chip, %struct.hsu_dma_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp slt i32 %35, %41
  br i1 %42, label %43, label %74

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %44, 1
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %49 = load i16, i16* %10, align 2
  %50 = call i32 @hsu_dma_get_status(%struct.hsu_dma_chip* %48, i16 zeroext %49, i32* %9)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %67

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load %struct.hsu_dma_chip*, %struct.hsu_dma_chip** %6, align 8
  %61 = load i16, i16* %10, align 2
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @hsu_dma_do_irq(%struct.hsu_dma_chip* %60, i16 zeroext %61, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %59, %56
  br label %67

67:                                               ; preds = %66, %53
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %8, align 4
  %70 = ashr i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i16, i16* %10, align 2
  %73 = add i16 %72, 1
  store i16 %73, i16* %10, align 2
  br label %33

74:                                               ; preds = %33
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @IRQ_RETVAL(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %24
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @hsu_dma_get_status(%struct.hsu_dma_chip*, i16 zeroext, i32*) #1

declare dso_local i32 @hsu_dma_do_irq(%struct.hsu_dma_chip*, i16 zeroext, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
