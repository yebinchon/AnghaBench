; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_2__, %struct.hdmi_wp_data }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_wp_data = type { i32 }

@HDMI_IRQ_LINK_CONNECT = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_DISCONNECT = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@HDMI_TXPHY_PAD_CFG_CTRL = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_LDOON = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_TXON = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hdmi_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_hdmi*, align 8
  %6 = alloca %struct.hdmi_wp_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.omap_hdmi*
  store %struct.omap_hdmi* %10, %struct.omap_hdmi** %5, align 8
  %11 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %12 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %11, i32 0, i32 1
  store %struct.hdmi_wp_data* %12, %struct.hdmi_wp_data** %6, align 8
  %13 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %14 = call i32 @hdmi_wp_get_irqstatus(%struct.hdmi_wp_data* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %15, i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %62

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %62

27:                                               ; preds = %22
  %28 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %29 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %30 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %28, i32 %29)
  %31 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %32 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HDMI_TXPHY_PAD_CFG_CTRL, align 4
  %36 = call i32 @hdmi_read_reg(i32 %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @FLD_MOD(i32 %37, i32 1, i32 15, i32 15)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @FLD_MOD(i32 %39, i32 0, i32 14, i32 7)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %42 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @HDMI_TXPHY_PAD_CFG_CTRL, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @hdmi_write_reg(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %49 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %50 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %48, i32 %51)
  %53 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %54 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %55 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %53, i32 %54)
  %56 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %57 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @HDMI_TXPHY_PAD_CFG_CTRL, align 4
  %61 = call i32 @REG_FLD_MOD(i32 %59, i32 %60, i32 0, i32 15, i32 15)
  br label %82

62:                                               ; preds = %22, %2
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %69 = load i32, i32* @HDMI_PHYPWRCMD_TXON, align 4
  %70 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %68, i32 %69)
  br label %81

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %78 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %79 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %71
  br label %81

81:                                               ; preds = %80, %67
  br label %82

82:                                               ; preds = %81, %27
  %83 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %83
}

declare dso_local i32 @hdmi_wp_get_irqstatus(%struct.hdmi_wp_data*) #1

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data*, i32) #1

declare dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data*, i32) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
