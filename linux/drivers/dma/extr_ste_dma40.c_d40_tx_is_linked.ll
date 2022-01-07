; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_tx_is_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_ste_dma40.c_d40_tx_is_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.d40_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@D40_MEM_LCSP3_DLOS_MASK = common dso_local global i32 0, align 4
@D40_CHAN_REG_SDLNK = common dso_local global i32 0, align 4
@D40_SREG_LNK_PHYS_LNK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.d40_chan*)* @d40_tx_is_linked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @d40_tx_is_linked(%struct.d40_chan* %0) #0 {
  %2 = alloca %struct.d40_chan*, align 8
  %3 = alloca i32, align 4
  store %struct.d40_chan* %0, %struct.d40_chan** %2, align 8
  %4 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %5 = call i64 @chan_is_logical(%struct.d40_chan* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %9 = getelementptr inbounds %struct.d40_chan, %struct.d40_chan* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @readl(i32* %11)
  %13 = load i32, i32* @D40_MEM_LCSP3_DLOS_MASK, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %3, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.d40_chan*, %struct.d40_chan** %2, align 8
  %17 = call i32* @chan_base(%struct.d40_chan* %16)
  %18 = load i32, i32* @D40_CHAN_REG_SDLNK, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = call i32 @readl(i32* %20)
  %22 = load i32, i32* @D40_SREG_LNK_PHYS_LNK_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %15, %7
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i64 @chan_is_logical(%struct.d40_chan*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32* @chan_base(%struct.d40_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
