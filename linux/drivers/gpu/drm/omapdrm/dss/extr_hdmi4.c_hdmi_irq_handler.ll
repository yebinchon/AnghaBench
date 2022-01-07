; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi4.c_hdmi_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_2__, %struct.hdmi_wp_data }
%struct.TYPE_2__ = type { i32 }
%struct.hdmi_wp_data = type { i32 }

@HDMI_IRQ_LINK_CONNECT = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_DISCONNECT = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_LDOON = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_TXON = common dso_local global i32 0, align 4
@HDMI_IRQ_CORE = common dso_local global i32 0, align 4
@HDMI_CORE_SYS_INTR4 = common dso_local global i32 0, align 4
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
  br i1 %21, label %22, label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %29 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %30 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %28, i32 %29)
  %31 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %32 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %33 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %31, i32 %34)
  %36 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %37 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %38 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %36, i32 %37)
  br label %59

39:                                               ; preds = %22, %2
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %46 = load i32, i32* @HDMI_PHYPWRCMD_TXON, align 4
  %47 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %45, i32 %46)
  br label %58

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %6, align 8
  %55 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %56 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %54, i32 %55)
  br label %57

57:                                               ; preds = %53, %48
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %27
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @HDMI_IRQ_CORE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %86

64:                                               ; preds = %59
  %65 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %66 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HDMI_CORE_SYS_INTR4, align 4
  %70 = call i32 @hdmi_read_reg(i32 %68, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %72 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @HDMI_CORE_SYS_INTR4, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @hdmi_write_reg(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = and i32 %78, 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %64
  %82 = load %struct.omap_hdmi*, %struct.omap_hdmi** %5, align 8
  %83 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %82, i32 0, i32 0
  %84 = call i32 @hdmi4_cec_irq(%struct.TYPE_2__* %83)
  br label %85

85:                                               ; preds = %81, %64
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %87
}

declare dso_local i32 @hdmi_wp_get_irqstatus(%struct.hdmi_wp_data*) #1

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data*, i32) #1

declare dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data*, i32) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

declare dso_local i32 @hdmi4_cec_irq(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
