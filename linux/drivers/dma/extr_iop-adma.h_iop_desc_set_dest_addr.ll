; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_dest_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_set_dest_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i32 }
%struct.iop_adma_chan = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%union.iop3xx_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*, i8*)* @iop_desc_set_dest_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iop_desc_set_dest_addr(%struct.iop_adma_desc_slot* %0, %struct.iop_adma_chan* %1, i8* %2) #0 {
  %4 = alloca %struct.iop_adma_desc_slot*, align 8
  %5 = alloca %struct.iop_adma_chan*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %union.iop3xx_desc, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %4, align 8
  store %struct.iop_adma_chan* %1, %struct.iop_adma_chan** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = bitcast %union.iop3xx_desc* %7 to i32*
  %9 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %4, align 8
  %10 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 8
  %12 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %5, align 8
  %13 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %17
    i32 130, label %22
  ]

17:                                               ; preds = %3, %3
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast %union.iop3xx_desc* %7 to %struct.TYPE_5__**
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* %18, i8** %21, align 8
  br label %29

22:                                               ; preds = %3
  %23 = load i8*, i8** %6, align 8
  %24 = bitcast %union.iop3xx_desc* %7 to %struct.TYPE_6__**
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store i8* %23, i8** %26, align 8
  br label %29

27:                                               ; preds = %3
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27, %22, %17
  ret void
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
