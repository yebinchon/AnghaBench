; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_mv_xor.c_mv_xor_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.mv_xor_chan = type { i32, i32, i32, i64, i8* }
%struct.mv_xor_desc_slot = type { i32, i32, %struct.TYPE_2__, i32, i8* }
%struct.TYPE_2__ = type { i64, i32 }

@MV_XOR_POOL_SIZE = common dso_local global i32 0, align 4
@MV_XOR_SLOT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"channel only initialized %d descriptor slots\00", align 1
@mv_xor_tx_submit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"allocated %d descriptor slots\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @mv_xor_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_xor_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv_xor_chan*, align 8
  %7 = alloca %struct.mv_xor_desc_slot*, align 8
  %8 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %9 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %10 = call %struct.mv_xor_chan* @to_mv_xor_chan(%struct.dma_chan* %9)
  store %struct.mv_xor_chan* %10, %struct.mv_xor_chan** %6, align 8
  store %struct.mv_xor_desc_slot* null, %struct.mv_xor_desc_slot** %7, align 8
  %11 = load i32, i32* @MV_XOR_POOL_SIZE, align 4
  %12 = load i32, i32* @MV_XOR_SLOT_SIZE, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %15 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %87

21:                                               ; preds = %17
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.mv_xor_desc_slot* @kzalloc(i32 40, i32 %22)
  store %struct.mv_xor_desc_slot* %23, %struct.mv_xor_desc_slot** %7, align 8
  %24 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %25 = icmp ne %struct.mv_xor_desc_slot* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %28 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_info(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %87

31:                                               ; preds = %21
  %32 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %33 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %3, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @MV_XOR_SLOT_SIZE, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = getelementptr i8, i8* %35, i64 %39
  %41 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %42 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %44 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %43, i32 0, i32 2
  %45 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %46 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__* %44, %struct.dma_chan* %45)
  %47 = load i32, i32* @mv_xor_tx_submit, align 4
  %48 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %49 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 8
  %51 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %52 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %51, i32 0, i32 0
  %53 = call i32 @INIT_LIST_HEAD(i32* %52)
  %54 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %55 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %54, i32 0, i32 3
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %58 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MV_XOR_SLOT_SIZE, align 4
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %67 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i64 %65, i64* %68, align 8
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  %71 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %72 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %74 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %73, i32 0, i32 1
  %75 = call i32 @spin_lock_bh(i32* %74)
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %78 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mv_xor_desc_slot*, %struct.mv_xor_desc_slot** %7, align 8
  %80 = getelementptr inbounds %struct.mv_xor_desc_slot, %struct.mv_xor_desc_slot* %79, i32 0, i32 0
  %81 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %82 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %81, i32 0, i32 2
  %83 = call i32 @list_add_tail(i32* %80, i32* %82)
  %84 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %85 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock_bh(i32* %85)
  br label %17

87:                                               ; preds = %26, %17
  %88 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %89 = call i32 @mv_chan_to_devp(%struct.mv_xor_chan* %88)
  %90 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %91 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dev_dbg(i32 %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.mv_xor_chan*, %struct.mv_xor_chan** %6, align 8
  %95 = getelementptr inbounds %struct.mv_xor_chan, %struct.mv_xor_chan* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %87
  br label %102

99:                                               ; preds = %87
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  br label %102

102:                                              ; preds = %99, %98
  %103 = phi i32 [ %96, %98 ], [ %101, %99 ]
  ret i32 %103
}

declare dso_local %struct.mv_xor_chan* @to_mv_xor_chan(%struct.dma_chan*) #1

declare dso_local %struct.mv_xor_desc_slot* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @mv_chan_to_devp(%struct.mv_xor_chan*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_2__*, %struct.dma_chan*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
