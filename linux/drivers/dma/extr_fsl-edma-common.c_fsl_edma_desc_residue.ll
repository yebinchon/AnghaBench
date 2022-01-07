; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_desc_residue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_desc_residue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_edma_chan = type { %struct.fsl_edma_desc*, %struct.TYPE_12__*, %struct.TYPE_8__ }
%struct.fsl_edma_desc = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.edma_regs }
%struct.edma_regs = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.virt_dma_desc = type { i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fsl_edma_chan*, %struct.virt_dma_desc*, i32)* @fsl_edma_desc_residue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fsl_edma_desc_residue(%struct.fsl_edma_chan* %0, %struct.virt_dma_desc* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fsl_edma_chan*, align 8
  %6 = alloca %struct.virt_dma_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fsl_edma_desc*, align 8
  %9 = alloca %struct.edma_regs*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.fsl_edma_chan* %0, %struct.fsl_edma_chan** %5, align 8
  store %struct.virt_dma_desc* %1, %struct.virt_dma_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %18 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %17, i32 0, i32 0
  %19 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %18, align 8
  store %struct.fsl_edma_desc* %19, %struct.fsl_edma_desc** %8, align 8
  %20 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %21 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.edma_regs* %23, %struct.edma_regs** %9, align 8
  %24 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %25 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %30 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %14, align 8
  br label %32

32:                                               ; preds = %66, %3
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %35 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %34, i32 0, i32 0
  %36 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %35, align 8
  %37 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %33, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %32
  %41 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %42 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le32_to_cpu(i32 %50)
  %52 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %53 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = load i32, i32* %16, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le16_to_cpu(i32 %61)
  %63 = mul i64 %51, %62
  %64 = load i64, i64* %14, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %14, align 8
  br label %66

66:                                               ; preds = %40
  %67 = load i32, i32* %16, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %16, align 4
  br label %32

69:                                               ; preds = %32
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = load i64, i64* %14, align 8
  store i64 %73, i64* %4, align 8
  br label %187

74:                                               ; preds = %69
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %74
  %79 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %80 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %79, i32 0, i32 1
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %83 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %82, i32 0, i32 0
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = call i64 @edma_readl(%struct.TYPE_12__* %81, i32* %87)
  store i64 %88, i64* %12, align 8
  br label %100

89:                                               ; preds = %74
  %90 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %91 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %90, i32 0, i32 1
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %91, align 8
  %93 = load %struct.edma_regs*, %struct.edma_regs** %9, align 8
  %94 = getelementptr inbounds %struct.edma_regs, %struct.edma_regs* %93, i32 0, i32 0
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i64 @edma_readl(%struct.TYPE_12__* %92, i32* %98)
  store i64 %99, i64* %12, align 8
  br label %100

100:                                              ; preds = %89, %78
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %182, %100
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %5, align 8
  %104 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %103, i32 0, i32 0
  %105 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %104, align 8
  %106 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %102, %107
  br i1 %108, label %109, label %185

109:                                              ; preds = %101
  %110 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %111 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @le32_to_cpu(i32 %119)
  %121 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %122 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @le16_to_cpu(i32 %130)
  %132 = mul i64 %120, %131
  store i64 %132, i64* %15, align 8
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %148

136:                                              ; preds = %109
  %137 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %138 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %137, i32 0, i32 2
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = load i32, i32* %16, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i64 @le32_to_cpu(i32 %146)
  store i64 %147, i64* %13, align 8
  br label %160

148:                                              ; preds = %109
  %149 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %8, align 8
  %150 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %149, i32 0, i32 2
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i64 @le32_to_cpu(i32 %158)
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %148, %136
  %161 = load i64, i64* %15, align 8
  %162 = load i64, i64* %14, align 8
  %163 = sub i64 %162, %161
  store i64 %163, i64* %14, align 8
  %164 = load i64, i64* %12, align 8
  %165 = load i64, i64* %13, align 8
  %166 = icmp uge i64 %164, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %160
  %168 = load i64, i64* %12, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load i64, i64* %15, align 8
  %171 = add i64 %169, %170
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %181

173:                                              ; preds = %167
  %174 = load i64, i64* %13, align 8
  %175 = load i64, i64* %15, align 8
  %176 = add i64 %174, %175
  %177 = load i64, i64* %12, align 8
  %178 = sub i64 %176, %177
  %179 = load i64, i64* %14, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %14, align 8
  br label %185

181:                                              ; preds = %167, %160
  br label %182

182:                                              ; preds = %181
  %183 = load i32, i32* %16, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %16, align 4
  br label %101

185:                                              ; preds = %173, %101
  %186 = load i64, i64* %14, align 8
  store i64 %186, i64* %4, align 8
  br label %187

187:                                              ; preds = %185, %72
  %188 = load i64, i64* %4, align 8
  ret i64 %188
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @edma_readl(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
