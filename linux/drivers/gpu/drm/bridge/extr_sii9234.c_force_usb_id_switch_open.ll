; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_force_usb_id_switch_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_force_usb_id_switch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@MHL_TX_DISC_CTRL1_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL6_REG = common dso_local global i32 0, align 4
@USB_ID_OVR = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL3_REG = common dso_local global i32 0, align 4
@MHL_TX_INT_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii9234*)* @force_usb_id_switch_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @force_usb_id_switch_open(%struct.sii9234* %0) #0 {
  %2 = alloca %struct.sii9234*, align 8
  store %struct.sii9234* %0, %struct.sii9234** %2, align 8
  %3 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %4 = load i32, i32* @MHL_TX_DISC_CTRL1_REG, align 4
  %5 = call i32 @mhl_tx_writebm(%struct.sii9234* %3, i32 %4, i32 0, i32 1)
  %6 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %7 = load i32, i32* @MHL_TX_DISC_CTRL6_REG, align 4
  %8 = load i32, i32* @USB_ID_OVR, align 4
  %9 = call i32 @mhl_tx_writebm(%struct.sii9234* %6, i32 %7, i32 -1, i32 %8)
  %10 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %11 = load i32, i32* @MHL_TX_DISC_CTRL3_REG, align 4
  %12 = call i32 @mhl_tx_writebm(%struct.sii9234* %10, i32 %11, i32 -1, i32 134)
  %13 = load %struct.sii9234*, %struct.sii9234** %2, align 8
  %14 = load i32, i32* @MHL_TX_INT_CTRL_REG, align 4
  %15 = call i32 @mhl_tx_writebm(%struct.sii9234* %13, i32 %14, i32 0, i32 48)
  ret void
}

declare dso_local i32 @mhl_tx_writebm(%struct.sii9234*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
