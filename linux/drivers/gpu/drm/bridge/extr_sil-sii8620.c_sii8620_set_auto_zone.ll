; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_set_auto_zone.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_set_auto_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i64 }

@CM_MHL1 = common dso_local global i64 0, align 8
@REG_TX_ZONE_CTL1 = common dso_local global i32 0, align 4
@REG_MHL_PLL_CTL0 = common dso_local global i32 0, align 4
@VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X = common dso_local global i32 0, align 4
@BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL = common dso_local global i32 0, align 4
@BIT_MHL_PLL_CTL0_ZONE_MASK_OE = common dso_local global i32 0, align 4
@VAL_TX_ZONE_CTL1_TX_ZONE_CTRL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*)* @sii8620_set_auto_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_set_auto_zone(%struct.sii8620* %0) #0 {
  %2 = alloca %struct.sii8620*, align 8
  store %struct.sii8620* %0, %struct.sii8620** %2, align 8
  %3 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %4 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @CM_MHL1, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %10 = load i32, i32* @REG_TX_ZONE_CTL1, align 4
  %11 = load i32, i32* @REG_MHL_PLL_CTL0, align 4
  %12 = load i32, i32* @VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X, align 4
  %13 = load i32, i32* @BIT_MHL_PLL_CTL0_CRYSTAL_CLK_SEL, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @BIT_MHL_PLL_CTL0_ZONE_MASK_OE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @sii8620_write_seq_static(%struct.sii8620* %9, i32 %10, i32 0, i32 %11, i32 %16)
  br label %27

18:                                               ; preds = %1
  %19 = load %struct.sii8620*, %struct.sii8620** %2, align 8
  %20 = load i32, i32* @REG_TX_ZONE_CTL1, align 4
  %21 = load i32, i32* @VAL_TX_ZONE_CTL1_TX_ZONE_CTRL_MODE, align 4
  %22 = load i32, i32* @REG_MHL_PLL_CTL0, align 4
  %23 = load i32, i32* @VAL_MHL_PLL_CTL0_HDMI_CLK_RATIO_1X, align 4
  %24 = load i32, i32* @BIT_MHL_PLL_CTL0_ZONE_MASK_OE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @sii8620_write_seq_static(%struct.sii8620* %19, i32 %20, i32 %21, i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %18, %8
  ret void
}

declare dso_local i32 @sii8620_write_seq_static(%struct.sii8620*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
