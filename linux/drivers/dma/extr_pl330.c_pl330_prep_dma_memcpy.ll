; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_pl330.c_pl330_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i64 }
%struct.dma_chan = type { i32 }
%struct.dma_pl330_desc = type { i64, %struct.dma_async_tx_descriptor, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.dma_pl330_chan = type { %struct.pl330_dmac* }
%struct.pl330_dmac = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DMA_MEM_TO_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i64, i64, i64)* @pl330_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @pl330_prep_dma_memcpy(%struct.dma_chan* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_pl330_desc*, align 8
  %13 = alloca %struct.dma_pl330_chan*, align 8
  %14 = alloca %struct.pl330_dmac*, align 8
  %15 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %17 = call %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan* %16)
  store %struct.dma_pl330_chan* %17, %struct.dma_pl330_chan** %13, align 8
  %18 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %13, align 8
  %19 = icmp ne %struct.dma_pl330_chan* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %5
  %25 = phi i1 [ true, %5 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %120

30:                                               ; preds = %24
  %31 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %13, align 8
  %32 = getelementptr inbounds %struct.dma_pl330_chan, %struct.dma_pl330_chan* %31, i32 0, i32 0
  %33 = load %struct.pl330_dmac*, %struct.pl330_dmac** %32, align 8
  store %struct.pl330_dmac* %33, %struct.pl330_dmac** %14, align 8
  %34 = load %struct.dma_pl330_chan*, %struct.dma_pl330_chan** %13, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call %struct.dma_pl330_desc* @__pl330_prep_dma_memcpy(%struct.dma_pl330_chan* %34, i64 %35, i64 %36, i64 %37)
  store %struct.dma_pl330_desc* %38, %struct.dma_pl330_desc** %12, align 8
  %39 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %40 = icmp ne %struct.dma_pl330_desc* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %30
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %120

42:                                               ; preds = %30
  %43 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %44 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %47 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @DMA_MEM_TO_MEM, align 4
  %50 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %51 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pl330_dmac*, %struct.pl330_dmac** %14, align 8
  %53 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sdiv i32 %55, 8
  store i32 %56, i32* %15, align 4
  br label %57

57:                                               ; preds = %68, %42
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %8, align 8
  %60 = or i64 %58, %59
  %61 = load i64, i64* %10, align 8
  %62 = or i64 %60, %61
  %63 = load i32, i32* %15, align 4
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = and i64 %62, %65
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i32, i32* %15, align 4
  %70 = sdiv i32 %69, 2
  store i32 %70, i32* %15, align 4
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %73 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i32 0, i32* %74, align 8
  br label %75

75:                                               ; preds = %83, %71
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %78 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = shl i32 1, %80
  %82 = icmp ne i32 %76, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %85 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %75

89:                                               ; preds = %75
  %90 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %91 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = mul nsw i32 %93, 8
  %95 = load %struct.pl330_dmac*, %struct.pl330_dmac** %14, align 8
  %96 = getelementptr inbounds %struct.pl330_dmac, %struct.pl330_dmac* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %94, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %102 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %106 = load i64, i64* %10, align 8
  %107 = call i32 @get_burst_len(%struct.dma_pl330_desc* %105, i64 %106)
  %108 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %109 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %113 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %112, i32 0, i32 0
  store i64 %111, i64* %113, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %116 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %116, i32 0, i32 0
  store i64 %114, i64* %117, align 8
  %118 = load %struct.dma_pl330_desc*, %struct.dma_pl330_desc** %12, align 8
  %119 = getelementptr inbounds %struct.dma_pl330_desc, %struct.dma_pl330_desc* %118, i32 0, i32 1
  store %struct.dma_async_tx_descriptor* %119, %struct.dma_async_tx_descriptor** %6, align 8
  br label %120

120:                                              ; preds = %104, %41, %29
  %121 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %121
}

declare dso_local %struct.dma_pl330_chan* @to_pchan(%struct.dma_chan*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dma_pl330_desc* @__pl330_prep_dma_memcpy(%struct.dma_pl330_chan*, i64, i64, i64) #1

declare dso_local i32 @get_burst_len(%struct.dma_pl330_desc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
