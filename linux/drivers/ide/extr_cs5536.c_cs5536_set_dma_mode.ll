; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_cs5536.c_cs5536_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_cs5536.c_cs5536_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@cs5536_set_dma_mode.udma_timings = internal constant [6 x i32] [i32 194, i32 193, i32 192, i32 196, i32 197, i32 198], align 16
@cs5536_set_dma_mode.mwdma_timings = internal constant [3 x i32] [i32 103, i32 33, i32 32], align 4
@IDE_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_D0_SHIFT = common dso_local global i32 0, align 4
@ETC = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@IDE_DRV_MASK = common dso_local global i32 0, align 4
@IDE_ETC_UDMA_MASK = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @cs5536_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_set_dma_mode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.pci_dev* @to_pci_dev(i32 %12)
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IDE_D1_SHIFT, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @IDE_D0_SHIFT, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %6, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = call i64 @ide_get_drivedata(%struct.TYPE_8__* %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %31 = load i32, i32* @ETC, align 4
  %32 = call i32 @cs5536_read(%struct.pci_dev* %30, i32 %31, i32* %8)
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @XFER_UDMA_0, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %23
  %37 = load i32, i32* @IDE_DRV_MASK, align 4
  %38 = load i32, i32* %6, align 4
  %39 = shl i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @XFER_UDMA_0, align 4
  %45 = sub nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* @cs5536_set_dma_mode.udma_timings, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = shl i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  br label %78

53:                                               ; preds = %23
  %54 = load i32, i32* @IDE_ETC_UDMA_MASK, align 4
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @IDE_DRV_MASK, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @XFER_MW_DMA_0, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* @cs5536_set_dma_mode.mwdma_timings, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = sext i32 %70 to i64
  %72 = load i64, i64* %7, align 8
  %73 = or i64 %72, %71
  store i64 %73, i64* %7, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @ide_set_drivedata(%struct.TYPE_8__* %74, i8* %76)
  br label %78

78:                                               ; preds = %53, %36
  %79 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %80 = load i32, i32* @ETC, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @cs5536_write(%struct.pci_dev* %79, i32 %80, i32 %81)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @ide_get_drivedata(%struct.TYPE_8__*) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @ide_set_drivedata(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
