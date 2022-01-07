; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_isr_desc_stage_end.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/sh/extr_rcar-dmac.c_rcar_dmac_isr_desc_stage_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcar_dmac_chan = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.rcar_dmac_desc* }
%struct.rcar_dmac_desc = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RCAR_DMACHCRB = common dso_local global i32 0, align 4
@RCAR_DMACHCRB_DPTR_MASK = common dso_local global i32 0, align 4
@RCAR_DMACHCRB_DPTR_SHIFT = common dso_local global i32 0, align 4
@RCAR_DMADPCR = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rcar_dmac_chan*)* @rcar_dmac_isr_desc_stage_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_dmac_isr_desc_stage_end(%struct.rcar_dmac_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcar_dmac_chan*, align 8
  %4 = alloca %struct.rcar_dmac_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.rcar_dmac_chan* %0, %struct.rcar_dmac_chan** %3, align 8
  %6 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, %struct.rcar_dmac_chan* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %8, align 8
  store %struct.rcar_dmac_desc* %9, %struct.rcar_dmac_desc** %4, align 8
  %10 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %4, align 8
  %11 = icmp ne %struct.rcar_dmac_desc* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.rcar_dmac_desc*, %struct.rcar_dmac_desc** %4, align 8
  %14 = getelementptr inbounds %struct.rcar_dmac_desc, %struct.rcar_dmac_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %1
  %19 = phi i1 [ true, %1 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %2, align 4
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %27 = load i32, i32* @RCAR_DMACHCRB, align 4
  %28 = call i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan* %26, i32 %27)
  %29 = load i32, i32* @RCAR_DMACHCRB_DPTR_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @RCAR_DMACHCRB_DPTR_SHIFT, align 4
  %32 = lshr i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rcar_dmac_chan*, %struct.rcar_dmac_chan** %3, align 8
  %34 = load i32, i32* @RCAR_DMADPCR, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @RCAR_DMADPCR_DIPT(i32 %35)
  %37 = call i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan* %33, i32 %34, i32 %36)
  %38 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %25, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rcar_dmac_chan_read(%struct.rcar_dmac_chan*, i32) #1

declare dso_local i32 @rcar_dmac_chan_write(%struct.rcar_dmac_chan*, i32, i32) #1

declare dso_local i32 @RCAR_DMADPCR_DIPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
