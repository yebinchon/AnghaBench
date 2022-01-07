; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sii9234.c_sii9234_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii9234 = type { i32 }

@MHL_TX_DISC_CTRL1_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL2_REG = common dso_local global i32 0, align 4
@ATT_THRESH_SHIFT = common dso_local global i32 0, align 4
@DEGLITCH_TIME_50MS = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL5_REG = common dso_local global i32 0, align 4
@CBUS_LINK_CONTROL_2_REG = common dso_local global i32 0, align 4
@MHL_INIT_TIMEOUT = common dso_local global i32 0, align 4
@MHL_TX_MHLTX_CTL6_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL6_REG = common dso_local global i32 0, align 4
@BLOCK_RGND_INT = common dso_local global i32 0, align 4
@DVRFLT_SEL = common dso_local global i32 0, align 4
@SINGLE_ATT = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL8_REG = common dso_local global i32 0, align 4
@USB_ID_OVR = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL3_REG = common dso_local global i32 0, align 4
@MHL_TX_DISC_CTRL4_REG = common dso_local global i32 0, align 4
@MHL_TX_INT_CTRL_REG = common dso_local global i32 0, align 4
@MHL_TX_INTR4_ENABLE_REG = common dso_local global i32 0, align 4
@RGND_READY_MASK = common dso_local global i32 0, align 4
@CBUS_LKOUT_MASK = common dso_local global i32 0, align 4
@MHL_DISC_FAIL_MASK = common dso_local global i32 0, align 4
@MHL_EST_MASK = common dso_local global i32 0, align 4
@MHL_TX_INTR1_ENABLE_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sii9234*)* @sii9234_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sii9234_reset(%struct.sii9234* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sii9234*, align 8
  %4 = alloca i32, align 4
  store %struct.sii9234* %0, %struct.sii9234** %3, align 8
  %5 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %6 = call i32 @sii9234_clear_error(%struct.sii9234* %5)
  %7 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %8 = call i32 @sii9234_power_init(%struct.sii9234* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %139

13:                                               ; preds = %1
  %14 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %15 = call i32 @sii9234_cbus_reset(%struct.sii9234* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %139

20:                                               ; preds = %13
  %21 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %22 = call i32 @sii9234_hdmi_init(%struct.sii9234* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %139

27:                                               ; preds = %20
  %28 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %29 = call i32 @sii9234_mhl_tx_ctl_int(%struct.sii9234* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %139

34:                                               ; preds = %27
  %35 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %36 = call i32 @mhl_tx_writeb(%struct.sii9234* %35, i32 43, i32 1)
  %37 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %38 = load i32, i32* @MHL_TX_DISC_CTRL1_REG, align 4
  %39 = call i32 @mhl_tx_writebm(%struct.sii9234* %37, i32 %38, i32 4, i32 6)
  %40 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %41 = load i32, i32* @MHL_TX_DISC_CTRL2_REG, align 4
  %42 = load i32, i32* @ATT_THRESH_SHIFT, align 4
  %43 = shl i32 2, %42
  %44 = or i32 128, %43
  %45 = load i32, i32* @DEGLITCH_TIME_50MS, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @mhl_tx_writeb(%struct.sii9234* %40, i32 %41, i32 %46)
  %48 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %49 = load i32, i32* @MHL_TX_DISC_CTRL5_REG, align 4
  %50 = call i32 @mhl_tx_writeb(%struct.sii9234* %48, i32 %49, i32 119)
  %51 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %52 = load i32, i32* @CBUS_LINK_CONTROL_2_REG, align 4
  %53 = load i32, i32* @MHL_INIT_TIMEOUT, align 4
  %54 = call i32 @cbus_writebm(%struct.sii9234* %51, i32 %52, i32 -1, i32 %53)
  %55 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %56 = load i32, i32* @MHL_TX_MHLTX_CTL6_REG, align 4
  %57 = call i32 @mhl_tx_writeb(%struct.sii9234* %55, i32 %56, i32 160)
  %58 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %59 = load i32, i32* @MHL_TX_DISC_CTRL6_REG, align 4
  %60 = load i32, i32* @BLOCK_RGND_INT, align 4
  %61 = load i32, i32* @DVRFLT_SEL, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @SINGLE_ATT, align 4
  %64 = or i32 %62, %63
  %65 = call i32 @mhl_tx_writeb(%struct.sii9234* %58, i32 %59, i32 %64)
  %66 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %67 = load i32, i32* @MHL_TX_DISC_CTRL8_REG, align 4
  %68 = call i32 @mhl_tx_writeb(%struct.sii9234* %66, i32 %67, i32 0)
  %69 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %70 = load i32, i32* @MHL_TX_DISC_CTRL6_REG, align 4
  %71 = load i32, i32* @USB_ID_OVR, align 4
  %72 = call i32 @mhl_tx_writebm(%struct.sii9234* %69, i32 %70, i32 -1, i32 %71)
  %73 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %74 = load i32, i32* @MHL_TX_DISC_CTRL3_REG, align 4
  %75 = call i32 @mhl_tx_writebm(%struct.sii9234* %73, i32 %74, i32 -1, i32 134)
  %76 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %77 = load i32, i32* @MHL_TX_DISC_CTRL4_REG, align 4
  %78 = call i32 @mhl_tx_writebm(%struct.sii9234* %76, i32 %77, i32 -1, i32 140)
  %79 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %80 = load i32, i32* @MHL_TX_INT_CTRL_REG, align 4
  %81 = call i32 @mhl_tx_writebm(%struct.sii9234* %79, i32 %80, i32 0, i32 6)
  %82 = call i32 @msleep(i32 25)
  %83 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %84 = load i32, i32* @MHL_TX_DISC_CTRL6_REG, align 4
  %85 = load i32, i32* @USB_ID_OVR, align 4
  %86 = call i32 @mhl_tx_writebm(%struct.sii9234* %83, i32 %84, i32 0, i32 %85)
  %87 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %88 = load i32, i32* @MHL_TX_DISC_CTRL1_REG, align 4
  %89 = call i32 @mhl_tx_writeb(%struct.sii9234* %87, i32 %88, i32 39)
  %90 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %91 = call i32 @sii9234_clear_error(%struct.sii9234* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %34
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %139

96:                                               ; preds = %34
  %97 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %98 = call i32 @sii9234_cbus_init(%struct.sii9234* %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %139

103:                                              ; preds = %96
  %104 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %105 = call i32 @mhl_tx_writeb(%struct.sii9234* %104, i32 5, i32 4)
  %106 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %107 = call i32 @mhl_tx_writeb(%struct.sii9234* %106, i32 13, i32 28)
  %108 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %109 = load i32, i32* @MHL_TX_INTR4_ENABLE_REG, align 4
  %110 = load i32, i32* @RGND_READY_MASK, align 4
  %111 = load i32, i32* @CBUS_LKOUT_MASK, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MHL_DISC_FAIL_MASK, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MHL_EST_MASK, align 4
  %116 = or i32 %114, %115
  %117 = call i32 @mhl_tx_writeb(%struct.sii9234* %108, i32 %109, i32 %116)
  %118 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %119 = load i32, i32* @MHL_TX_INTR1_ENABLE_REG, align 4
  %120 = call i32 @mhl_tx_writeb(%struct.sii9234* %118, i32 %119, i32 96)
  %121 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %122 = call i32 @force_usb_id_switch_open(%struct.sii9234* %121)
  %123 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %124 = load i32, i32* @MHL_TX_DISC_CTRL4_REG, align 4
  %125 = call i32 @mhl_tx_writebm(%struct.sii9234* %123, i32 %124, i32 0, i32 240)
  %126 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %127 = load i32, i32* @MHL_TX_DISC_CTRL5_REG, align 4
  %128 = call i32 @mhl_tx_writebm(%struct.sii9234* %126, i32 %127, i32 0, i32 3)
  %129 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %130 = call i32 @release_usb_id_switch_open(%struct.sii9234* %129)
  %131 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %132 = load i32, i32* @MHL_TX_INT_CTRL_REG, align 4
  %133 = call i32 @mhl_tx_writebm(%struct.sii9234* %131, i32 %132, i32 0, i32 32)
  %134 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %135 = load i32, i32* @MHL_TX_INT_CTRL_REG, align 4
  %136 = call i32 @mhl_tx_writebm(%struct.sii9234* %134, i32 %135, i32 -1, i32 16)
  %137 = load %struct.sii9234*, %struct.sii9234** %3, align 8
  %138 = call i32 @sii9234_clear_error(%struct.sii9234* %137)
  store i32 %138, i32* %2, align 4
  br label %139

139:                                              ; preds = %103, %101, %94, %32, %25, %18, %11
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @sii9234_clear_error(%struct.sii9234*) #1

declare dso_local i32 @sii9234_power_init(%struct.sii9234*) #1

declare dso_local i32 @sii9234_cbus_reset(%struct.sii9234*) #1

declare dso_local i32 @sii9234_hdmi_init(%struct.sii9234*) #1

declare dso_local i32 @sii9234_mhl_tx_ctl_int(%struct.sii9234*) #1

declare dso_local i32 @mhl_tx_writeb(%struct.sii9234*, i32, i32) #1

declare dso_local i32 @mhl_tx_writebm(%struct.sii9234*, i32, i32, i32) #1

declare dso_local i32 @cbus_writebm(%struct.sii9234*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sii9234_cbus_init(%struct.sii9234*) #1

declare dso_local i32 @force_usb_id_switch_open(%struct.sii9234*) #1

declare dso_local i32 @release_usb_id_switch_open(%struct.sii9234*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
