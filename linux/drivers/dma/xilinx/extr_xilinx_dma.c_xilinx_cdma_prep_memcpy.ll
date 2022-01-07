; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_cdma_prep_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/xilinx/extr_xilinx_dma.c_xilinx_cdma_prep_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32, i32 }
%struct.dma_chan = type { i32 }
%struct.xilinx_dma_chan = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.xilinx_dma_tx_descriptor = type { %struct.dma_async_tx_descriptor, i32 }
%struct.xilinx_cdma_tx_segment = type { i32, i32, %struct.xilinx_cdma_desc_hw }
%struct.xilinx_cdma_desc_hw = type { i64, i32, i8*, i8*, i8*, i8* }

@xilinx_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i64)* @xilinx_cdma_prep_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @xilinx_cdma_prep_memcpy(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xilinx_dma_chan*, align 8
  %13 = alloca %struct.xilinx_dma_tx_descriptor*, align 8
  %14 = alloca %struct.xilinx_cdma_tx_segment*, align 8
  %15 = alloca %struct.xilinx_cdma_desc_hw*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %17 = call %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan* %16)
  store %struct.xilinx_dma_chan* %17, %struct.xilinx_dma_chan** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %23 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ugt i64 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

29:                                               ; preds = %20
  %30 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %31 = call %struct.xilinx_dma_tx_descriptor* @xilinx_dma_alloc_tx_descriptor(%struct.xilinx_dma_chan* %30)
  store %struct.xilinx_dma_tx_descriptor* %31, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %32 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %33 = icmp ne %struct.xilinx_dma_tx_descriptor* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

35:                                               ; preds = %29
  %36 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %37 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %36, i32 0, i32 0
  %38 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %39 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %38, i32 0, i32 1
  %40 = call i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor* %37, i32* %39)
  %41 = load i32, i32* @xilinx_dma_tx_submit, align 4
  %42 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %43 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %46 = call %struct.xilinx_cdma_tx_segment* @xilinx_cdma_alloc_tx_segment(%struct.xilinx_dma_chan* %45)
  store %struct.xilinx_cdma_tx_segment* %46, %struct.xilinx_cdma_tx_segment** %14, align 8
  %47 = load %struct.xilinx_cdma_tx_segment*, %struct.xilinx_cdma_tx_segment** %14, align 8
  %48 = icmp ne %struct.xilinx_cdma_tx_segment* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %35
  br label %94

50:                                               ; preds = %35
  %51 = load %struct.xilinx_cdma_tx_segment*, %struct.xilinx_cdma_tx_segment** %14, align 8
  %52 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, %struct.xilinx_cdma_tx_segment* %51, i32 0, i32 2
  store %struct.xilinx_cdma_desc_hw* %52, %struct.xilinx_cdma_desc_hw** %15, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %55 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %58 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %61 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %63 = getelementptr inbounds %struct.xilinx_dma_chan, %struct.xilinx_dma_chan* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %50
  %67 = load i8*, i8** %9, align 8
  %68 = call i8* @upper_32_bits(i8* %67)
  %69 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %70 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = call i8* @upper_32_bits(i8* %71)
  %73 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %74 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  br label %75

75:                                               ; preds = %66, %50
  %76 = load %struct.xilinx_cdma_tx_segment*, %struct.xilinx_cdma_tx_segment** %14, align 8
  %77 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, %struct.xilinx_cdma_tx_segment* %76, i32 0, i32 1
  %78 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %79 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %78, i32 0, i32 1
  %80 = call i32 @list_add_tail(i32* %77, i32* %79)
  %81 = load %struct.xilinx_cdma_tx_segment*, %struct.xilinx_cdma_tx_segment** %14, align 8
  %82 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, %struct.xilinx_cdma_tx_segment* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %85 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.xilinx_cdma_tx_segment*, %struct.xilinx_cdma_tx_segment** %14, align 8
  %88 = getelementptr inbounds %struct.xilinx_cdma_tx_segment, %struct.xilinx_cdma_tx_segment* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.xilinx_cdma_desc_hw*, %struct.xilinx_cdma_desc_hw** %15, align 8
  %91 = getelementptr inbounds %struct.xilinx_cdma_desc_hw, %struct.xilinx_cdma_desc_hw* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %93 = getelementptr inbounds %struct.xilinx_dma_tx_descriptor, %struct.xilinx_dma_tx_descriptor* %92, i32 0, i32 0
  store %struct.dma_async_tx_descriptor* %93, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

94:                                               ; preds = %49
  %95 = load %struct.xilinx_dma_chan*, %struct.xilinx_dma_chan** %12, align 8
  %96 = load %struct.xilinx_dma_tx_descriptor*, %struct.xilinx_dma_tx_descriptor** %13, align 8
  %97 = call i32 @xilinx_dma_free_tx_descriptor(%struct.xilinx_dma_chan* %95, %struct.xilinx_dma_tx_descriptor* %96)
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %98

98:                                               ; preds = %94, %75, %34, %28
  %99 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %99
}

declare dso_local %struct.xilinx_dma_chan* @to_xilinx_chan(%struct.dma_chan*) #1

declare dso_local %struct.xilinx_dma_tx_descriptor* @xilinx_dma_alloc_tx_descriptor(%struct.xilinx_dma_chan*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.dma_async_tx_descriptor*, i32*) #1

declare dso_local %struct.xilinx_cdma_tx_segment* @xilinx_cdma_alloc_tx_segment(%struct.xilinx_dma_chan*) #1

declare dso_local i8* @upper_32_bits(i8*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @xilinx_dma_free_tx_descriptor(%struct.xilinx_dma_chan*, %struct.xilinx_dma_tx_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
