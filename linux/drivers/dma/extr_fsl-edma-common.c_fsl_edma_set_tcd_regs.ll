; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_set_tcd_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_set_tcd_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { %struct.TYPE_5__, %struct.fsl_edma_engine* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fsl_edma_engine = type { %struct.edma_regs }
%struct.edma_regs = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fsl_edma_hw_tcd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_edma_chan*, %struct.fsl_edma_hw_tcd*)* @fsl_edma_set_tcd_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_edma_set_tcd_regs(%struct.fsl_edma_chan* %0, %struct.fsl_edma_hw_tcd* %1) #0 {
  %3 = alloca %struct.fsl_edma_chan*, align 8
  %4 = alloca %struct.fsl_edma_hw_tcd*, align 8
  %5 = alloca %struct.fsl_edma_engine*, align 8
  %6 = alloca %struct.edma_regs*, align 8
  %7 = alloca i64, align 8
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %3, align 8
  store %struct.fsl_edma_hw_tcd* %1, %struct.fsl_edma_hw_tcd** %4, align 8
  %8 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %8, i32 0, i32 1
  %10 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %9, align 8
  store %struct.fsl_edma_engine* %10, %struct.fsl_edma_engine** %5, align 8
  %11 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %11, i32 0, i32 1
  %13 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %12, align 8
  %14 = getelementptr inbounds %struct.fsl_edma_engine, %struct.fsl_edma_engine* %13, i32 0, i32 0
  store %struct.edma_regs* %14, %struct.edma_regs** %6, align 8
  %15 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %21 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %22 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @edma_writew(%struct.fsl_edma_engine* %20, i32 0, i32* %26)
  %28 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %29 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %30 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %34 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 10
  %39 = call i32 @edma_writel(%struct.fsl_edma_engine* %28, i32 %32, i32* %38)
  %40 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %41 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %42 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %46 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 9
  %51 = call i32 @edma_writel(%struct.fsl_edma_engine* %40, i32 %44, i32* %50)
  %52 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %53 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %54 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le16_to_cpu(i32 %55)
  %57 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %58 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 8
  %63 = call i32 @edma_writew(%struct.fsl_edma_engine* %52, i32 %56, i32* %62)
  %64 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %65 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %66 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @le16_to_cpu(i32 %67)
  %69 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %70 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 7
  %75 = call i32 @edma_writew(%struct.fsl_edma_engine* %64, i32 %68, i32* %74)
  %76 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %77 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %78 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le32_to_cpu(i32 %79)
  %81 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %82 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 6
  %87 = call i32 @edma_writel(%struct.fsl_edma_engine* %76, i32 %80, i32* %86)
  %88 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %89 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %90 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @le32_to_cpu(i32 %91)
  %93 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %94 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = call i32 @edma_writel(%struct.fsl_edma_engine* %88, i32 %92, i32* %98)
  %100 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %101 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %102 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @le16_to_cpu(i32 %103)
  %105 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %106 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %105, i32 0, i32 0
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = load i64, i64* %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 4
  %111 = call i32 @edma_writew(%struct.fsl_edma_engine* %100, i32 %104, i32* %110)
  %112 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %113 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %114 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @le16_to_cpu(i32 %115)
  %117 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %118 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %117, i32 0, i32 0
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = call i32 @edma_writew(%struct.fsl_edma_engine* %112, i32 %116, i32* %122)
  %124 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %125 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %126 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le16_to_cpu(i32 %127)
  %129 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %130 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = call i32 @edma_writew(%struct.fsl_edma_engine* %124, i32 %128, i32* %134)
  %136 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %137 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %138 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @le32_to_cpu(i32 %139)
  %141 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %142 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %141, i32 0, i32 0
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = load i64, i64* %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = call i32 @edma_writel(%struct.fsl_edma_engine* %136, i32 %140, i32* %146)
  %148 = load %struct.fsl_edma_engine*, %struct.fsl_edma_engine** %5, align 8
  %149 = load %struct.fsl_edma_hw_tcd*, %struct.fsl_edma_hw_tcd** %4, align 8
  %150 = getelementptr inbounds %struct.fsl_edma_hw_tcd, %struct.fsl_edma_hw_tcd* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @le16_to_cpu(i32 %151)
  %153 = load %struct.edma_regs*, %struct.edma_regs** %6, align 8
  %154 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = call i32 @edma_writew(%struct.fsl_edma_engine* %148, i32 %152, i32* %158)
  ret void
}

declare dso_local i32 @edma_writew(%struct.fsl_edma_engine*, i32, i32*) #1

declare dso_local i32 @edma_writel(%struct.fsl_edma_engine*, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
