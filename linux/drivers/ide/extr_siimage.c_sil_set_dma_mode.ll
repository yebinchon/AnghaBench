; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_sil_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_siimage.c_sil_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pci_dev = type { i32 }

@sil_set_dma_mode.ultra6 = internal constant [7 x i32] [i32 15, i32 11, i32 7, i32 5, i32 3, i32 2, i32 1], align 16
@sil_set_dma_mode.ultra5 = internal constant [6 x i32] [i32 12, i32 7, i32 5, i32 4, i32 2, i32 1], align 16
@sil_set_dma_mode.dma = internal constant [3 x i32] [i32 8712, i32 4290, i32 4289], align 4
@IDE_HFLAG_MMIO = common dso_local global i32 0, align 4
@XFER_UDMA_0 = common dso_local global i32 0, align 4
@XFER_MW_DMA_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @sil_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sil_set_dma_mode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IDE_HFLAG_MMIO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 1, i32 0
  store i32 %35, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %2
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 244, i32 132
  br label %50

45:                                               ; preds = %2
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 180, i32 128
  br label %50

50:                                               ; preds = %45, %40
  %51 = phi i32 [ %44, %40 ], [ %49, %45 ]
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %53 = call i64 @siimage_seldev(%struct.TYPE_8__* %52, i32 8)
  store i64 %53, i64* %14, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %55 = call i64 @siimage_seldev(%struct.TYPE_8__* %54, i32 12)
  store i64 %55, i64* %15, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 74, i32 138
  %65 = sext i32 %64 to i64
  %66 = add i64 %60, %65
  %67 = call i32 @sil_ioread8(%struct.pci_dev* %59, i64 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %69, %71
  %73 = call i32 @sil_ioread8(%struct.pci_dev* %68, i64 %72)
  store i32 %73, i32* %9, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = load i64, i64* %14, align 8
  %76 = call i32 @sil_ioread16(%struct.pci_dev* %74, i64 %75)
  store i32 %76, i32* %8, align 4
  %77 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %78 = load i64, i64* %15, align 8
  %79 = call i32 @sil_ioread16(%struct.pci_dev* %77, i64 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 48, i32 3
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, -64
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %12, align 4
  %90 = and i32 %89, 48
  %91 = icmp eq i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 0, i32 1
  store i32 %93, i32* %12, align 4
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %95 = call i64 @is_sata(%struct.TYPE_7__* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %50
  br label %100

98:                                               ; preds = %50
  %99 = load i32, i32* %12, align 4
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i32 [ 1, %97 ], [ %99, %98 ]
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* @XFER_UDMA_0, align 4
  %104 = icmp sge i32 %102, %103
  br i1 %104, label %105, label %133

105:                                              ; preds = %100
  %106 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sil_set_dma_mode.dma, i64 0, i64 2), align 4
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %105
  %110 = load i32, i32* %16, align 4
  %111 = load i32, i32* @XFER_UDMA_0, align 4
  %112 = sub nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [7 x i32], [7 x i32]* @sil_set_dma_mode.ultra6, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  br label %123

116:                                              ; preds = %105
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @XFER_UDMA_0, align 4
  %119 = sub nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [6 x i32], [6 x i32]* @sil_set_dma_mode.ultra5, i64 0, i64 %120
  %122 = load i32, i32* %121, align 4
  br label %123

123:                                              ; preds = %116, %109
  %124 = phi i32 [ %115, %109 ], [ %122, %116 ]
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i32 48, i32 3
  %131 = load i32, i32* %9, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %9, align 4
  br label %146

133:                                              ; preds = %100
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @XFER_MW_DMA_0, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* @sil_set_dma_mode.dma, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 32, i32 2
  %144 = load i32, i32* %9, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %9, align 4
  br label %146

146:                                              ; preds = %133, %123
  %147 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %148 = load i32, i32* %9, align 4
  %149 = load i64, i64* %6, align 8
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = add i64 %149, %151
  %153 = call i32 @sil_iowrite8(%struct.pci_dev* %147, i32 %148, i64 %152)
  %154 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i64, i64* %14, align 8
  %157 = call i32 @sil_iowrite16(%struct.pci_dev* %154, i32 %155, i64 %156)
  %158 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i64, i64* %15, align 8
  %161 = call i32 @sil_iowrite16(%struct.pci_dev* %158, i32 %159, i64 %160)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i64 @siimage_seldev(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @sil_ioread8(%struct.pci_dev*, i64) #1

declare dso_local i32 @sil_ioread16(%struct.pci_dev*, i64) #1

declare dso_local i64 @is_sata(%struct.TYPE_7__*) #1

declare dso_local i32 @sil_iowrite8(%struct.pci_dev*, i32, i64) #1

declare dso_local i32 @sil_iowrite16(%struct.pci_dev*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
