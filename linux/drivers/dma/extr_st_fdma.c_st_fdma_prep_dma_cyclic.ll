; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_dma_cyclic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_dma_cyclic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.st_fdma_chan = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.st_fdma_desc = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.st_fdma_hw_node* }
%struct.st_fdma_hw_node = type { i64, %struct.TYPE_6__, i8*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [24 x i8] c"bad width or direction\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"len is not multiple of period\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no memory for desc\0A\00", align 1
@FDMA_NODE_CTRL_INT_EON = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i64, i64, i32, i64)* @st_fdma_prep_dma_cyclic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @st_fdma_prep_dma_cyclic(%struct.dma_chan* %0, i8* %1, i64 %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.st_fdma_chan*, align 8
  %15 = alloca %struct.st_fdma_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.st_fdma_hw_node*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %20 = load i64, i64* %10, align 8
  %21 = load i32, i32* %12, align 4
  %22 = call %struct.st_fdma_chan* @st_fdma_prep_common(%struct.dma_chan* %19, i64 %20, i32 %21)
  store %struct.st_fdma_chan* %22, %struct.st_fdma_chan** %14, align 8
  %23 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %24 = icmp ne %struct.st_fdma_chan* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

26:                                               ; preds = %6
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

30:                                               ; preds = %26
  %31 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i64 @config_reqctrl(%struct.st_fdma_chan* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %37 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %36, i32 0, i32 2
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

42:                                               ; preds = %30
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = urem i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %49 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

54:                                               ; preds = %42
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = udiv i64 %55, %56
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %16, align 4
  %59 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %60 = load i32, i32* %16, align 4
  %61 = call %struct.st_fdma_desc* @st_fdma_alloc_desc(%struct.st_fdma_chan* %59, i32 %60)
  store %struct.st_fdma_desc* %61, %struct.st_fdma_desc** %15, align 8
  %62 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %15, align 8
  %63 = icmp ne %struct.st_fdma_desc* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %54
  %65 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %66 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

71:                                               ; preds = %54
  %72 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %15, align 8
  %73 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  store i32 0, i32* %17, align 4
  br label %74

74:                                               ; preds = %144, %71
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %147

78:                                               ; preds = %74
  %79 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %15, align 8
  %80 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = load i32, i32* %17, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %85, align 8
  store %struct.st_fdma_hw_node* %86, %struct.st_fdma_hw_node** %18, align 8
  %87 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %15, align 8
  %88 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %17, align 4
  %91 = add nsw i32 %90, 1
  %92 = load i32, i32* %16, align 4
  %93 = srem i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %99 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %101 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @FDMA_NODE_CTRL_REQ_MAP_DREQ(i32 %102)
  %104 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %105 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @FDMA_NODE_CTRL_INT_EON, align 4
  %107 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %108 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %112 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @fill_hw_node(%struct.st_fdma_hw_node* %111, %struct.st_fdma_chan* %112, i32 %113)
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %78
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %17, align 4
  %121 = sext i32 %120 to i64
  %122 = load i64, i64* %11, align 8
  %123 = mul i64 %121, %122
  %124 = getelementptr i8, i8* %119, i64 %123
  %125 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %126 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  br label %136

127:                                              ; preds = %78
  %128 = load i8*, i8** %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = load i64, i64* %11, align 8
  %132 = mul i64 %130, %131
  %133 = getelementptr i8, i8* %128, i64 %132
  %134 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %135 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %139 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %18, align 8
  %142 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  store i64 %140, i64* %143, align 8
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %17, align 4
  br label %74

147:                                              ; preds = %74
  %148 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %14, align 8
  %149 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %148, i32 0, i32 0
  %150 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %15, align 8
  %151 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %150, i32 0, i32 1
  %152 = load i64, i64* %13, align 8
  %153 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %149, i32* %151, i64 %152)
  store %struct.dma_async_tx_descriptor* %153, %struct.dma_async_tx_descriptor** %7, align 8
  br label %154

154:                                              ; preds = %147, %64, %47, %35, %29, %25
  %155 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  ret %struct.dma_async_tx_descriptor* %155
}

declare dso_local %struct.st_fdma_chan* @st_fdma_prep_common(%struct.dma_chan*, i64, i32) #1

declare dso_local i64 @config_reqctrl(%struct.st_fdma_chan*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.st_fdma_desc* @st_fdma_alloc_desc(%struct.st_fdma_chan*, i32) #1

declare dso_local i32 @FDMA_NODE_CTRL_REQ_MAP_DREQ(i32) #1

declare dso_local i32 @fill_hw_node(%struct.st_fdma_hw_node*, %struct.st_fdma_chan*, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
