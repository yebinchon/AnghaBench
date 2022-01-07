; ModuleID = '/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_hw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mailbox/extr_bcm-pdc-mailbox.c_pdc_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdc_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dma64* }
%struct.dma64 = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@PDC_RINGSET = common dso_local global i64 0, align 8
@PDC_TX_CTL = common dso_local global i64 0, align 8
@PDC_RX_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdc_state*)* @pdc_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_hw_disable(%struct.pdc_state* %0) #0 {
  %2 = alloca %struct.pdc_state*, align 8
  %3 = alloca %struct.dma64*, align 8
  store %struct.pdc_state* %0, %struct.pdc_state** %2, align 8
  %4 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %5 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.dma64*, %struct.dma64** %7, align 8
  %9 = load i64, i64* @PDC_RINGSET, align 8
  %10 = getelementptr inbounds %struct.dma64, %struct.dma64* %8, i64 %9
  store %struct.dma64* %10, %struct.dma64** %3, align 8
  %11 = load i64, i64* @PDC_TX_CTL, align 8
  %12 = load %struct.dma64*, %struct.dma64** %3, align 8
  %13 = getelementptr inbounds %struct.dma64, %struct.dma64* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @iowrite32(i64 %11, i32* %14)
  %16 = load i64, i64* @PDC_RX_CTL, align 8
  %17 = load %struct.pdc_state*, %struct.pdc_state** %2, align 8
  %18 = getelementptr inbounds %struct.pdc_state, %struct.pdc_state* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %16, %21
  %23 = load %struct.dma64*, %struct.dma64** %3, align 8
  %24 = getelementptr inbounds %struct.dma64, %struct.dma64* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @iowrite32(i64 %22, i32* %25)
  ret void
}

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
