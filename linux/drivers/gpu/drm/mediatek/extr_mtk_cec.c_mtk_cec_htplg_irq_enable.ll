; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_htplg_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mediatek/extr_mtk_cec.c_mtk_cec_htplg_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_cec = type { i32 }

@RX_EVENT = common dso_local global i32 0, align 4
@HDMI_PORD_INT_EN = common dso_local global i32 0, align 4
@HDMI_HTPLG_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_cec*)* @mtk_cec_htplg_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_cec_htplg_irq_enable(%struct.mtk_cec* %0) #0 {
  %2 = alloca %struct.mtk_cec*, align 8
  store %struct.mtk_cec* %0, %struct.mtk_cec** %2, align 8
  %3 = load %struct.mtk_cec*, %struct.mtk_cec** %2, align 8
  %4 = load i32, i32* @RX_EVENT, align 4
  %5 = load i32, i32* @HDMI_PORD_INT_EN, align 4
  %6 = load i32, i32* @HDMI_HTPLG_INT_EN, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mtk_cec_set_bits(%struct.mtk_cec* %3, i32 %4, i32 %7)
  ret void
}

declare dso_local i32 @mtk_cec_set_bits(%struct.mtk_cec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
