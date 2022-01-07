; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_get_src_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_iop-adma.h_iop_desc_get_src_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iop_adma_desc_slot = type { i32 }
%struct.iop_adma_chan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.iop3xx_desc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iop_adma_desc_slot*, %struct.iop_adma_chan*, i32)* @iop_desc_get_src_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iop_desc_get_src_addr(%struct.iop_adma_desc_slot* %0, %struct.iop_adma_chan* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iop_adma_desc_slot*, align 8
  %6 = alloca %struct.iop_adma_chan*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.iop3xx_desc, align 8
  store %struct.iop_adma_desc_slot* %0, %struct.iop_adma_desc_slot** %5, align 8
  store %struct.iop_adma_chan* %1, %struct.iop_adma_chan** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = bitcast %union.iop3xx_desc* %8 to i32*
  %10 = load %struct.iop_adma_desc_slot*, %struct.iop_adma_desc_slot** %5, align 8
  %11 = getelementptr inbounds %struct.iop_adma_desc_slot, %struct.iop_adma_desc_slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 8
  %13 = load %struct.iop_adma_chan*, %struct.iop_adma_chan** %6, align 8
  %14 = getelementptr inbounds %struct.iop_adma_chan, %struct.iop_adma_chan* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %24 [
    i32 129, label %18
    i32 128, label %18
    i32 130, label %23
  ]

18:                                               ; preds = %3, %3
  %19 = bitcast %union.iop3xx_desc* %8 to %struct.TYPE_6__**
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %48

23:                                               ; preds = %3
  br label %26

24:                                               ; preds = %3
  %25 = call i32 (...) @BUG()
  br label %26

26:                                               ; preds = %24, %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 4
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = bitcast %union.iop3xx_desc* %8 to %struct.TYPE_8__**
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %26
  %39 = bitcast %union.iop3xx_desc* %8 to %struct.TYPE_8__**
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @__desc_idx(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %29, %18
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @__desc_idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
