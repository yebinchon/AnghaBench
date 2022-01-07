; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_coc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_coc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32 }

@REG_COC_INTR = common dso_local global i32 0, align 4
@BIT_COC_CALIBRATION_DONE = common dso_local global i32 0, align 4
@REG_COC_STAT_0 = common dso_local global i32 0, align 4
@BIT_COC_STAT_0_PLL_LOCKED = common dso_local global i32 0, align 4
@MSK_COC_STAT_0_FSM_STATE = common dso_local global i32 0, align 4
@REG_COC_CTLB = common dso_local global i32 0, align 4
@REG_TRXINTMH = common dso_local global i32 0, align 4
@BIT_TDM_INTR_SYNC_DATA = common dso_local global i32 0, align 4
@BIT_TDM_INTR_SYNC_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_coc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_coc(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %5 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %6 = load i32, i32* @REG_COC_INTR, align 4
  %7 = call i32 @sii8620_readb(%struct.sii8620* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @BIT_COC_CALIBRATION_DONE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %14 = load i32, i32* @REG_COC_STAT_0, align 4
  %15 = call i32 @sii8620_readb(%struct.sii8620* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @BIT_COC_STAT_0_PLL_LOCKED, align 4
  %17 = load i32, i32* @MSK_COC_STAT_0_FSM_STATE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @BIT_COC_STAT_0_PLL_LOCKED, align 4
  %23 = or i32 %22, 2
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %12
  %26 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %27 = load i32, i32* @REG_COC_CTLB, align 4
  %28 = load i32, i32* @REG_TRXINTMH, align 4
  %29 = load i32, i32* @BIT_TDM_INTR_SYNC_DATA, align 4
  %30 = load i32, i32* @BIT_TDM_INTR_SYNC_WAIT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @sii8620_write_seq_static(%struct.sii8620* %26, i32 %27, i32 0, i32 %28, i32 %31)
  br label %33

33:                                               ; preds = %25, %12
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %36 = load i32, i32* @REG_COC_INTR, align 4
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @sii8620_write(%struct.sii8620* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
