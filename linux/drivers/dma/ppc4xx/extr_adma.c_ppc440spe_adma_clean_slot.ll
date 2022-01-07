; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_clean_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ppc4xx/extr_adma.c_ppc440spe_adma_clean_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc440spe_adma_desc_slot = type { i64, i32, i32, i32, %struct.dma_cdb*, i32 }
%struct.dma_cdb = type { i64 }
%struct.ppc440spe_adma_chan = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PPC440SPE_XOR_ID = common dso_local global i64 0, align 8
@DMA_CDB_OPC_DCHECK128 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"\09free slot %llx: %d stride: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*)* @ppc440spe_adma_clean_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc440spe_adma_clean_slot(%struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppc440spe_adma_desc_slot*, align 8
  %5 = alloca %struct.ppc440spe_adma_chan*, align 8
  %6 = alloca %struct.dma_cdb*, align 8
  store %struct.ppc440spe_adma_desc_slot* %0, %struct.ppc440spe_adma_desc_slot** %4, align 8
  store %struct.ppc440spe_adma_chan* %1, %struct.ppc440spe_adma_chan** %5, align 8
  %7 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %8 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %7, i32 0, i32 5
  %9 = call i32 @async_tx_test_ack(i32* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %69

12:                                               ; preds = %2
  %13 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %14 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %13, i32 0, i32 1
  %15 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %16 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %15, i32 0, i32 1
  %17 = call i64 @list_is_last(i32* %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %12
  %20 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %21 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %24 = call i64 @ppc440spe_chan_get_current_descriptor(%struct.ppc440spe_adma_chan* %23)
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19, %12
  store i32 1, i32* %3, align 4
  br label %69

27:                                               ; preds = %19
  %28 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %29 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PPC440SPE_XOR_ID, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %27
  %36 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %37 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %36, i32 0, i32 4
  %38 = load %struct.dma_cdb*, %struct.dma_cdb** %37, align 8
  store %struct.dma_cdb* %38, %struct.dma_cdb** %6, align 8
  %39 = load %struct.dma_cdb*, %struct.dma_cdb** %6, align 8
  %40 = getelementptr inbounds %struct.dma_cdb, %struct.dma_cdb* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMA_CDB_OPC_DCHECK128, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 1, i32* %3, align 4
  br label %69

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %27
  %47 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %48 = getelementptr inbounds %struct.ppc440spe_adma_chan, %struct.ppc440spe_adma_chan* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %54 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %57 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %60 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %55, i32 %58, i32 %61)
  %63 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %64 = getelementptr inbounds %struct.ppc440spe_adma_desc_slot, %struct.ppc440spe_adma_desc_slot* %63, i32 0, i32 1
  %65 = call i32 @list_del(i32* %64)
  %66 = load %struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_desc_slot** %4, align 8
  %67 = load %struct.ppc440spe_adma_chan*, %struct.ppc440spe_adma_chan** %5, align 8
  %68 = call i32 @ppc440spe_adma_free_slots(%struct.ppc440spe_adma_desc_slot* %66, %struct.ppc440spe_adma_chan* %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %46, %44, %26, %11
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @async_tx_test_ack(i32*) #1

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local i64 @ppc440spe_chan_get_current_descriptor(%struct.ppc440spe_adma_chan*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ppc440spe_adma_free_slots(%struct.ppc440spe_adma_desc_slot*, %struct.ppc440spe_adma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
