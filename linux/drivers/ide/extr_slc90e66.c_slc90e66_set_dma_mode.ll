; ModuleID = '/home/carl/AnghaBench/linux/drivers/ide/extr_slc90e66.c_slc90e66_set_dma_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ide/extr_slc90e66.c_slc90e66_set_dma_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.pci_dev = type { i32 }

@XFER_UDMA_0 = common dso_local global i64 0, align 8
@__const.slc90e66_set_dma_mode.mwdma_to_pio = private unnamed_addr constant [3 x i64] [i64 0, i64 3, i64 4], align 16
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@XFER_PIO_2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_8__*)* @slc90e66_set_dma_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slc90e66_set_dma_mode(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1) #0 {
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
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [3 x i64], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call %struct.pci_dev* @to_pci_dev(i32 %19)
  store %struct.pci_dev* %20, %struct.pci_dev** %5, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 66, i32 64
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 4
  %32 = shl i32 7, %31
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %41 = load i64, i64* %6, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @pci_read_config_word(%struct.pci_dev* %40, i32 %42, i32* %11)
  %44 = load i32, i32* %11, align 4
  %45 = and i32 %44, 16384
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  store i32 %48, i32* %7, align 4
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = call i32 @pci_read_config_word(%struct.pci_dev* %49, i32 68, i32* %12)
  %51 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %52 = call i32 @pci_read_config_word(%struct.pci_dev* %51, i32 72, i32* %13)
  %53 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %54 = call i32 @pci_read_config_word(%struct.pci_dev* %53, i32 74, i32* %14)
  %55 = load i64, i64* %15, align 8
  %56 = load i64, i64* @XFER_UDMA_0, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %2
  %59 = load i64, i64* %15, align 8
  %60 = load i64, i64* @XFER_UDMA_0, align 8
  %61 = sub nsw i64 %59, %60
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %64, 4
  %66 = zext i32 %65 to i64
  %67 = shl i64 %61, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %58
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %10, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @pci_write_config_word(%struct.pci_dev* %74, i32 72, i32 %77)
  br label %79

79:                                               ; preds = %73, %58
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %8, align 4
  %82 = and i32 %80, %81
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %8, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @pci_write_config_word(%struct.pci_dev* %86, i32 74, i32 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %93 = call i32 @pci_read_config_word(%struct.pci_dev* %92, i32 74, i32* %14)
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @pci_write_config_word(%struct.pci_dev* %94, i32 74, i32 %97)
  br label %99

99:                                               ; preds = %85, %79
  br label %147

100:                                              ; preds = %2
  %101 = bitcast [3 x i64]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %101, i8* align 16 bitcast ([3 x i64]* @__const.slc90e66_set_dma_mode.mwdma_to_pio to i8*), i64 24, i1 false)
  %102 = load i32, i32* %13, align 4
  %103 = load i32, i32* %10, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %10, align 4
  %110 = xor i32 %109, -1
  %111 = and i32 %108, %110
  %112 = call i32 @pci_write_config_word(%struct.pci_dev* %107, i32 72, i32 %111)
  br label %113

113:                                              ; preds = %106, %100
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* %8, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %8, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = call i32 @pci_write_config_word(%struct.pci_dev* %119, i32 74, i32 %123)
  br label %125

125:                                              ; preds = %118, %113
  %126 = load i64, i64* %15, align 8
  %127 = load i64, i64* @XFER_MW_DMA_0, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %125
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* @XFER_MW_DMA_0, align 8
  %132 = sub nsw i64 %130, %131
  %133 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 %132
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @XFER_PIO_0, align 8
  %136 = add nsw i64 %134, %135
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  br label %143

139:                                              ; preds = %125
  %140 = load i64, i64* @XFER_PIO_2, align 8
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %129
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = call i32 @slc90e66_set_pio_mode(%struct.TYPE_7__* %144, %struct.TYPE_8__* %145)
  br label %147

147:                                              ; preds = %143, %99
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @slc90e66_set_pio_mode(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
