; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_tdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_irq_tdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@REG_TRXINTH = common dso_local global i32 0, align 4
@REG_TRXSTA2 = common dso_local global i32 0, align 4
@MSK_TDM_SYNCHRONIZED = common dso_local global i32 0, align 4
@VAL_TDM_SYNCHRONIZED = common dso_local global i32 0, align 4
@CM_ECBUS_S = common dso_local global i32 0, align 4
@SII8620_BURST_BUF_LEN = common dso_local global i32 0, align 4
@sii8620_got_xdevcap = common dso_local global i32 0, align 4
@REG_MHL_PLL_CTL2 = common dso_local global i32 0, align 4
@BIT_MHL_PLL_CTL2_CLKDETECT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_irq_tdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_irq_tdm(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %5 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %6 = load i32, i32* @REG_TRXINTH, align 4
  %7 = call i32 @sii8620_readb(%struct.sii8620* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %9 = load i32, i32* @REG_TRXSTA2, align 4
  %10 = call i32 @sii8620_readb(%struct.sii8620* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MSK_TDM_SYNCHRONIZED, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @VAL_TDM_SYNCHRONIZED, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i32, i32* @CM_ECBUS_S, align 4
  %18 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %19 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  %20 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %21 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @SII8620_BURST_BUF_LEN, align 4
  %24 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %25 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %28 = load i32, i32* @SII8620_BURST_BUF_LEN, align 4
  %29 = call i32 @sii8620_burst_tx_rbuf_info(%struct.sii8620* %27, i32 %28)
  %30 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %31 = call i32 @sii8620_mt_read_devcap(%struct.sii8620* %30, i32 1)
  %32 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %33 = load i32, i32* @sii8620_got_xdevcap, align 4
  %34 = call i32 @sii8620_mt_set_cont(%struct.sii8620* %32, i32 %33)
  br label %41

35:                                               ; preds = %1
  %36 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %37 = load i32, i32* @REG_MHL_PLL_CTL2, align 4
  %38 = load i32, i32* @REG_MHL_PLL_CTL2, align 4
  %39 = load i32, i32* @BIT_MHL_PLL_CTL2_CLKDETECT_EN, align 4
  %40 = call i32 @sii8620_write_seq_static(%struct.sii8620* %36, i32 %37, i32 0, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %16
  %42 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %43 = load i32, i32* @REG_TRXINTH, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @sii8620_write(%struct.sii8620* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @sii8620_readb(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_burst_tx_rbuf_info(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_mt_read_devcap(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_mt_set_cont(%struct.sii8620*, i32) #1

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32) #1

declare dso_local i32 @sii8620_write(%struct.sii8620*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
