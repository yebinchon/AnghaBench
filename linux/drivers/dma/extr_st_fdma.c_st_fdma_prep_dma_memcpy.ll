; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_dma_memcpy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_st_fdma.c_st_fdma_prep_dma_memcpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.dma_chan = type { i32 }
%struct.st_fdma_chan = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.st_fdma_desc = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.st_fdma_hw_node* }
%struct.st_fdma_hw_node = type { i64, %struct.TYPE_6__, i8*, i8*, i32, i64 }
%struct.TYPE_6__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"no memory for desc\0A\00", align 1
@FDMA_NODE_CTRL_REQ_MAP_FREE_RUN = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_SRC_INCR = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_DST_INCR = common dso_local global i32 0, align 4
@FDMA_NODE_CTRL_INT_EON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i64)* @st_fdma_prep_dma_memcpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_async_tx_descriptor* @st_fdma_prep_dma_memcpy(%struct.dma_chan* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.st_fdma_chan*, align 8
  %13 = alloca %struct.st_fdma_desc*, align 8
  %14 = alloca %struct.st_fdma_hw_node*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %84

18:                                               ; preds = %5
  %19 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %20 = call %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan* %19)
  store %struct.st_fdma_chan* %20, %struct.st_fdma_chan** %12, align 8
  %21 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %12, align 8
  %22 = call %struct.st_fdma_desc* @st_fdma_alloc_desc(%struct.st_fdma_chan* %21, i32 1)
  store %struct.st_fdma_desc* %22, %struct.st_fdma_desc** %13, align 8
  %23 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %13, align 8
  %24 = icmp ne %struct.st_fdma_desc* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %18
  %26 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %12, align 8
  %27 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  br label %84

32:                                               ; preds = %18
  %33 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %13, align 8
  %34 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %37, align 8
  store %struct.st_fdma_hw_node* %38, %struct.st_fdma_hw_node** %14, align 8
  %39 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %40 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @FDMA_NODE_CTRL_REQ_MAP_FREE_RUN, align 4
  %42 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %43 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @FDMA_NODE_CTRL_SRC_INCR, align 4
  %45 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %46 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @FDMA_NODE_CTRL_DST_INCR, align 4
  %50 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %51 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* @FDMA_NODE_CTRL_INT_EON, align 4
  %55 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %56 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %61 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %64 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %67 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %70 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  %72 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %73 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.st_fdma_hw_node*, %struct.st_fdma_hw_node** %14, align 8
  %76 = getelementptr inbounds %struct.st_fdma_hw_node, %struct.st_fdma_hw_node* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.st_fdma_chan*, %struct.st_fdma_chan** %12, align 8
  %79 = getelementptr inbounds %struct.st_fdma_chan, %struct.st_fdma_chan* %78, i32 0, i32 0
  %80 = load %struct.st_fdma_desc*, %struct.st_fdma_desc** %13, align 8
  %81 = getelementptr inbounds %struct.st_fdma_desc, %struct.st_fdma_desc* %80, i32 0, i32 0
  %82 = load i64, i64* %11, align 8
  %83 = call %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32* %79, i32* %81, i64 %82)
  store %struct.dma_async_tx_descriptor* %83, %struct.dma_async_tx_descriptor** %6, align 8
  br label %84

84:                                               ; preds = %32, %25, %17
  %85 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  ret %struct.dma_async_tx_descriptor* %85
}

declare dso_local %struct.st_fdma_chan* @to_st_fdma_chan(%struct.dma_chan*) #1

declare dso_local %struct.st_fdma_desc* @st_fdma_alloc_desc(%struct.st_fdma_chan*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.dma_async_tx_descriptor* @vchan_tx_prep(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
