; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_start_gen2_write_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_start_gen2_write_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_MDT_INT_1_MASK = common dso_local global i32 0, align 4
@BIT_MDT_RCV_TIMEOUT = common dso_local global i32 0, align 4
@BIT_MDT_RCV_SM_ABORT_PKT_RCVD = common dso_local global i32 0, align 4
@BIT_MDT_RCV_SM_ERROR = common dso_local global i32 0, align 4
@BIT_MDT_XMIT_TIMEOUT = common dso_local global i32 0, align 4
@BIT_MDT_XMIT_SM_ABORT_PKT_RCVD = common dso_local global i32 0, align 4
@BIT_MDT_XMIT_SM_ERROR = common dso_local global i32 0, align 4
@REG_MDT_INT_0_MASK = common dso_local global i32 0, align 4
@BIT_MDT_XFIFO_EMPTY = common dso_local global i32 0, align 4
@BIT_MDT_IDLE_AFTER_HAWB_DISABLE = common dso_local global i32 0, align 4
@BIT_MDT_RFIFO_DATA_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_start_gen2_write_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_start_gen2_write_burst(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %3 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %4 = load i32, i32* @REG_MDT_INT_1_MASK, align 4
  %5 = load i32, i32* @BIT_MDT_RCV_TIMEOUT, align 4
  %6 = load i32, i32* @BIT_MDT_RCV_SM_ABORT_PKT_RCVD, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @BIT_MDT_RCV_SM_ERROR, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @BIT_MDT_XMIT_TIMEOUT, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @BIT_MDT_XMIT_SM_ABORT_PKT_RCVD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @BIT_MDT_XMIT_SM_ERROR, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @REG_MDT_INT_0_MASK, align 4
  %17 = load i32, i32* @BIT_MDT_XFIFO_EMPTY, align 4
  %18 = load i32, i32* @BIT_MDT_IDLE_AFTER_HAWB_DISABLE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @BIT_MDT_RFIFO_DATA_RDY, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @sii8620_write_seq_static(%struct.sii8620* %3, i32 %4, i32 %15, i32 %16, i32 %21)
  %23 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %24 = call i32 @sii8620_enable_gen2_write_burst(%struct.sii8620* %23)
  ret void
}

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32) #1

declare dso_local i32 @sii8620_enable_gen2_write_burst(%struct.sii8620*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
