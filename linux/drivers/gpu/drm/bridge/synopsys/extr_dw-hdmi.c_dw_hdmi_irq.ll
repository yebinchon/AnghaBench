; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/synopsys/extr_dw-hdmi.c_dw_hdmi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@HDMI_IH_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_PHY_POL0 = common dso_local global i32 0, align 4
@HDMI_PHY_STAT0 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_HPD = common dso_local global i32 0, align 4
@HDMI_PHY_HPD = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE0 = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE0 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE1 = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE1 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE2 = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE2 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE3 = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE3 = common dso_local global i32 0, align 4
@HDMI_IH_PHY_STAT0_RX_SENSE = common dso_local global i32 0, align 4
@HDMI_PHY_RX_SENSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"EVENT=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"plugin\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"plugout\00", align 1
@HDMI_IH_MUTE_PHY_STAT0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_hdmi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_hdmi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dw_hdmi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.dw_hdmi*
  store %struct.dw_hdmi* %11, %struct.dw_hdmi** %5, align 8
  %12 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %13 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %14 = call i32 @hdmi_readb(%struct.dw_hdmi* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %16 = load i32, i32* @HDMI_PHY_POL0, align 4
  %17 = call i32 @hdmi_readb(%struct.dw_hdmi* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %19 = load i32, i32* @HDMI_PHY_STAT0, align 4
  %20 = call i32 @hdmi_readb(%struct.dw_hdmi* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load i32, i32* @HDMI_PHY_HPD, align 4
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %25, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE0, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32, i32* @HDMI_PHY_RX_SENSE0, align 4
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE1, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @HDMI_PHY_RX_SENSE1, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE2, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @HDMI_PHY_RX_SENSE2, align 4
  %54 = load i32, i32* %8, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE3, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @HDMI_PHY_RX_SENSE3, align 4
  %63 = load i32, i32* %8, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %70 = load i32, i32* %7, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @HDMI_PHY_POL0, align 4
  %74 = call i32 @hdmi_modb(%struct.dw_hdmi* %69, i32 %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %65
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE, align 4
  %78 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %75
  %83 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @HDMI_PHY_HPD, align 4
  %86 = and i32 %84, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @dw_hdmi_setup_rx_sense(%struct.dw_hdmi* %83, i32 %86, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @HDMI_PHY_RX_SENSE, align 4
  %93 = load i32, i32* @HDMI_PHY_HPD, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %108

97:                                               ; preds = %82
  %98 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %99 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %98, i32 0, i32 2
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %102 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @cec_notifier_phys_addr_invalidate(i32 %103)
  %105 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %106 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %105, i32 0, i32 2
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %97, %82
  br label %109

109:                                              ; preds = %108, %75
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %109
  %115 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %116 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @HDMI_PHY_HPD, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %124 = call i32 @dev_dbg(i32 %117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %123)
  %125 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %126 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %114
  %131 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %132 = getelementptr inbounds %struct.dw_hdmi, %struct.dw_hdmi* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @drm_helper_hpd_irq_event(i64 %134)
  br label %136

136:                                              ; preds = %130, %114
  br label %137

137:                                              ; preds = %136, %109
  %138 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load i32, i32* @HDMI_IH_PHY_STAT0, align 4
  %141 = call i32 @hdmi_writeb(%struct.dw_hdmi* %138, i32 %139, i32 %140)
  %142 = load %struct.dw_hdmi*, %struct.dw_hdmi** %5, align 8
  %143 = load i32, i32* @HDMI_IH_PHY_STAT0_HPD, align 4
  %144 = load i32, i32* @HDMI_IH_PHY_STAT0_RX_SENSE, align 4
  %145 = or i32 %143, %144
  %146 = xor i32 %145, -1
  %147 = load i32, i32* @HDMI_IH_MUTE_PHY_STAT0, align 4
  %148 = call i32 @hdmi_writeb(%struct.dw_hdmi* %142, i32 %146, i32 %147)
  %149 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %149
}

declare dso_local i32 @hdmi_readb(%struct.dw_hdmi*, i32) #1

declare dso_local i32 @hdmi_modb(%struct.dw_hdmi*, i32, i32, i32) #1

declare dso_local i32 @dw_hdmi_setup_rx_sense(%struct.dw_hdmi*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cec_notifier_phys_addr_invalidate(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @drm_helper_hpd_irq_event(i64) #1

declare dso_local i32 @hdmi_writeb(%struct.dw_hdmi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
