; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_clean_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.c_iop_adma_clean_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.iop_adma_chan = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"\09free slot: %d slots_per_op: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*)* @iop_adma_clean_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_adma_clean_slot(%struct.iop_adma_desc_slot* %0, %struct.iop_adma_chan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca %struct.iop_adma_chan*, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %4, align 8
  store %struct.iop_adma_chan* %1, %struct.iop_adma_chan** %5, align 8
  %6 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %7 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %6, i32 0, i32 3
  %8 = call i32 @async_tx_test_ack(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

11:                                               ; preds = %2
  %12 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %13 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %17 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %16, i32 0, i32 1
  %18 = icmp eq i32* %15, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %39

20:                                               ; preds = %11
  %21 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %22 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %28 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %31 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %35 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %34, i32 0, i32 0
  %36 = call i32 @list_del(%struct.TYPE_6__* %35)
  %37 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %38 = call i32 @iop_adma_free_slots(%struct.iop_adma_desc_slot* %37)
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %20, %19, %10
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @async_tx_test_ack(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @list_del(%struct.TYPE_6__*) #1

declare dso_local i32 @iop_adma_free_slots(%struct.iop_adma_desc_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
