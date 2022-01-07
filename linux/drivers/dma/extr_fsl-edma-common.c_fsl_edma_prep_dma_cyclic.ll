; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_fsl-edma-common.c_fsl_edma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.fsl_edma_chan = type { i64, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.fsl_edma_desc = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dma_async_tx_descriptor* @fsl_edma_prep_dma_cyclic(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.fsl_edma_chan*, align 8
  %15 = alloca %struct.fsl_edma_desc*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %26 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %27 = call %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan* %26)
  store %struct.fsl_edma_chan* %27, %struct.fsl_edma_chan** %14, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i32 @is_slave_direction(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %176

32:                                               ; preds = %6
  %33 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @fsl_edma_prep_slave_dma(%struct.fsl_edma_chan* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %176

38:                                               ; preds = %32
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = udiv i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %17, align 4
  %43 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call %struct.fsl_edma_desc* @fsl_edma_alloc_desc(%struct.fsl_edma_chan* %43, i32 %44)
  store %struct.fsl_edma_desc* %45, %struct.fsl_edma_desc** %15, align 8
  %46 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %47 = icmp ne %struct.fsl_edma_desc* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %38
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %176

49:                                               ; preds = %38
  %50 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %51 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %54 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %16, align 8
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %49
  %60 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %61 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @fsl_edma_get_tcd_attr(i64 %63)
  %65 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %66 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  %67 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %68 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %72 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = mul i64 %70, %74
  store i64 %75, i64* %22, align 8
  br label %93

76:                                               ; preds = %49
  %77 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %78 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @fsl_edma_get_tcd_attr(i64 %80)
  %82 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %83 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %85 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %89 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = mul i64 %87, %91
  store i64 %92, i64* %22, align 8
  br label %93

93:                                               ; preds = %76, %59
  %94 = load i64, i64* %11, align 8
  %95 = load i64, i64* %22, align 8
  %96 = udiv i64 %94, %95
  store i64 %96, i64* %25, align 8
  store i32 0, i32* %18, align 4
  br label %97

97:                                               ; preds = %166, %93
  %98 = load i32, i32* %18, align 4
  %99 = load i32, i32* %17, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %169

101:                                              ; preds = %97
  %102 = load i64, i64* %16, align 8
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %10, align 8
  %105 = add i64 %103, %104
  %106 = icmp uge i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i64, i64* %9, align 8
  store i64 %108, i64* %16, align 8
  br label %109

109:                                              ; preds = %107, %101
  %110 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %111 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = load i32, i32* %18, align 4
  %114 = add nsw i32 %113, 1
  %115 = load i32, i32* %17, align 4
  %116 = srem i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %21, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %133

124:                                              ; preds = %109
  %125 = load i64, i64* %16, align 8
  store i64 %125, i64* %19, align 8
  %126 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %127 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %20, align 8
  %129 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %130 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %23, align 8
  store i64 0, i64* %24, align 8
  br label %142

133:                                              ; preds = %109
  %134 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %135 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  store i64 %136, i64* %19, align 8
  %137 = load i64, i64* %16, align 8
  store i64 %137, i64* %20, align 8
  store i64 0, i64* %23, align 8
  %138 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %139 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  store i64 %141, i64* %24, align 8
  br label %142

142:                                              ; preds = %133, %124
  %143 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %144 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %143, i32 0, i32 3
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = load i32, i32* %18, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %19, align 8
  %152 = load i64, i64* %20, align 8
  %153 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %154 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  %156 = load i64, i64* %23, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %25, align 8
  %159 = load i64, i64* %25, align 8
  %160 = load i64, i64* %24, align 8
  %161 = load i64, i64* %21, align 8
  %162 = call i32 @fsl_edma_fill_tcd(i32 %150, i64 %151, i64 %152, i8* %155, i64 %156, i64 %157, i32 0, i64 %158, i64 %159, i64 %160, i64 %161, i32 1, i32 0, i32 1)
  %163 = load i64, i64* %11, align 8
  %164 = load i64, i64* %16, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %16, align 8
  br label %166

166:                                              ; preds = %142
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %97

169:                                              ; preds = %97
  %170 = load %struct.fsl_edma_chan*, %struct.fsl_edma_chan** %14, align 8
  %171 = getelementptr inbounds %struct.fsl_edma_chan, %struct.fsl_edma_chan* %170, i32 0, i32 1
  %172 = load %struct.fsl_edma_desc*, %struct.fsl_edma_desc** %15, align 8
  %173 = getelementptr inbounds %struct.fsl_edma_desc, %struct.fsl_edma_desc* %172, i32 0, i32 2
  %174 = load i64, i64* %13, align 8
  %175 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %171, i32* %173, i64 %174)
  store %struct.dma_async_tx_descriptor* %175, %struct.dma_async_tx_descriptor** %7, align 8
  br label %176

176:                                              ; preds = %169, %48, %37, %31
  %177 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %177
}

declare dso_local %struct.fsl_edma_chan* @to_fsl_edma_chan(%struct.dma_chan*) #1

declare dso_local i32 @is_slave_direction(i32) #1

declare dso_local i32 @fsl_edma_prep_slave_dma(%struct.fsl_edma_chan*, i32) #1

declare dso_local %struct.fsl_edma_desc* @fsl_edma_alloc_desc(%struct.fsl_edma_chan*, i32) #1

declare dso_local i8* @fsl_edma_get_tcd_attr(i64) #1

declare dso_local i32 @fsl_edma_fill_tcd(i32, i64, i64, i8*, i64, i64, i32, i64, i64, i64, i64, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
