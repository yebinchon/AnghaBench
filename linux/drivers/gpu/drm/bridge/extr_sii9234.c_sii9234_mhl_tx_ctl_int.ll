; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_mhl_tx_ctl_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_mhl_tx_ctl_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@MHL_TX_MHLTX_CTL1_REG = common dso_local global i32 0, align 4
@MHL_TX_MHLTX_CTL2_REG = common dso_local global i32 0, align 4
@MHL_TX_MHLTX_CTL4_REG = common dso_local global i32 0, align 4
@MHL_TX_MHLTX_CTL7_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_mhl_tx_ctl_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_mhl_tx_ctl_int(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %3 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %4 = load i32, i32* @MHL_TX_MHLTX_CTL1_REG, align 4
  %5 = call i32 @mhl_tx_writeb(%struct.sii9234* %3, i32 %4, i32 208)
  %6 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %7 = load i32, i32* @MHL_TX_MHLTX_CTL2_REG, align 4
  %8 = call i32 @mhl_tx_writeb(%struct.sii9234* %6, i32 %7, i32 252)
  %9 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %10 = load i32, i32* @MHL_TX_MHLTX_CTL4_REG, align 4
  %11 = call i32 @mhl_tx_writeb(%struct.sii9234* %9, i32 %10, i32 235)
  %12 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %13 = load i32, i32* @MHL_TX_MHLTX_CTL7_REG, align 4
  %14 = call i32 @mhl_tx_writeb(%struct.sii9234* %12, i32 %13, i32 12)
  %15 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %16 = call i32 @sii9234_clear_error(%struct.sii9234* %15)
  ret i32 %16
}

declare dso_local i32 @mhl_tx_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @sii9234_clear_error(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
