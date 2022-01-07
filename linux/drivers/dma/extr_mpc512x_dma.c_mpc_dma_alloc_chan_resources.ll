; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mpc512x_dma.c_mpc_dma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mpc_dma = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mpc_dma_chan = type { i32, i32, i8*, %struct.mpc_dma_tcd* }
%struct.mpc_dma_tcd = type { i32 }
%struct.mpc_dma_desc = type { i32, i8*, %struct.mpc_dma_tcd*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@descs = common dso_local global i32 0, align 4
@MPC_DMA_DESCRIPTORS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Memory allocation error. Allocated only %u descriptors\0A\00", align 1
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@mpc_dma_tx_submit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mpc_dma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_dma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.mpc_dma*, align 8
  %5 = alloca %struct.mpc_dma_chan*, align 8
  %6 = alloca %struct.mpc_dma_desc*, align 8
  %7 = alloca %struct.mpc_dma_tcd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %11 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %12 = call %struct.mpc_dma* @dma_chan_to_mpc_dma(%struct.dma_chan* %11)
  store %struct.mpc_dma* %12, %struct.mpc_dma** %4, align 8
  %13 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %14 = call %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan* %13)
  store %struct.mpc_dma_chan* %14, %struct.mpc_dma_chan** %5, align 8
  %15 = load i32, i32* @descs, align 4
  %16 = call i32 @LIST_HEAD(i32 %15)
  %17 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %18 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MPC_DMA_DESCRIPTORS, align 4
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.mpc_dma_tcd* @dma_alloc_coherent(i32 %20, i32 %24, i8** %8, i32 %25)
  store %struct.mpc_dma_tcd* %26, %struct.mpc_dma_tcd** %7, align 8
  %27 = load %struct.mpc_dma_tcd*, %struct.mpc_dma_tcd** %7, align 8
  %28 = icmp ne %struct.mpc_dma_tcd* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %124

32:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MPC_DMA_DESCRIPTORS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.mpc_dma_desc* @kzalloc(i32 32, i32 %38)
  store %struct.mpc_dma_desc* %39, %struct.mpc_dma_desc** %6, align 8
  %40 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %41 = icmp ne %struct.mpc_dma_desc* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %37
  %43 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %44 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @dev_notice(i32 %46, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %81

49:                                               ; preds = %37
  %50 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %51 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %50, i32 0, i32 3
  %52 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %53 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__* %51, %struct.dma_chan* %52)
  %54 = load i32, i32* @DMA_CTRL_ACK, align 4
  %55 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %56 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load i32, i32* @mpc_dma_tx_submit, align 4
  %59 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %60 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  %62 = load %struct.mpc_dma_tcd*, %struct.mpc_dma_tcd** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.mpc_dma_tcd, %struct.mpc_dma_tcd* %62, i64 %64
  %66 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %67 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %66, i32 0, i32 2
  store %struct.mpc_dma_tcd* %65, %struct.mpc_dma_tcd** %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 4
  %72 = getelementptr i8, i8* %68, i64 %71
  %73 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %74 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.mpc_dma_desc*, %struct.mpc_dma_desc** %6, align 8
  %76 = getelementptr inbounds %struct.mpc_dma_desc, %struct.mpc_dma_desc* %75, i32 0, i32 0
  %77 = call i32 @list_add_tail(i32* %76, i32* @descs)
  br label %78

78:                                               ; preds = %49
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  br label %33

81:                                               ; preds = %42, %33
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %86 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MPC_DMA_DESCRIPTORS, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load %struct.mpc_dma_tcd*, %struct.mpc_dma_tcd** %7, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = call i32 @dma_free_coherent(i32 %88, i32 %92, %struct.mpc_dma_tcd* %93, i8* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %124

98:                                               ; preds = %81
  %99 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %5, align 8
  %100 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %99, i32 0, i32 0
  %101 = load i64, i64* %9, align 8
  %102 = call i32 @spin_lock_irqsave(i32* %100, i64 %101)
  %103 = load %struct.mpc_dma_tcd*, %struct.mpc_dma_tcd** %7, align 8
  %104 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %5, align 8
  %105 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %104, i32 0, i32 3
  store %struct.mpc_dma_tcd* %103, %struct.mpc_dma_tcd** %105, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %5, align 8
  %108 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  %109 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %5, align 8
  %110 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %109, i32 0, i32 1
  %111 = call i32 @list_splice_tail_init(i32* @descs, i32* %110)
  %112 = load %struct.mpc_dma_chan*, %struct.mpc_dma_chan** %5, align 8
  %113 = getelementptr inbounds %struct.mpc_dma_chan, %struct.mpc_dma_chan* %112, i32 0, i32 0
  %114 = load i64, i64* %9, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  %116 = load %struct.mpc_dma*, %struct.mpc_dma** %4, align 8
  %117 = getelementptr inbounds %struct.mpc_dma, %struct.mpc_dma* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %121 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @out_8(i32* %119, i32 %122)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %98, %84, %29
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.mpc_dma* @dma_chan_to_mpc_dma(%struct.dma_chan*) #1

declare dso_local %struct.mpc_dma_chan* @dma_chan_to_mpc_dma_chan(%struct.dma_chan*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local %struct.mpc_dma_tcd* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local %struct.mpc_dma_desc* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_notice(i32, i8*, i32) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_6__*, %struct.dma_chan*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, %struct.mpc_dma_tcd*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_splice_tail_init(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @out_8(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
